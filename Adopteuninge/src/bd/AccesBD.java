package bd;

import java.io.*;
import java.util.HashMap;


public class AccesBD {
  private static HashMap<String,String> logins = new HashMap<String,String>();;

  public static void addLogin(String login, String mdp) {
    AccesBD.logins.put(login, mdp);
  }

  public static boolean testLogin(String login) {
    return AccesBD.logins.containsKey(login);
  }

  public static boolean testLogin(String login, String mdp) {
    if(!AccesBD.logins.containsKey(login))
      return false;
    else
      return ((String)AccesBD.logins.get(login)).equals(mdp);
  }
}
