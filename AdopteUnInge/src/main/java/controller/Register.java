package controller;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.ActionSupport;
import java.util.concurrent.TimeUnit;
import model.Utilisateur;
import java.util.Date;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import model.dao.database;

public class Register extends ActionSupport {
private Utilisateur userBean;
public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

  public String execute() throws Exception {
    registerUser(getUserBean());
    return SUCCESS;
  }

  /**
 * valide le formulaire d'inscription
 */
  public void validate(){
    if (userBean.getNom().length() == 0){
      addFieldError( "userBean.nom", "Nom obligatoire" );
    }
    if (userBean.getPrenom().length() == 0){
      addFieldError( "userBean.prenom", "Prénom obligatoire" );
    }
    if ((userBean.getAge() < 18)||(userBean.getAge() > 100)){
      addFieldError( "userBean.dateDeNaissance", "Vous devez avoir plus de 18 ans" );
    }
    if(userBean.getSexe() == null){
      addFieldError( "userBean.sexe", "Sexe obligatoire" );
    }
    if((userBean.getMdp() == null)||(userBean.getMdp().length() < 5)){
      addFieldError( "userBean.mdp", "Mot de passe obligatoire, supérieur à 5 charactères" );
    }
    if(userBean.getEmail() == null){
      addFieldError( "userBean.email", "Adresse mail obligatoire" );
    }
    if((userBean.getEmail() != null)&&(!validateMail(userBean.getEmail()))){
      addFieldError( "userBean.email", "Adresse mail valide obligatoire" );
    }
    if(userBean.getVille() == null){
      addFieldError( "userBean.ville", "Ville obligatoire" );
    }
    if(userBean.getOrientation() == null){
      addFieldError( "userBean.orientation", "Orientation obligatoire" );
    }
    if((userBean.getDepartement() <= 0)||(userBean.getDepartement()>96)){
      addFieldError( "userBean.departement", "Département valide obligatoire" );
    }
    System.out.println(getUserBean().toString());
  }

  public Utilisateur getUserBean() {
		return userBean;
	}

	public void setUserBean(Utilisateur user) {
		userBean = user;
	}

/**
* permet de vérifier la validité de l'adresse mail avec du Regex
* @param email email à vérifier
* @return un booléen en fonction du match pour l'email
*/
public static boolean validateMail(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX .matcher(emailStr);
        return matcher.find();
}
}
