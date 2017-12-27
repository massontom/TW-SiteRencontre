<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé - Connexion</title>

		<!-- Theme style  -->
		<link rel="stylesheet" href="../css/style.css">
  </head>
  <body>
    <header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
      <div class="gtco-container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 text-center">
            <div class="display-connexion">
                <h2>Connexion</h2>
                <div name = "identification">
                <s:form action="LoginProcess">
                  <s:textfield label="Adresse Mail" name="usermail" id="usermail" class="form-connexion"></s:textfield>
  								<s:password label="Mot de passe" name="userpass" id="userpass" class="form-connexion"></s:password>
                  </br><s:submit value="Valider" class="btn btn-2" ></s:submit> 
                </s:form>    
                </div>            
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
  </body>
</html>
