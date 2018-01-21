<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="model.dao.Database" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Adopte un Ingé - <s:property value="membre.prenom"/> <s:property value="membre.nom"/></title>
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
	          <h4>Voici <s:property value="membre.prenom"/></h4>
	          <ul class="nav nav-pills nav-stacked">
	            <li><a href="../user/indexUser">Accueil</a></li>
	            <li><a href="../profil">Mon Profil</a></li>
              <li><a href="../chat/chat">Chat</a></li>
							<li class="active"><a href="../accueil/ListeUtilisateurs">Liste des Membres</a></li>
	          </ul><br>
          </div>
          <div class="col-sm-9">
						<div class="col-sm-3 well">
        			<div class="text-center">
                <h1><s:property value="membre.prenom"/> <s:property value="membre.nom"/></h1>
                <p><s:property value="membre.age"/> ans</p>
                <p><s:property value="membre.ville"/>, <s:property value="membre.departement"/></p>
                <s:url action="liker" var="liker" >
                  <s:param name="membre.id"><s:property value="membre.id"/></s:param>
                </s:url>
                <h3><a href="<s:property value="#liker"/>" class="btn btn-2">Liker</a></h3>
        				<h3><a href="../chat/chat" class="btn btn-2">Contacter</a></h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
  </body>
</html>
