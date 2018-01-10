package model;

//Liste import
import java.util.Date;

public class Utilisateur {
  private int id;
  private String nom;
  private String prenom;
  private Date dateDeNaissance;
  private Boolean admin = false;
  private Valorisation valorisation = Valorisation.BRONZE;
  private String ville;
  private int departement;
  private Like like;
  private int signalement = 0;
  private Sexe sexe;
  private Sexe orientation;
  private String photoURL;
  private String mdp;
  private String email;

  public Utilisateur() {
  }

  public Utilisateur(int id, String nom, String prenom, String mdp, String email, Date dateDeNaissance, Sexe sexe,
      Boolean admin, String ville, int departement, int signalement, Sexe orientation, Valorisation valorisation, Like like) {
    this.nom = nom;
    this.prenom = prenom;
    this.dateDeNaissance = dateDeNaissance;
    this.id = id;
    this.sexe = sexe;
    this.mdp = mdp;
    this.email = email;
    this.signalement = signalement;
    this.ville = ville;
    this.orientation = orientation;
    this.departement = departement;
    this.valorisation = valorisation;
    this.like = like;
  }

  public Utilisateur(int id, String nom, String prenom, String mdp, String email, Date dateDeNaissance, int sexe,
      Boolean admin, String ville, int departement, int signalement, int orientation, int valorisation, int like) {
    this.nom = nom;
    this.prenom = prenom;
    this.dateDeNaissance = dateDeNaissance;
    setSexe(sexe);
    this.id = id;
    this.mdp = mdp;
    this.email = email;
    this.signalement = signalement;
    this.ville = ville;
    this.departement = departement;
    setOrientation(orientation);
    setValorisation(valorisation);
    setLike(like);
  }

  public void setMDP(String nouveauMDP) {
    this.mdp = nouveauMDP;
  }

  public String getMDP() {
    return this.mdp;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getEmail() {
    return this.email;
  }

  public int getId() {
    return this.id;
  }

  public void setNom(String nom) {
    this.nom = nom;
  }

  public String getNom() {
    return this.nom;
  }

  public void setPrenom(String prenom) {
    this.prenom = prenom;
  }

  public String getPrenom() {
    return this.prenom;
  }

  public void setDateDeNaissance(Date dateDeNaissance) {
    this.dateDeNaissance = dateDeNaissance;
  }

  public Date getDateDeNaissance() {
    return this.dateDeNaissance;
  }

  public void setVille(String ville) {
    this.ville = ville;
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
      this.sexe = Sexe.HOMME;
    } else {
      this.sexe = Sexe.FEMME;
    }
  }

  public Sexe getOrientation() {
    return this.orientation;
  }

  public int getOrientationInt() {
    return this.orientation.ordinal();
  }

  public void setPhotoURL(String photoURL) {
    this.photoURL = photoURL;
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

}
