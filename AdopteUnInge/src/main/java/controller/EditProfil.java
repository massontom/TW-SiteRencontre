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

public class EditProfil extends ActionSupport implements SessionAware{
  private Utilisateur userBean;
  private SessionMap<String, Object> sessionmap;

  public Utilisateur getUserBean() {
    return userBean;
  }

  public void setUserBean(Utilisateur user) {
    userBean = user;
  }

  public String execute() throws Exception {
    Database.updateUserDetails(userBean);
    return SUCCESS;
  }

  public String input() throws Exception {

		return INPUT;
}

  /**
  * set de la session au moment de l'exectio
  * @param map session map
  */
  @Override
  public void setSession(Map map) {
      sessionmap = (SessionMap) map;
      userBean = (Utilisateur)this.sessionmap.get("user");
      System.out.println("==============================================================");
      userBean.toString();
  }
}
