<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé - Inscription</title>
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
						<s:form id="form" action="RegisterProcess" method="post" validate="true" cssStyle="text-align: center;display: inline-block;">
								<legend><h2>Inscription</h2></legend>
							<div class="row form-group">
  							<div class="col-md-6">
  								<s:textfield label="Prénom" name="userBean.prenom" class="form-connexion" placeholder="Prénom" required="true"></s:textfield>
  							</div>
  							<div class="col-md-6">
  								<s:textfield label="Nom" name="userBean.nom" class="form-connexion" placeholder="Nom" required="true"></s:textfield>
  							</div>
  						</div>

							<div class="row form-group">
								<div class="col-md-6">
									<s:radio label="Sexe" name="userBean.sexe" list="@model.Sexe@values()"/>
									<s:radio label="Orientation" name="userBean.orientation" list="@model.Sexe@values()"/>
								</div>
							</div>

              <div class="row form-group">
                <div class="col-md-12">
                  <s:textfield label="Adresse mail" name="userBean.mail" class="form-connexion" placeholder="example@example.com" required="true"></s:textfield>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <s:password label="Mot de passe" name="userBean.password" class="form-connexion" placeholder="******" required="true"/>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
									<s:textfield label="Age" type="number" name="userBean.age" placeholder="18+" min="18" class="form-connexion" required="true"/>
                </div>
              </div>

              <div class="row form-group">
  							<div class="col-md-6">
  								<s:textfield label="Ville" name="userBean.ville" class="form-connexion" placeholder="Votre ville" required="true"></s:textfield>
  							</div>
  							<div class="col-md-6">
  								<s:textfield type="number" min="0" max="96" label="Département" name="userBean.departement" class="form-connexion" placeholder="Votre département" required="true"></s:textfield>
  							</div>
  						</div>
							<s:submit value="S'inscrire" class="btn btn-2"/>
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
