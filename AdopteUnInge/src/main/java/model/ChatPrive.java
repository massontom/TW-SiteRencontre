package model;

import java.util.ArrayList;
import java.util.List;

public class ChatPrive {
        private ArrayList<Messages> chats;

        public ChatPrive() {
                this.chats=new ArrayList<Messages>();
        }

        public ChatPrive(ArrayList<Messages> conv) {
          this.chats=new ArrayList<Messages>();
          this.chats=conv;
        }
        public ArrayList<Messages> getChats() {
          return this.chats;
        }

        public void setChats(ArrayList<Messages> conv) {
          this.chats=conv;
        }

        public void addChats(Messages mess) {
		      this.chats.add(mess);
	       }

         public String toString() {
           String ret = "";
           for (Messages mess : chats) {
             ret = ret + "Conversation avec " + mess.getDestinataire() + "\n";
             for (Message m : mess.getMessages()) {
               ret = ret + m + "\n";
             }
           }
           return ret;
         }

         public ArrayList<Message> getMessagesByUserId(int id) {
           ArrayList<Message> messages=new ArrayList<Message>();
           for (Messages mess : chats) {
             for (int i = 0; i < mess.getMessages().size(); i++){
               if (mess.getMessages().get(i).getAuteur().getId() == id || mess.getMessages().get(i).getDestinataire().getId() == id) {
                 messages.add(mess.getMessages().get(i));
               }
             }
           }
           return messages;
         }
}
