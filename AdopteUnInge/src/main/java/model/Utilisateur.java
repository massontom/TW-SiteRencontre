package model;

//Liste import
import java.util.*;
import java.lang.StringBuilder;
import model.dao.Database;

public class Utilisateur {
  private int id;
  private String nom;
  private String prenom;
  private String password;
  private String mail;
  private int age;
  private int sexe; //0 homme 1 femme
  private String ville;
  private int departement;
  private int orientation;
  private Valorisation valorisation = Valorisation.BRONZE;
  private Like like;
  private int signalement = 0;
  private String photoURL;
  private String description;
  private Boolean admin = false;
  private ChatPrive chatPrive;

  public Utilisateur() {
    this.like = new Like();
  }

  public Utilisateur(int id, String nom, String prenom, String password, String mail, int age, int sexe, String ville, int departement, int orientation) {
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
    this.id = id;
  }

  public Utilisateur(int id, String nom, String prenom, String password, String mail, int age, int sexe,
      Boolean admin, String ville, int departement, int signalement, int orientation, Valorisation valorisation, Like like, String description) {
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
    this.description = description;
    this.like = like;
  }

  public Utilisateur(int id, String nom, String prenom, String password, String mail, int age, int sexe,
      Boolean admin, String ville, int departement, int signalement, int orientation, int valorisation, int like, String description) {
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
    setDescription(description);
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

  public void setId(int id) {
    this.id = id;
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
      this.sexe = sexe;
  }

  public int getSexe() {
    return this.sexe;
  }

  public void setOrientation(int orientation) {
    this.orientation = orientation;
  }

  public int getOrientation() {
    return this.orientation;
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

  public void setDescription(String description){
    this.description = description;
  }

  public String getDescription() {
    return this.description;
  }

  public void compteurSignalement() {
    this.signalement++;
  }

  public int getSignalement() {
    return this.signalement;
  }

  public ChatPrive getChatPrive() {
		return this.chatPrive;
	}

	public void setChatPrive(ChatPrive chat) {
		this.chatPrive = chat;
	}

  public boolean equals(Utilisateur utilisateur){
    return (this.id==utilisateur.getId()); //réussir à le faire avec id
  }

  public void chargerDonnees() {
		try {
			setChatPrive(Database.getChatPriveById(this.getId()));
		}
		catch (Exception e) {}
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
