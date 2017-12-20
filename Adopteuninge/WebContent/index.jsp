<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Super Dictionnaire</title>
            <s:head/> <!-- necessaire pour afficher les erreurs ! -->
    </head>
    <body>
        <h1>Bienvenue dans le super dictionnaire</h1>
        <s:form action="saisieTerme">
            <s:textfield name="terme" label="Terme"/>
            <s:submit/>
        </s:form>
    </body>
    <footer>
        <a href="ajout.jsp">Ajouter un terme</a> au dictionnaire
    </footer>
</html>
