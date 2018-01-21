package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.dao.Database;
import model.Utilisateur;
import java.util.*;
import java.sql.SQLException;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Recherche extends ActionSupport implements SessionAware {

  private List<Utilisateur> allUsers;
  private List<Utilisateur> userRecherche;
  private int departement =0 ;
  private String ville;
  private int age=0;
  private SessionMap<String, Object> session;

  public String input() throws Exception {
    return INPUT;
  }

  public void setUtilisateurs() throws SQLException, Exception {
    this.allUsers = Database.getAllUsers();
  }

  public void setDepartement(int dpt) {
    this.departement = dpt;
  }

  public void setVille(String ville) {
    this.ville = ville;
  }

  public void setAge(int agep) {
    this.age = age;
  }

  public List<Utilisateur> getUtilisateurs(){
    return this.allUsers;
  }

  public int getDepartement() {
    return this.departement;
  }

  public String setVille() {
    return this.ville;
  }

  public int getAge() {
    return this.age;
  }

  public void setUserRecherche() throws SQLException, Exception {
    setUtilisateurs();
    this.userRecherche = new ArrayList<>();
    for(Utilisateur user : allUsers){
      if (user.getVille().equals(this.ville) && !(this.ville.equals(null))){
        userRecherche.add(user);
      } else if (user.getDepartement()==this.departement && !(this.departement==0)) {
        userRecherche.add(user);
      } else {
        userRecherche.add(user);
      }
    }

    for (Utilisateur user : userRecherche) {
      if (this.age!=0){
        if (user.getAge() >= this.age+5 || user.getAge() <= this.age-5) {
          this.userRecherche.remove(user);
        }
      }
    }
  }

  public List<Utilisateur> getUserRecherche() {
    return this.userRecherche;
  }

  @Override
  public void setSession(Map<String, Object> session) {
    this.session=(SessionMap)session;
  }

}
