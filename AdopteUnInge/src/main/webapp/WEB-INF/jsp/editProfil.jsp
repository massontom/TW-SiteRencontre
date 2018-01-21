<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Edition profil</title>
    <link rel="stylesheet" href="../css/style.css">
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
  <body>
    <header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
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
            <ul class="nav navbar-nav">
              <li class="active"><a href="../user/indexUser">Accueil</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="../accueil/logout.action"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="container-fluid">
	      <div class="row content">
	        <div class="col-sm-3 sidenav">
	          <h4>Profil de ${sessionScope.user.prenom}</h4>
	          <ul class="nav nav-pills nav-stacked">
	            <li><a href="../user/indexUser">Accueil</a></li>
	            <li class="active"><a href="../profil">Mon Profil</a></li>
              <li><a href="../chat/chat">Chat</a></li>
							<li><a href="../accueil/ListeUtilisateurs">Liste des Membres</a></li>
	          </ul><br>
          </div>

          <div class="col-sm-9">
            <h1>Edition de votre profil</h1>
            <hr/>
            <s:form action="save" method="post" cssStyle="text-align: left;display: inline-block;">
                <s:textfield label="Nom" name="userBean.nom" class="form-connexion" placeholder="Nom" required="true"></s:textfield>
                <s:textfield label="Prénom" name="userBean.prenom" class="form-connexion" placeholder="Prénom" required="true"></s:textfield>
                <s:textfield label="Age" type="number" class="form-connexion" name="userBean.age" placeholder="18+" min="18" required="true"/>
                <s:textfield label="Adresse mail" name="userBean.mail" class="form-connexion" placeholder="example@example.com" required="true"></s:textfield>
                <s:textfield label="Ville" name="userBean.ville" class="form-connexion" placeholder="Votre ville" required="true"></s:textfield>
                <s:textfield type="number" min="0" max="96" class="form-connexion" label="Département" name="userBean.departement" placeholder="Votre département" required="true"></s:textfield>
                <s:radio label="Sexe" name="userBean.sexe" list="#{'0' : 'Homme', '1' : 'Femme'}" value="0" required="true"/>
                <s:radio label="Intéressé par" name="userBean.orientation" list="#{'0' : 'Homme', '1' : 'Femme'}" value="0" required="true"/>
                <s:password label="Mot de passe" name="userBean.password" class="form-connexion" placeholder="*********" required="true"/>
                <s:textarea label="Description" name="userBean.description" class="textarea-connexion" placeholder="Description" required="true"/>
                <s:submit value="Enregistrer les modifications" class="btn btn-2"/>
            </s:form>
        	</header>
        </div>
      </div>
    </div>
  </body>
</html>
