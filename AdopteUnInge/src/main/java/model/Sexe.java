package model;

public enum Sexe {
  HOMME, FEMME;

  @Override
  public String toString() {
    switch (this) {
    case HOMME:
      return "Homme";
    case FEMME:
      return "Femme";
    default:
      throw new IllegalArgumentException();
    }
  };
}
