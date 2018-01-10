package model;

import java.util.List;
import java.util.ArrayList;
public class Like {

  private int nbLikeRestant;
  private List<Utilisateur> listePersonnesLike;
  private List<Utilisateur> listePersonnesQuiMontLike;

  public Like(){
    this.nbLikeRestant = 10;
    this.listePersonnesLike = new ArrayList<Utilisateur>();
    this.listePersonnesQuiMontLike = new ArrayList<Utilisateur>();
  }

  public Like(int nbLikeRestant, List<Utilisateur> listePersonnesLike, List<Utilisateur> listePersonnesQuiMontLike) {
    this.nbLikeRestant = nbLikeRestant;
    this.listePersonnesLike = listePersonnesLike;
    this.listePersonnesQuiMontLike = listePersonnesQuiMontLike;
  }

  public Like(int nbLikeRestant) {
    this.nbLikeRestant = nbLikeRestant;
    this.listePersonnesLike = new ArrayList<Utilisateur>();
    this.listePersonnesQuiMontLike = new ArrayList<Utilisateur>();
  }

  public int getNbLikeRestant() {
    return nbLikeRestant;
  }

  public void setNbLikeRestant(int nb) {
    this.nbLikeRestant = nb;
  }

  public void addPersonnesLike(Utilisateur utilisateur) {
    listePersonnesLike.add(utilisateur);
    nbLikeRestant -= 1;
  }

  public void addPersonnesQuiMontLike(Utilisateur utilisateur) {
    listePersonnesQuiMontLike.add(utilisateur);
  }

  public void setListePersonnesLike(List<Utilisateur> list){
    this.listePersonnesLike = list;
  }

  public void setlistePersonnesQuiMontLike(List<Utilisateur> list){
    this.listePersonnesQuiMontLike = list;
  }

  public List<Utilisateur> getListePersonnesLike(){
    return this.listePersonnesLike;
  }

  public List<Utilisateur> getlistePersonnesQuiMontLike(){
    return this.listePersonnesQuiMontLike;
  }

  @Override
  public String toString(){
    StringBuilder sb = new StringBuilder();
    sb.append("Nombre de likes restants: " + getNbLikeRestant());
    sb.append(System.getProperty("line.separator"));
    sb.append("Liste des personnes likées: " + getListePersonnesLike());
    sb.append(System.getProperty("line.separator"));
    sb.append("Liste des personnes qui m'ont liké: " + getlistePersonnesQuiMontLike());
    return sb.toString();
  }
}
