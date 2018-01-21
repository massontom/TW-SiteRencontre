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

  public String getVille() {
    return this.ville;
  }

  public String getAge() {
    return this.age;
  }

  public String setUserRecherche() throws SQLException, Exception {
    System.out.println("setUserRecherche");
    setUtilisateurs();
    this.userRecherche = new ArrayList<>();
    System.out.println("nb total d'utilisateurs :"+allUsers.size());
    for(Utilisateur user : allUsers) {
      if (!(this.age.equals(""))) {
        ageInt=Integer.parseInt(this.age);
          System.out.println("Age :"+ageInt + user.getAge());
        if ((user.getAge()<=ageInt+5) || (user.getAge()>=ageInt-5)) {
          if (!(this.ville.equals(""))) {
            System.out.println("ville");
            if (this.ville.toLowerCase().equals(user.getVille().toLowerCase())) {
              userRecherche.add(user);
            }
          } else if (!(this.departement.equals(""))) {
            System.out.println("dpt");
            if (this.departement.equals(Integer.toString(user.getDepartement()))) {
              userRecherche.add(user);
            }
          } else {
            System.out.println("juste age");
            userRecherche.add(user);
          }
        }

      } else {
          System.out.println("2");
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
