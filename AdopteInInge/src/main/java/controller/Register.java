package controller;

import java.util.Date;

import javax.xml.ws.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.InterceptorRef;
import model.Like;
import model.Sexe;
import model.Valorisation;

@ParentPackage(value = "controller")
@InterceptorRef("jsonValidationWorkflowStack")
@Validations(requiredStrings = {
        @RequiredStringValidator(fieldName = "nom", type = ValidatorType.FIELD, message = "Le nom est obligatoire"),
        @RequiredStringValidator(fieldName = "prenom", type = ValidatorType.FIELD, message = "Le prénom est obligatoire") })
public class Register extends ActionSupport {
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

    public String execute() throws Exception {
        return SUCCESS;
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
    
      public Valorisation getValorisation() {
        return this.valorisation;
      }
    
      public int getValorisationInt() {
        return this.valorisation.ordinal();
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