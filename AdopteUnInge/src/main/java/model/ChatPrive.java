package model;

import java.util.ArrayList;
import java.util.List;

public class ChatPrive {
        private List<Messages> chats;

        public ChatPrive() {
                this.chats=new ArrayList<Messages>();
        }

        public ChatPrive(ArrayList<Messages> conv) {
          this.chats=conv;
        }
        public List<Messages> getChats() {
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

         public Messages getMessagesByUserId(int id) {
           for (Messages mess : chats) {
             if (mess.getDestinataire().getId() == id) {
               return mess;
             }
           }
           return null;
         }
}
