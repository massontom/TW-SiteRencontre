<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Dictionnaire</title>
            <s:head/>
    </head>
    <body>
        <h1>Resultat :</h1>
        <s:form action="saisieTerme">
            <s:textfield name="terme" label="Terme"/>
            <s:submit/>
        </s:form>
        <p><s:property value="message"/></p> <!-- message fait référence au paramètre "message" du couple getteur/setteur get/setMessage  ET NON à l'attribut privé message !!!-->
    </body>
    <footer>
        <a href="ajout.jsp">Ajouter un terme</a> au dictionnaire
    </footer>
</html>
