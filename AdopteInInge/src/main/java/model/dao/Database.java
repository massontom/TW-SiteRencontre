package model.dao;

import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Utilisateur;

public class Database {

	// method for create connection
	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://127.0.0.1:8889/adopteuninge", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static boolean validate(String usermail, String userpass) {
		boolean status = false;
		try {
			PreparedStatement ps = getConnection().prepareStatement("select * from user where mail=? and password=?");
			ps.setString(1, usermail);
			ps.setString(2, getGeneratedPassword(userpass));
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			getConnection().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	// method for save user data in database
	public static boolean registerUser(Utilisateur user) throws Exception {
		try {

			String sql = "INSERT INTO user VALUES (name,nickname,mail,password,birth,admin,rank,city,zip,like,report,sex,orientation)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, user.getNom());
			ps.setString(2, user.getPrenom());
			ps.setString(2, user.getEmail());
			ps.setString(3, getGeneratedPassword(user.getMDP()));
			ps.setDate(4, (Date) user.getDateDeNaissance());
			ps.setInt(5, user.isAdmin() ? 1 : 0);
			ps.setInt(6, user.getValorisationInt());
			ps.setString(7, user.getVille());
			ps.setInt(8, user.getDepartement());
			ps.setInt(9, 10);
			ps.setInt(10, 0);
			ps.setInt(11, user.getSexeInt());
			ps.setInt(12, user.getOrientationInt());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for fetch saved user data
	public ResultSet report() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM user";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for fetch old data to be update
	public ResultSet fetchUserDetails(int id) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT name, nickname, birth, orientation FROM user WHERE id=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for update new data in database
	public int updateUserDetails(Utilisateur user) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "UPDATE user SET name=?,nickname=?,password=?,birth=?,admin=?,rank=?,city=?,zip=?,like=?,report=?,sex=?,orientation=? WHERE id=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, user.getNom());
			ps.setString(2, user.getPrenom());
			ps.setString(3, user.getMDP());
			ps.setDate(4, (Date) user.getDateDeNaissance());
			ps.setInt(5, user.isAdmin() ? 1 : 0);
			ps.setInt(6, user.getValorisationInt());
			ps.setString(7, user.getVille());
			ps.setInt(8, user.getDepartement());
			ps.setInt(9, user.getLike().getNbLikeRestant());
			ps.setInt(10, user.getSignalement());
			ps.setInt(11, user.getSexeInt());
			ps.setInt(12, user.getOrientationInt());
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	// method for delete the record
	public int deleteUserDetails(int id) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "DELETE FROM user WHERE id=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	private static String getGeneratedPassword(String password) {
		try {
			// Create MessageDigest instance for MD5
			MessageDigest md = MessageDigest.getInstance("MD5");
			//Add password bytes to digest
			md.update(password.getBytes());
			//Get the hash's bytes
			byte[] bytes = md.digest();
			//This bytes[] has bytes in decimal format;
			//Convert it to hexadecimal format
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}
			return sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
}
