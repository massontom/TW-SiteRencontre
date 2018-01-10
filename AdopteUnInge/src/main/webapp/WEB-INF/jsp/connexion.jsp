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
							<div class="type-text">
								<fieldset>
	            		<s:form id="form" action="login" method="post" validate="true" cssStyle="text-align: center;display: inline-block;">
		                  <legend><h2>Connexion</h2></legend>
		                      <s:textfield id="usermail" name="usermail" label="Adresse Mail" placeholder="Email" class="form-connexion" required="true"/>
		                      <s:password label="Mot de passe" name="userpass" id="userpass" placeholder="******" class="form-connexion" required="true"></s:password>
											<s:submit value="Se connecter" class="btn btn-2"/>
	              	</s:form>
								</fieldset>
							</div>
            </div>
          </div>
        </div>
      </div>
    </header>
  </body>
</html>
