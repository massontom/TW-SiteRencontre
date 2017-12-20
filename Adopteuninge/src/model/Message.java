package model;

import java.util.Date;
import java.lang.Integer;
import java.lang.String;

public class Message {
private Utilisateur auteur;
private Date date;
private Utilisateur destinataire;
private String message;
private int id;

public Message(int id, Utilisateur auteur, Utilisateur destinataire, String message){
        this.auteur=auteur;
        this.date= new Date();
        this.destinataire=destinataire;
        this.message=message;
        this.id=id;
}

public Utilisateur getAuteur(){
        return this.auteur;
}

public Date getDate(){
        return this.date;
}

public Utilisateur getDestinataire(){
        return this.destinataire;
}

public String getMessage(){
        return this.message;
}

public int getId(){
        return this.id;
}

}
