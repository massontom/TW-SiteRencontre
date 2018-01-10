TECHNO WEB

http://localhost:8080/AdopteUnInge-1.0.0/accueil

instructions lancer bd mysql :
- installer un serveur mysql (pour ubuntu : sudo apt install mysql-serveur) (se souvenir du mot de passe maitre)
- se placer dans le dossier TW-SiteRencontre
- $ mysql -u root -p
- $ create database adopteuninge
- $ use adopteuninge
- $ source adopteuninge_2017-12-27.mysql
- à la ligne 19 de Database.java, adapter le port (3306 port mysql par défaut) et mettre son mot de passe maitre
