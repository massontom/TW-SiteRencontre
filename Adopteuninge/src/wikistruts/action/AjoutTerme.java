package wikistruts.action;

import wikistruts.model.*;
import java.util.*;
import java.io.*;
import com.opensymphony.xwork2.ActionSupport;

public class AjoutTerme extends ActionSupport implements Serializable {
    private static final long serialVersionUID = 1L;
    private static Termes dictionnaire;
    private String terme;
    private String definition;

    public AjoutTerme() {
        super();
    }

    public String execute() throws Exception {
        this.dictionnaire.setDefinition(terme, definition);
        return SUCCESS;
    }

    public String input() throws Exception {
        return INPUT;
    }

    public void validate() {
        if(terme.length() == 0) {
            addFieldError("terme", "Le terme est requis");
        }
        if(definition.length() == 0) {
            addFieldError("definition", "Une definition est requise");
        }
    }

    public String getTerme() {
        return this.terme;
    }

    public void setTerme(String terme) {
        this.terme = terme;
    }

    public String getDefinition() {
        return this.definition;
    }

    public void setDefinition(String definition) {
        this.definition = definition;
    }
}
