package model;

import java.util.*;

public class Messages {

  private int id;
  private List<Message> listeMessages;

  public Messages() {
    listeMessages = new ArrayList<Message>();
  }

  public Messages(int id, List<Message> listeMessages) {
    this.id = id;
    this.listeMessages = listeMessages;
  }

  public int getId() {
    return id;
  }

  public List<Message> getMessages() {
    return listeMessages;
  }

  public void addMessage(Message msg) {
    listeMessages.add(msg);
  }

  public void suppMessage(Message msg) {
    listeMessages.remove(msg);
  }
}
