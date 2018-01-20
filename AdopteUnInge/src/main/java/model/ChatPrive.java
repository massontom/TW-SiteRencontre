package model;

import java.util.ArrayList;
import java.util.List;

public class ChatPrive {
        private List<Messages> chat;

        public ChatPrive() {
                this.chat=new ArrayList<Messages>();
        }

        public ChatPrive(ArrayList<Messages> conv) {
          this.chat=conv;
        }
        public List<Messages> getMessages() {
                return this.chat;
        }

        public void setMessages(ArrayList<Messages> conv) {
          this.chat=conv;
        }

        public void addMessages(Messages mess) {
		      this.chat.add(mess);
	       }

         public String toString() {
           String ret = "";
           for (Messages mess : chat) {
             ret = ret + "Conversation avec " + mess.getDestinataire() + "\n";
             for (Message m : mess.getMessages()) {
               ret = ret + m + "\n";
             }
           }
           return ret;
         }

         public Messages getMessagesByUserId(int id) {
           for (Messages mess : chat) {
             if (mess.getDestinataire().getId() == id) {
               return mess;
             }
           }
           return null;
         }
}
