package controller;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import model.dao.Database;

public class Login implements SessionAware {
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

    public String execute() {
        if ((this.userpass != null) && (this.usermail != null) && (Database.validate(this.usermail, this.userpass))) {
            return "success";
        } else {
            return "error";
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