<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé - Inscription</title>
<script language="JavaScript" src="${pageContext.request.contextPath}/struts/utils.js" type="text/javascript"></script>
	<script language="JavaScript" src="${pageContext.request.contextPath}/struts/xhtml/validation.js" type="text/javascript"></script>
		<!-- Theme style  -->
		<link rel="stylesheet" href="../css/style.css">
		<sj:head jqueryui="true" />
  </head>
	
  <body>
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
    <div class="gtco-section">
  		<div class="gtco-container">
  			<div class="row">
  				<div class="col-md-6 animate-box">
  					<h2>Connexion</h2>
						<p id="probleme"></p>
  					<s:form name="formulaire" action="RegisterProcess">
  						<div class="row form-group">
  							<div class="col-md-6">
  								<s:textfield label="Prénom" name="prenom" id="prenom" class="form-control" placeholder="Votre prénom"></s:textfield>
  							</div>
  							<div class="col-md-6">
  								<s:textfield label="Nom" name="nom" id="nom" class="form-control" placeholder="Votre nom"></s:textfield>
  							</div>
  						</div>

							<div class="row form-group">
								<div class="col-md-6">
									<s:radio label="Sexe" name="sexe" list="#{'0':'Homme','1':'Femme'}" value="0" />									
								</div>
							</div>

              <div class="row form-group">
                <div class="col-md-12">
                  <s:textfield label="Email" name="email" id="email" class="form-control" placeholder="Votre adresse mail"></s:textfield>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <s:password label="Mot de passe" name="mdp" id="mdp1" class="form-control" placeholder="Saisissez votre mot de passe"/>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <s:password label="Confirmation mot de passe" name="mdp1" id="mdp2" class="form-control" placeholder="Saisissez votre mot de passe"/>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
									<s:date name="dateDeNaissance" format="yyyy-MM-dd"/>
                </div>
              </div>

              <div class="row form-group">
  							<div class="col-md-6">
  								<s:textfield label="Ville" name="ville" id="ville" class="form-control" placeholder="Votre ville"></s:textfield>
  							</div>
  							<div class="col-md-6">
  								<s:textfield label="Département" name="departement" id="departement" class="form-control" placeholder="Votre département"></s:textfield>
  							</div>
  						</div>

  						<div class="form-group">
								<sj:submit value="Valider" validate="true" class="btn btn-2"> </sj:submit>
  						</div>

  					</s:form>
  				</div>
					</header>
  </body>
</html>
