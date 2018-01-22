package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.dao.Database;
import model.Utilisateur;
import java.util.*;
import java.sql.SQLException;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.ServletActionContext;

public class Recherche extends ActionSupport implements SessionAware {

  private List<Utilisateur> allUsers;
  private List<Utilisateur> userRecherche;
  private String departement, ville, age;
  private int ageInt;
  private SessionMap<String, Object> sessionmap;

  public String input() throws Exception {
    return INPUT;
  }

  public void setUtilisateurs() throws SQLException, Exception {
    this.allUsers = Database.getAllUsers();
  }

  public void setDepartement(String dpt) {
    this.departement = dpt;
  }

  public void setVille(String ville) {
    this.ville = ville;
  }

  public void setAge(String age) {
    this.age = age;
  }

  public List<Utilisateur> getUtilisateurs(){
    return this.allUsers;
  }

  public String getDepartement() {
    return this.departement;
  }

  public String getVille() {
    return this.ville;
  }

  public String getAge() {
    return this.age;
  }

  public String setUserRecherche() throws SQLException, Exception {
    Utilisateur myuser = (Utilisateur)this.sessionmap.get("user");
    setUtilisateurs();
    this.userRecherche = new ArrayList<>();
    for(Utilisateur user : allUsers) {
      if (user.getId()!=myuser.getId()){
        if ((user.getSexe()==myuser.getOrientation())&& (myuser.getSexe()==user.getOrientation())){
          if (!(this.age.equals(""))) {
            ageInt=Integer.parseInt(this.age);
            if ((user.getAge()<=ageInt+5) && (user.getAge()>=ageInt-5)) {
              if (!(this.ville.equals(""))) {
                if (this.ville.toLowerCase().equals(user.getVille().toLowerCase())) {
                  userRecherche.add(user);
                }
              } else if (!(this.departement.equals(""))) {
                if (this.departement.equals(Integer.toString(user.getDepartement()))) {
                  userRecherche.add(user);
                }
              } else {
                userRecherche.add(user);
              }
            }

          } else {
            if (!(this.ville.equals(""))) {
              if (this.ville.toLowerCase().equals(user.getVille().toLowerCase())) {
                userRecherche.add(user);
              }
            } else if (!(this.departement.equals(""))) {
              if (this.departement.equals(Integer.toString(user.getDepartement()))) {
                userRecherche.add(user);
              }
            }
          }
        }
      }
    }

    return SUCCESS;
  }

  public List<Utilisateur> getUserRecherche() {
    return this.userRecherche;
  }

  @Override
  public void setSession(Map<String, Object> session) {
    this.sessionmap=(SessionMap)session;
  }

}
