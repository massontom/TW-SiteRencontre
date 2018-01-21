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

  public String voirMessages() throws Exception {
		Database db = Database.getInstance();
		this.utilisateur = db.fetchUserDetailsByID(utilisateur.getId());
		Utilisateur connecte = (Utilisateur)sessionmap.get("user");
		this.messages = connecte.getChatPrive().getMessagesByUserId(utilisateur.getId());
		db.deconnexion();
		return SUCCESS;
	}

  public String ajouterMessages() throws Exception {
		Database db = Database.getInstance();
		Utilisateur connecte = (Utilisateur)sessionmap.get("user");
		this.utilisateur = db.fetchUserDetailsByID(utilisateur.getId());
		Message msg = new Message(connecte, this.utilisateur, contenu);
		db.updateMessages(msg, db.getChat(utilisateur,connecte));
		return SUCCESS;
	}

  public String execute() throws Exception {
    this.utilisateur = (Utilisateur)sessionmap.get("user");
		this.utilisateur.chargerDonnees();
    System.out.println("============================yo==================================");
    System.out.println(utilisateur.toString());
    return SUCCESS;
  }


  @Override
  public void setSession(Map<String, Object> session) {
  		this.sessionmap=(SessionMap)session;
  	}

    public Utilisateur getUtilisateur(){
      return this.utilisateur;
    }
}
