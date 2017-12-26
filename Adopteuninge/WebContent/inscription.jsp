<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java" import="asi.*" %> 
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé - Inscription</title>

		<!-- Theme style  -->
		<link rel="stylesheet" href="css/style.css">
		<script type="text/javascript">
			function verification() {
				var prenomBox=document.getElementById("prenom");
				var nomBox=document.getElementById("nom");
				var emailBox=document.getElementById("email");
				var mdp1Box=document.getElementById("mdp1");
				var mdp2Box=document.getElementById("mdp2");
				var dateBox=document.getElementById("date de naissance");
				var villeBox=document.getElementById("ville");
				var departementBox=document.getElementById("departement");
				var probleme=document.getElementById("probleme");

				probleme.style.color="#52d3aa";
				if ((prenomBox.value=="") || (nomBox.value=="") || (emailBox.value=="") || (mdp1Box.value=="") || (mdp2Box.value=="") || (villeBox.value=="") || (departementBox.value=="") || (dateBox.value=="")) {
					if (!probleme.hasChildNodes()) {
						probleme.appendChild(document.createTextNode("Champ obligatoire"));
					} else {
						probleme.appendChild(document.createTextNode("Champ obligatoire"));
						probleme.removeChild(probleme.childNodes[0]);
					}
					if (prenomBox.value=="") {
						prenomBox.style.outline="2px solid #52d3aa";
					} else {
						prenomBox.style.outline="initial";
					}
					if (nomBox.value=="") {
						nomBox.style.outline="2px solid #52d3aa";
					} else {
						nomBox.style.outline="initial";
					}
					if (emailBox.value=="") {
						emailBox.style.outline="2px solid #52d3aa";
					} else {
						emailBox.style.outline="initial";
					}
					if (mdp1Box.value=="") {
						mdp1Box.style.outline="2px solid #52d3aa";
					} else {
						mdp1Box.style.outline="initial";
					}
					if (mdp2Box.value=="") {
						mdp2Box.style.outline="2px solid #52d3aa";
					} else {
						mdp2Box.style.outline="initial";
					}
					if (dateBox.value=="") {
						dateBox.style.outline="2px solid #52d3aa";
					} else {
						dateBox.style.outline="initial";
					}
					if (villeBox.value=="") {
						villeBox.style.outline="2px solid #52d3aa";
					} else {
						villeBox.style.outline="initial";
					}
					if (departementBox.value=="") {
						departementBox.style.outline="2px solid #52d3aa";
					} else {
						departementBox.style.outline="initial";
					}
				} else {
					prenomBox.style.outline="initial";
					nomBox.style.outline="initial";
					emailBox.style.outline="initial";
					mdp1Box.style.outline="initial";
					mdp2Box.style.outline="initial";
					villeBox.style.outline="initial";
					departementBox.style.outline="initial";
					dateBox.style.outline="initial";
					if (mdp1Box.value!==mdp2Box.value) {
						if (!probleme.hasChildNodes()) {
							probleme.appendChild(document.createTextNode("Les mots de passe sont différents"));
						} else {
							probleme.appendChild(document.createTextNode("Les mots de passe sont différents"));
							probleme.removeChild(probleme.childNodes[0]);
						}
						mdp1Box.style.outline="2px solid #52d3aa";
						mdp2Box.style.outline="2px solid #52d3aa";
					} else {
						mdp1Box.style.outline="initial";
						mdp2Box.style.outline="initial";
						probleme.removeChild(probleme.childNodes[0]);
					}
				}
			};
		</script>
  </head>
  <body>
    <div class="gtco-section">
  		<div class="gtco-container">
  			<div class="row">
  				<div class="col-md-6 animate-box">
  					<h3>Inscription</h3>
						<p id="probleme"></p>
  					<form name="formulaire" action="#" onsubmit="verification()">
  						<div class="row form-group">
  							<div class="col-md-6">
  								<label for="prenom">Prénom</label>
  								<input type="text" id="prenom" class="form-control" placeholder="Votre prénom">
  							</div>
  							<div class="col-md-6">
  								<label for="nom">Nom</label>
  								<input type="text" id="nom" class="form-control" placeholder="Votre nom">
  							</div>
  						</div>

							<div class="row form-group">
								<div class="col-md-6">
									<label for="sexe">Sexe</label>
									<label class="radio inline">
										<input type="radio" name="sexe" value="homme" checked>
										<span>Homme</span>
									</label>
									<label class="radio inline">
										<input type="radio" name="sexe" value="femme">
										<span>Femme</span>
									</label>
								</div>
							</div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label for="email">Email</label>
                  <input type="text" id="email" class="form-control" placeholder="Votre adresse mail">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label for="mdp1">Mot de passe</label>
                  <input type="password" id="mdp1" class="form-control" placeholder="Saisissez votre mot de passe">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label for="mdp2">Confirmation mot de passe</label>
                  <input type="password" id="mdp2" class="form-control" placeholder="Saisissez votre mot de passe">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label for="date de naissance">Date de naissance</label>
                  <input type="date" id="date de naissance">
                </div>
              </div>

              <div class="row form-group">
  							<div class="col-md-6">
  								<label for="ville">Ville</label>
  								<input type="text" id="ville" class="form-control" placeholder="Votre ville">
  							</div>
  							<div class="col-md-6">
  								<label for="departement">Département</label>
  								<input type="text" id="departement" class="form-control" placeholder="Votre département">
  							</div>
  						</div>

  						<div class="form-group">
  							<input type="submit" value="Valider" class="btn btn-primary">
  						</div>

  					</form>
  				</div>
  </body>
</html>
