package controller;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.ActionSupport;
import java.util.concurrent.TimeUnit;
import model.Utilisateur;
import java.util.Date;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import model.dao.Database;
import model.Message;
import model.Messages;

public class Chat extends ActionSupport implements SessionAware {
  private Messages messages;
  private Utilisateur auteur;
  private Utilisateur destinataire;
  private SessionMap<String, Object> sessionmap;
  private Message message;

public Message getMessage() {
  return message;
}
  public void setMessage(Message msg) {
    message=msg;
  }

  public Messages getMessages() {
    return messages;
  }

  public void setMessages(Messages mess) {
    messages = mess;
  }

  public Utilisateur getAuteur () {
    return auteur;
  }

  public void setAuteur (Utilisateur aut) {
    auteur=aut;
  }

  public Utilisateur getDestinataire () {
    return destinataire;
  }

  public void setDestinataire (Utilisateur dest) {
    destinataire =dest;
  }

  public String execute() throws Exception {
    Database.updateMessages(message, messages);
    Database.getChat(auteur, destinataire);
    return SUCCESS;
  }

  public String input() throws Exception {
    return INPUT;
  }

  @Override
  public void setSession(Map map) {
      sessionmap = (SessionMap) map;
      auteur = (Utilisateur)this.sessionmap.get("user");
      System.out.println("==============================================================");
      auteur.toString();
  }
}
