package model;

import java.util.Date;

public class Evenement {

  private String nomEvenement;
  private Utilisateur auteur;
  private String description;
  private Date dateEvenement;

  public Evenement(String nomEvenement, Utilisateur auteur, String description, Date dateEvenement) {
    this.nomEvenement = nomEvenement;
    this.auteur = auteur;
    this.description = description;
    this.dateEvenement = dateEvenement;
  }

  public void setDateEvenement(Date dateEvenement) {
    this.dateEvenement = dateEvenement;
  }

  public Date getDateEvenement() {
    return this.dateEvenement;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getDescription() {
    return this.description;
  }

  public Utilisateur getAuteur() {
    return this.auteur;
  }

  public void setNomEvenement(String nomEvenement) {
    this.nomEvenement = nomEvenement;
  }

  public String getNomEvenement() {
    return this.nomEvenement;
  }
}
