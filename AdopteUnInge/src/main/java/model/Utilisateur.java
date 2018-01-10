package model;

//Liste import
import java.util.*;
import java.lang.StringBuilder;

public class Utilisateur {
  private int id;
  private String nom;
  private String prenom;
  private String password;
  private String mail;
  private int age;
  private Sexe sexe;
  private String ville;
  private int departement;
  private Sexe orientation;
  private Valorisation valorisation = Valorisation.BRONZE;
  private Like like;
  private int signalement = 0;
  private String photoURL;
  private Boolean admin = false;

  public Utilisateur() {
    this.like = new Like();
  }

  public Utilisateur(String nom, String prenom, String password, String mail, int age, Sexe sexe, String ville, int departement, Sexe orientation) {
    this.nom = nom;
    this.prenom = prenom;
    this.age = age;
    this.sexe = sexe;
    this.password = password;
    this.mail = mail;
    this.ville = ville;
    this.orientation = orientation;
    this.departement = departement;
    this.like = new Like();
  }

  public Utilisateur(int id, String nom, String prenom, String password, String mail, int age, Sexe sexe,
      Boolean admin, String ville, int departement, int signalement, Sexe orientation, Valorisation valorisation, Like like) {
    this.nom = nom;
    this.prenom = prenom;
    this.age = age;
    this.id = id;
    this.sexe = sexe;
    this.password = password;
    this.mail = mail;
    this.signalement = signalement;
    this.ville = ville;
    this.orientation = orientation;
    this.departement = departement;
    this.valorisation = valorisation;
    this.like = like;
  }

  public Utilisateur(int id, String nom, String prenom, String password, String mail, int age, int sexe,
      Boolean admin, String ville, int departement, int signalement, int orientation, int valorisation, int like) {
    this.nom = nom;
    this.prenom = prenom;
    this.age = age;
    setSexe(sexe);
    this.id = id;
    this.password = password;
    this.mail = mail;
    this.signalement = signalement;
    this.ville = ville;
    this.departement = departement;
    setOrientation(orientation);
    setValorisation(valorisation);
    setLike(like);
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getPassword() {
    return this.password;
  }

  public void setMail(String mail) {
    this.mail = mail;
  }

  public String getMail() {
    return this.mail.trim();
  }

  public int getId() {
    return this.id;
  }

  public void setNom(String nom) {
    this.nom = nom.trim();
  }

  public String getNom() {
    return this.nom;
  }

  public void setPrenom(String prenom) {
    this.prenom = prenom.trim();
  }

  public String getPrenom() {
    return this.prenom;
  }

  public void setAge(int age) {
    this.age = age;
  }

  public int getAge() {
    return this.age;
  }

  public void setVille(String ville) {
    this.ville = ville.trim();
  }

  public String getVille() {
    return this.ville;
  }

  public void setDepartement(int departement) {
    this.departement = departement;
  }

  public int getDepartement() {
    return this.departement;
  }

  public void setSexe(int sexe) {
    if (sexe == 0) {
      this.sexe = Sexe.HOMME;
    } else {
      this.sexe = Sexe.FEMME;
    }
  }

  public void setSexe(String sexe) {
    if (sexe.trim().toLowerCase() == "homme") {
      this.sexe = Sexe.HOMME;
    } else {
      this.sexe = Sexe.FEMME;
    }
  }

  public Sexe getSexe() {
    return this.sexe;
  }

  public int getSexeInt() {
    return this.sexe.ordinal();
  }

  public void setOrientation(Sexe orientation) {
    this.orientation = orientation;
  }

  public void setOrientation(int sexe) {
    if (sexe == 0) {
      this.orientation = Sexe.HOMME;
    } else {
      this.orientation = Sexe.FEMME;
    }
  }

  public void setOrientation(String sexe) {
    if (sexe.trim().toLowerCase() == "homme") {
      this.orientation = Sexe.HOMME;
    } else {
      this.orientation = Sexe.FEMME;
    }
  }

  public Sexe getOrientation() {
    return this.orientation;
  }

  public int getOrientationInt() {
    return this.orientation.ordinal();
  }

  public void setPhotoURL(String photoURL) {
    this.photoURL = photoURL.trim();
  }

  public String getPhotoURL() {
    return this.photoURL;
  }

  public void setAdmin() {
    this.admin = true;
  }

  public Boolean isAdmin() {
    return this.admin;
  }

  public void setValorisation(Valorisation valorisation) {
    this.valorisation = valorisation;
  }

  public void setValorisation(int valorisation) {
    switch(valorisation){
      case 0:
        this.valorisation = Valorisation.BRONZE;
      break;

      case 1:
        this.valorisation = Valorisation.SILVER;
      break;

      case 2:
        this.valorisation = Valorisation.GOLD;
      break;
    }

  }

  public Valorisation getValorisation() {
    return this.valorisation;
  }

  public int getValorisationInt() {
    return this.valorisation.ordinal();
  }

  public void setLike(int likes){
    this.like = new Like(likes);
  }

  public Like getLike() {
    return this.like;
  }

  public void compteurSignalement() {
    this.signalement++;
  }

  public int getSignalement() {
    return this.signalement;
  }

  @Override
  public String toString(){
    StringBuilder sb = new StringBuilder();
    sb.append("====== Utilisateur ======");
    sb.append(System.getProperty("line.separator"));
    sb.append("Prénom: " + getPrenom());
    sb.append(System.getProperty("line.separator"));
    sb.append("Nom: " + getNom());
    sb.append(System.getProperty("line.separator"));
    sb.append("Password: " + getPassword());
    sb.append(System.getProperty("line.separator"));
    sb.append("Mail: " + getMail());
    sb.append(System.getProperty("line.separator"));
    sb.append("Sexe: " + getSexe());
    sb.append(System.getProperty("line.separator"));
    sb.append("Age: " + getAge());
    sb.append(System.getProperty("line.separator"));
    sb.append("Valorisation: " + getValorisation().toString());
    sb.append(System.getProperty("line.separator"));
    sb.append("Département: " + getDepartement());
    sb.append(System.getProperty("line.separator"));
    sb.append("Ville: " + getVille());
    sb.append(System.getProperty("line.separator"));
    sb.append("Orientation: " + getOrientation());
    sb.append(System.getProperty("line.separator"));
    sb.append("Admin: " + isAdmin().toString());
    sb.append(System.getProperty("line.separator"));
    sb.append("Like: " + getLike());
    return sb.toString();
  }
}
