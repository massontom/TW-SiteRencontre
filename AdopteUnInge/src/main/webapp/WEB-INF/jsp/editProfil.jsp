<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edition profil</title>
    <link rel="stylesheet" href="../css/style.css">
  </head>
  <body>
    <header>
      <fieldset>
  			<legend><h2>Edition de votre profil</h2></legend>
        <s:form action="save" method="post">
          <s:textfield label="Nom" name="userBean.nom" placeholder="Nom" required="true"></s:textfield>
          <s:textfield label="Prénom" name="userBean.prenom" placeholder="Prénom" required="true"></s:textfield>
          <s:textfield label="Age" type="number" name="userBean.age" placeholder="18+" min="18" required="true"/>
          <s:textfield label="Adresse mail" name="userBean.mail" placeholder="example@example.com" required="true"></s:textfield>
          <s:textfield label="Ville" name="userBean.ville" placeholder="Votre ville" required="true"></s:textfield>
          <s:textfield type="number" min="0" max="96" label="Département" name="userBean.departement" placeholder="Votre département" required="true"></s:textfield>
          <s:radio label="Sexe" name="userBean.sexe" list="#{'0' : 'Homme', '1' : 'Femme'}" value="0" required="true"/>
          <s:radio label="Intéressé par" name="userBean.orientation" list="#{'0' : 'Homme', '1' : 'Femme'}" value="0" required="true"/>
          <s:password label="Mot de passe" name="userBean.password" class="form-connexion" placeholder="*********" required="true"/>
          <s:submit value="Enregistrer les modifications" />
        </s:form>
      </fieldset>
  	</header>
  </body>
</html>
