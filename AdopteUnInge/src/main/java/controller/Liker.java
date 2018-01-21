package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.*;
import model.dao.Database;
import java.util.*;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class Liker extends ActionSupport implements SessionAware {
  private Utilisateur membre;
  private SessionMap<String, Object> sessionmap;

  public Utilisateur getMembre() {
    return membre;
  }

  public void setMembre(Utilisateur membre) {
    this.membre = membre;
  }

  @Override
  public void setSession(Map<String, Object> session) {
    this.sessionmap=(SessionMap)session;
  }

  public String execute() throws Exception {
    this.membre = Database.fetchUserDetailsByID(membre.getId());
    Utilisateur user = (Utilisateur)this.sessionmap.get("membre");
    user.getLike().addPersonnesLike(this.membre);
    this.membre.getLike().addPersonnesQuiMontLike(user);
    Database.updateUserDetails(user);
    Database.updateUserDetails(membre);
    return SUCCESS;
  }
}
