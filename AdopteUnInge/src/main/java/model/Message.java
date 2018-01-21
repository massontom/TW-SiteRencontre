package model;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Locale;


public class Message implements Comparable {

        private Utilisateur auteur;
        private Date date;
        private Utilisateur destinataire;
        private String message;
        private int id;

        public Message(int id, Utilisateur auteur, Utilisateur destinataire, String message, String d) {
                this.auteur = auteur;
                this.destinataire = destinataire;
                this.message = message;
                this.id = id;
                try {
                  this.date = (new SimpleDateFormat("dd/MM/yyyy, HH:mm:ss", Locale.US)).parse(d);
                }
                catch (ParseException e) {
                  System.out.println(e);
                }
        }

        public Message(Utilisateur auteur, Utilisateur destinataire, String message) {
          this.auteur= auteur;
          this.destinataire= destinataire;
          this.date= new Date();
          this.message= message;
        }

        public Utilisateur getAuteur() {
                return this.auteur;
        }
        public void setAuteur(Utilisateur aut) {
          this.auteur=aut;
        }


        public Date getDate() {
                return this.date;
        }

        public void setDate(Date date){
          this.date = date;
        }

        public String getDateText(){
          return new SimpleDateFormat("dd/MM/yyyy, HH:mm:ss").format(this.date);
        }

        public Utilisateur getDestinataire() {
                return this.destinataire;
        }
        public void setDestinataire(Utilisateur destinataire) {
          this.destinataire = destinataire;
        }

        public String getMessage() {
                return this.message;
        }

        public void setMessage(String message) {
          this.message= message;
        }

        public int getId() {
                return this.id;
        }

        public void setId(int id) {
          this.id=id;
        }

        public String toString() {
          return "Message : " + message;
        }

        public int compareTo(Object o) {
          Message msg= (Message)o;
          return this.date.compareTo(msg.date);
        }

      }
