package model;

import java.util.List;
import java.util.ArrayList;
public class Like {

  private int nbLikeRestant;
  private List<Utilisateur> listePersonnesLike;
  private List<Utilisateur> listePersonnesQuiMontLike;

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
}
