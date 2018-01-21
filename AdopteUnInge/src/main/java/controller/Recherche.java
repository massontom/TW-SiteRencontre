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
  private String departement;
  private String ville;
  private String age;
  private SessionMap<String, Object> session;

  public String input() throws Exception {
    return INPUT;
  }

  public void setUtilisateurs() throws SQLException, Exception {
    System.out.println("setUtilisateurs");
    this.allUsers = Database.getAllUsers();
  }

  public void setDepartement(String dpt) {
    this.departement = dpt;
    System.out.println("dpt: "+this.departement);
  }

  public void setVille(String ville) {
    this.ville = ville;
    System.out.println("ville: "+this.ville);
  }

  public void setAge(String age) {
    this.age = age;
    System.out.println("age: "+this.age);
  }

  public List<Utilisateur> getUtilisateurs(){
    return this.allUsers;
  }

  public String getDepartement() {
    return this.departement;
  }

  public String setVille() {
    return this.ville;
  }

  public String getAge() {
    return this.age;
  }

  public String setUserRecherche() throws SQLException, Exception {
    System.out.println("setUserRecherche");
    setUtilisateurs();
    this.userRecherche = new ArrayList<>();
    for(Utilisateur user : allUsers){
      if (!(this.ville.equals(null))){
        userRecherche.add(user);
      } else if (!(this.departement.equals(null))) {
        userRecherche.add(user);
      } else {
        userRecherche.add(user);
      }
    }

    return SUCCESS;
  }

  public List<Utilisateur> getUserRecherche() {
    return this.userRecherche;
  }

  @Override
  public void setSession(Map<String, Object> session) {
    this.session=(SessionMap)session;
  }

}
