
//Liste import
import java.util.Date;
import java.awt.Image;
import java.lang.Integer;

public class Utilisateur {
  private int id;
  private String nom;
  private String prenom;
  private Date dateDeNaissance;
  private Boolean admin;
  private Valorisation valorisation;
  private String ville;
  private int departement;
  private Like like;
  private int signalement;
  private Sexe sexe;
  private Sexe orientation;
  private String photoURL;

  public Utilisateur(String nom, String prenom, Date dateDeNaissance, Sexe sexe, Boolean admin, int id) {
    this.nom = nom;
    this.prenom = prenom;
    this.dateDeNaissance = dateDeNaissance;
    this.sexe = sexe;
    this.id = id;
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

  public void setSexe(Sexe sexe) {
    this.sexe = sexe;
  }

  public Sexe getSexe() {
    return this.sexe;
  }

  public void setOrientation(Sexe orientation) {
    this.orientation = orientation;
  }

  public Sexe getOrientation() {
    return this.orientation;
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

  public Valorisation getValorisation() {
    return this.valorisation;
  }

}
