package controller;

import java.util.Map;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import model.dao.Database;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

public class Authentication extends ActionSupport implements SessionAware {
    private String usermail, userpass;
    private int id;
    SessionMap<String, Object> sessionmap;

    public String getUsermail() {
        return this.usermail;
    }

    @RequiredStringValidator(message = "Veuillez entrer votre adresse mail.")
    @EmailValidator(message = "Veuillez utiliser une adresse mail valide.")
    public void setUsermail(String usermail) {
        this.usermail = usermail;
    }

    public String getUserpass() {
        return this.userpass;
    }

    @RequiredStringValidator(message = "Veuillez entrer votre mot de passe.")
    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }

    /**
    * action login permet de s'authentifier
    */
    public String login() throws Exception {
      System.out.println("login");
        if ((this.userpass != null) && (this.usermail != null)) {
          this.id = Database.validate(this.usermail, this.userpass);
          if(this.id !=0){
            sessionmap.put("login", true);
            sessionmap.put("user", Database.fetchUserDetailsByID(this.id));
            return SUCCESS;
          }
        }
        return INPUT;
    }

    /**
    * action de logout permet de quitter sa session
    */
    public String logout() {
      System.out.println("logout");
        this.sessionmap.invalidate();
        return SUCCESS;
    }

    /**
   * set de la session au moment de l'authentification
   * @param map session map
   */
    @Override
    public void setSession(Map map) {
        sessionmap = (SessionMap) map;
    }
}
