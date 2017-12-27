package model;

public class ChatPrive {
        private Messages messages;
        private int id;
        private String nom;

        public ChatPrive(int id, String nom) {
                this.id = id;
                this.nom = nom;
                this.messages = new Messages();
        }

        public Messages getMessages() {
                return this.messages;
        }

        public int getId() {
                return this.id;
        }

        public String getNom() {
                return this.nom;
        }
}
