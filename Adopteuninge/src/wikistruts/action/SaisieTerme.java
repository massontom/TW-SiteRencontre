package wikistruts.action;

import wikistruts.model.*;
import java.util.*;
import java.io.*;
import com.opensymphony.xwork2.ActionSupport;

public class SaisieTerme extends ActionSupport implements Serializable {
    private static final long serialVersionUID = 1L;
    private static Termes dictionnaire;
    private String terme;
    private String message;

    public SaisieTerme() {
        super();
    }

    public String execute() throws Exception {
        this.message = terme + " : " + dictionnaire.getDefinition(terme);
        return SUCCESS;
    }

    public String input() throws Exception {
        return INPUT; // OSEF
    }

    public void validate() {
        if(terme.length() == 0) {
            addFieldError("terme", "Le terme est requis");
        }
    }

    public String getTerme() {
        return this.terme;
    }

    public void setTerme(String terme) {
        this.terme = terme;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
