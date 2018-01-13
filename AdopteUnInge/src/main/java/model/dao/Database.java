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
			return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/adopteuninge", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static int validate(String usermail, String userpass) {
		int status = 0;
		try {
			PreparedStatement ps = getConnection().prepareStatement("select * from user where mail=? and password=?");
			ps.setString(1, usermail);
			ps.setString(2, getGeneratedPassword(userpass));
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
            status = rs.getInt("id");
			}
			getConnection().close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	// method for save user data in database
	public static boolean registerUser(Utilisateur user) throws Exception {
		try {
			String sql = "INSERT INTO user (name, nickname, mail, password, age, admin, rank, city, zip, sex, orientation) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, user.getNom());
			ps.setString(2, user.getPrenom());
			ps.setString(3, user.getMail());
			ps.setString(4, getGeneratedPassword(user.getPassword()));
			ps.setInt(5, user.getAge());
			ps.setInt(6, user.isAdmin() ? 1 : 0);
			ps.setInt(7, user.getValorisationInt());
			ps.setString(8, user.getVille());
			ps.setInt(9, user.getDepartement());
			ps.setInt(10, user.getSexe());
			ps.setInt(11, user.getOrientation());
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


	public static ResultSet reportUser(int id, int numberOfReports) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "UPDATE user SET report = ? WHERE id = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, numberOfReports);
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


	public static Utilisateur fetchUserDetailsByID(int id) throws SQLException, Exception {
		ResultSet rs = null;
		Utilisateur user = null;
		try {
			String sql = "SELECT * FROM user WHERE id=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				user = new Utilisateur(id, rs.getString("name"), rs.getString("nickname"), rs.getString("password"), rs.getString("mail"), rs.getInt("age"), rs.getInt("sex"), rs.getBoolean("admin"), rs.getString("city"),
				rs.getInt("zip"), rs.getInt("report"), rs.getInt("orientation"), rs.getInt("rank"), rs.getInt("like"));
        }
			return user;
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
	public static int updateUserDetails(Utilisateur user) throws SQLException, Exception {
		int i = 0;
		try {
			String sql = "UPDATE user SET name=?,nickname=?,mail=?,age=?,city=?,zip=?,sex=?,orientation=?,password=? WHERE id=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, user.getNom());
			ps.setString(2, user.getPrenom());
			ps.setString(3, user.getMail());
			ps.setInt(4, user.getAge());
			ps.setString(5, user.getVille());
			ps.setInt(6, user.getDepartement());
			ps.setInt(7, user.getSexe());
			ps.setInt(8, user.getOrientation());
			ps.setString(9, getGeneratedPassword(user.getPassword()));
			ps.setInt(10, user.getId());
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
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
