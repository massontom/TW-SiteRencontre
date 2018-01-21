<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé</title>

		<!-- Theme style  -->
		<link rel="stylesheet" href="../css/style.css">
			<meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<style>
				body {
					background-image: url(../images/img_bg_1.jpg);
					background-repeat: no-repeat;
					background-attachment: fixed;
				}
				.navbar {
		      margin-bottom: 0;
		      border-radius: 0;
    		}

				.row.content {height: 1500px}

				.sidenav {
				  background-color: #f1f1f1;
				  height: 100%;
				}

				footer {
				  background-color: #555;
				  color: white;
				  padding: 15px;
				}

				@media screen and (max-width: 767px) {
				  .sidenav {
				    height: auto;
				    padding: 15px;
				  }

				  .row.content {height: auto;}
				}
			</style>
  </head>
	<body id="gtco-header" class="gtco-cover">
	    <nav class="navbar navbar-inverse">
	      <div class="container-fluid">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#">Adopte un Ingé <span class="glyphicon glyphicon-heart"></span></a>
	        </div>
	        <div class="collapse navbar-collapse" id="myNavbar">
	          <ul class="nav navbar-nav navbar-right">
	            <li><a href="../accueil/logout.action"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	          </ul>
	        </div>
	      </div>
	    </nav>
	    <div class="container-fluid">
	      <div class="row content">
	        <div class="col-sm-3 sidenav">
	          <h4>Bienvenue ${sessionScope.user.prenom}</h4>
	          <ul class="nav nav-pills nav-stacked">
	            <li class="active"><a href="../user/indexUser">Accueil</a></li>
	            <li><a href="../user/Profil">Mon Profil</a></li>
	            <li><a href="../chat/chat">Chat</a></li>
							<li><a href="../user/ListeUtilisateurs">Liste des Membres</a></li>
	          </ul><br>
						<div class="input-group">
	            <s:form method="post" action="rechercher">Recherche
								<s:hidden type="number" value="${sessionScope.user.oreintation}">></s:hidden>
								<s:textfield type="number"  min="0" max="96" label="Département :" name="departement" placeholder="departement"></s:textfield>
								<s:textfield type="text"  label="Ville :" name="ville" placeholder="ville" ></s:textfield>
								<s:textfield type="number" label="Age (+/-5) :" name="age" min="18" max="99" placeholder="Age"></s:textfield>
								<s:submit value="Rechercher" class="btn btn-2"/>
							</s:form>
	          </div>
	        </div>


					<div class="col-sm-9" name="recherche">

						<s:iterator value="userRecherche" var="user">
							<div class="col-sm-3 well">
								<div class="well">
  								<s:property value="#user.prenom"/> <s:property value="#user.nom"/></br>
									<a href="consulterProfil?membre.id=<s:property value="#user.id"/>">Voir le profil</a>
								</div>
							</div>
						</s:iterator>

	        </div>
	      </div>
	    </div>
	</body>
</html>
