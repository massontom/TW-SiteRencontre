package controller;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.ActionSupport;
import java.util.concurrent.TimeUnit;
import model.Utilisateur;
import java.util.Date;
import java.util.ArrayList;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import model.dao.Database;
import model.Message;
import model.Messages;

public class Chat extends ActionSupport implements SessionAware {
  private ArrayList<Message> messages;
  private Utilisateur utilisateur;
  private SessionMap<String, Object> sessionmap;
  private String contenu;


  public void validate() {
  		if (contenu != null && contenu.length() == 0) {
  			addFieldError( "contenu", "Veuillez saisir un message." );
  		}
  	}

  public String voirMessages() throws Exception {
		this.utilisateur = Database.fetchUserDetailsByID(utilisateur.getId());
    this.utilisateur.chargerDonnees();
		Utilisateur connecte = (Utilisateur)sessionmap.get("user");
    connecte.chargerDonnees();
		this.messages = connecte.getChatPrive().getMessagesByUserId(utilisateur.getId());
		return SUCCESS;
	}

  public String ajouterMessages() throws Exception {
		Utilisateur connecte = (Utilisateur)sessionmap.get("user");
		this.utilisateur = Database.fetchUserDetailsByID(utilisateur.getId());
		Message msg = new Message(connecte, this.utilisateur, contenu);
		Database.updateMessages(msg);
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

    public void setUtilisateur(Utilisateur u){
      this.utilisateur=u;
    }

    public ArrayList<Message> getMessages(){
      return this.messages;
    }

    public void setMessages(ArrayList<Message> messages){
      this.messages=messages;
    }

    public String getContenu(){
      return this.contenu;
    }

    public void setContenu(String msg){
      this.contenu=msg;
    }
}
