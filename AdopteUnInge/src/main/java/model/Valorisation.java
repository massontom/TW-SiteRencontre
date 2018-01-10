package model;

public enum Valorisation {
    GOLD, SILVER, BRONZE;

    @Override
    public String toString() {
      switch(this) {
        case GOLD: return "Or";
        case SILVER: return "Argent";
        case BRONZE: return "Bronze";
        default: throw new IllegalArgumentException();
      }
    }
};
