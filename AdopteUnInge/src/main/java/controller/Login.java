package controller;

import java.util.Map;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.validator.annotations.ExpressionValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Result;
import model.dao.Database;

@InterceptorRef("jsonValidationWorkflowStack")
@Validations(requiredStrings = {
        @RequiredStringValidator(fieldName = "usermail", type = ValidatorType.FIELD, message = "Adresse mail requise"),
        @RequiredStringValidator(fieldName = "userpass", type = ValidatorType.FIELD, message = "Mot de passe requis")}, expressions = {@ExpressionValidator(expression = "userpass.trim().equals('test') == true", message = "Password must be test.")

})
public class Login extends ActionSupport implements SessionAware {
    private static final long serialVersionUID = 7968544374444173511L;
    private static final Log log = LogFactory.getLog(Login.class);
    private String usermail, userpass;
    SessionMap<String, String> sessionmap;

    public String getUsermail() {
        return this.usermail;
    }

    public void setUsermail(String usermail) {
        this.usermail = usermail;
    }

    public String getUserpass() {
        return this.userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }

    @Action(value = "/login", results = {@Result(location = "./Index.action", name = "success")})
    public String execute() throws Exception {
        if ((this.userpass != null) && (this.usermail != null) && (Database.validate(this.usermail, this.userpass))) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public void setSession(Map map) {
        sessionmap = (SessionMap) map;
        sessionmap.put("login", "true");
    }

    public String logout() {
        sessionmap.invalidate();
        return "success";
    }

}