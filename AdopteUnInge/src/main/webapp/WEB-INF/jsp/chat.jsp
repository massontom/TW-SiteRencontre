<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé - Chat</title>
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
            <a class="navbar-brand" href="#">Adopte un Ingé - <span class="glyphicon glyphicon-heart"></span></a>
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
	          <h4>Vos Conversations</h4>
	          <ul class="nav nav-pills nav-stacked">
	            <li><a href="../user/indexUser">Accueil</a></li>
	            <li><a href="../user/Profil">Mon Profil</a></li>
              <li class="active"><a href="../chat/chat">Chat</a></li>
							<li><a href="../user/ListeUtilisateurs">Liste des Membres</a></li>
	          </ul><br>
          </div>
					<div class="gtco-container">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 text-center">
								<div class="type-text">
									<h2>Voici la liste de vos messages</h2>
									<s:iterator value="utilisateur.chatPrive.chats" var="chat">
										<s:url action="voirMessages.action" var="message" >
											<s:param name="utilisateur.id"><s:property value="#chat.destinataire.id"/></s:param>
										</s:url>
										<a href='<s:property value="#message" />'>
											<div class="row">
												<span>
													<strong><s:property value="#chat.destinataire.prenom"/></strong>
													<strong><s:property value="#chat.destinataire.nom"/></strong>
												</span>
											</div>
											<div class="row">
												<div class="col-md-9 col-lg-9 ">
													<table>
														<tr>
															<td><strong>Date du dernier message : </strong><s:property value="#chat.lastMessage.dateText"/></td>
															<td><strong>Contenu du dernier message : </strong><s:property value="#chat.lastMessage.message"/></td>
														</tr>
													</table>
												</div>
											</div>
										</a>
									</s:iterator>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
  </body>
</html>
