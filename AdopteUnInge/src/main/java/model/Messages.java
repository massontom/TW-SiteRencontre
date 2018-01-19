package model;

import java.util.*;

public class Messages {

  private Utilisateur destinataire;
  private int id;
  private List<Message> listeMessages;

  public Messages(Utilisateur u) {
    this.destinataire = u;
    listeMessages = new ArrayList<Message>();
  }

  public Utilisateur getDestinataire(){
    return destinataire;
  }

  public void setDestinataire(Utilisateur destinataire){
    this.destinataire = destinataire;
  }

  public int getId() {
    return id;
  }

  public void setMessages(List<Message> messages) {
    this.listeMessages = messages;
  }

  public List<Message> getMessages() {
    return this.listeMessages;
  }

  public void addMessage(Message msg) {
    listeMessages.add(msg);
  }

  public void suppMessage(Message msg) {
    listeMessages.remove(msg);
  }

  public Message getDernierMessage() {
    return listeMessages.get(listeMessages.size()-1);
  }
}
