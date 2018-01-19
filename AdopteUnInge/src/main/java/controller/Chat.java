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
  private Utilisateur utilisateur;
  private SessionMap<String, Object> sessionmap;
  private String contenu;


  public void validate() {
  		if (contenu != null && contenu.length() == 0) {
  			addFieldError( "contenu", "Veuillez saisir un message." );
  		}
  	}
/*
  public String voirMessages() throws Exception {
		Database db = Database.getInstance();
		this.utilisateur = db.fetchUserDetailsByID(utilisateur.getId());
		Utilisateur connecte = (Utilisateur)sessionmap.get("utilisateur");
		this.messages = connecte.getChat().getConversationParIdDuParticipant(utilisateur.getId());
		db.deconnexion();
		return SUCCESS;
	}

  public String ajouterMessages() throws Exception {
		Database db = Database.getInstance();
		Utilisateur connecte = (Utilisateur)sessionmap.get("utilisateur");
		this.utilisateur = db.fetchUserDetailsByID(utilisateur.getId());
		Message msg = new Message(connecte, this.utilisateur, contenu);
		db.uptdateMessages(msg);
		return SUCCESS;
	}

  */


  @Override
  public void setSession(Map map) {
      sessionmap = (SessionMap) map;
      utilisateur = (Utilisateur)this.sessionmap.get("user");
      System.out.println("==============================================================");
      utilisateur.toString();
  }
}
