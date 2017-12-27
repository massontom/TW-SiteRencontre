package model;

public enum Sexe {
  HOMME, FEMME;

  @Override
  public String toString() {
    switch (this) {
    case HOMME:
      return "homme";
    case FEMME:
      return "femme";
    default:
      throw new IllegalArgumentException();
    }
  };
}
