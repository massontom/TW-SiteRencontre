<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" import="bd.*" %> 

<!DOCTYPE html>
<html>
 <head>
    <link href="style.css"  rel="stylesheet" type="text/css"  />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Utilisateur ajouté</title>
  </head>
  <body>
<%
  String login = request.getParameter("login"), mdp = request.getParameter("mdp");
  bd.AccesBD.addLogin(login, mdp);
%>
    <p>Utilisateur "<%=login %>" correctement ajouté à la BD.</p>
    <p><a href="index.html">Retour à la page de saisie de login.</a></p>
  </body>
</html>
