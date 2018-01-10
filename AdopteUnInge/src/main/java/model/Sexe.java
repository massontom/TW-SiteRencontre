package model;

public enum Sexe {
  HOMME, FEMME;

  @Override
  public String toString() {
    switch (this) {
    case HOMME:
      return "HOMME";
    case FEMME:
      return "FEMME";
    default:
      throw new IllegalArgumentException();
    }
  };
}
