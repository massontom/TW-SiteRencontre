<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Adopte un Ingé - Mon Profil</title>
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
<body id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
  <header>
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
            <li class="active"><a href="../user/Profil">Mon Profil</a></li>
            <li><a href="../chat/chat">Chat</a></li>
            <li><a href="../user/ListeUtilisateurs">Liste des Membres</a></li>
          </ul><br>
        </div>

        <div class="col-sm-9">
      		<h1>Information sur votre profil</h1>
          <hr/>
          <p class="txt-connexion">Nom : <i>${sessionScope.user.nom}</i></p>
          <p class="txt-connexion">Prénom : <i>${sessionScope.user.prenom}</i></p>
          <p class="txt-connexion">Age : <i>${sessionScope.user.age}</i></p>
          <p class="txt-connexion">E-mail : <i>${sessionScope.user.mail}</i></p>
          <p class="txt-connexion">Ville : <i>${sessionScope.user.ville}</i></p>
          <p class="txt-connexion">Code postal : <i>${sessionScope.user.departement}</i></p>
          <p class="txt-connexion">Sexe :  <i id="sexe"></i></p>
          <script type="text/javascript">
            var div = document.getElementById("sexe");
            if(${sessionScope.user.sexe}==0){
              div.textContent = "Homme";
            }else{
              div.textContent = "Femme";
            }
            var text = div.textContent;
          </script>
          <p class="txt-connexion">Intéressé par : <i id="orientation"></i></p>
          <script type="text/javascript">
            var div = document.getElementById("orientation");
            if(${sessionScope.user.orientation}==0){
              div.textContent = "Homme";
            }else{
              div.textContent = "Femme";
            }
            var text = div.textContent;
          </script>
          <p class="txt-connexion">Description : <i>${sessionScope.user.description}</i></p>
          <a href="../user/edit.action" class="btn btn-2">Editer votre profil</a>
        </div>
      </div>
    </div>
	</header>
</body>
</html>
