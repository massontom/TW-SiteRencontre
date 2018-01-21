<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
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

      /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
      .row.content {height: 1500px}

      /* Set gray background color and 100% height */
      .sidenav {
        background-color: #f1f1f1;
        height: 100%;
      }

      /* Set black background color, white text and some padding */
      footer {
        background-color: #555;
        color: white;
        padding: 15px;
      }

      /* On small screens, set height to 'auto' for sidenav and grid */
      @media screen and (max-width: 767px) {
        .sidenav {
          height: auto;
          padding: 15px;
        }
        .row.content {height: auto;}}
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
            <ul class="nav navbar-nav navbar-right">
              <li><a href="../accueil/logout.action"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="container-fluid">
        <div class="row content">
          <div class="col-sm-3 sidenav">
            <h4>Vos chats</h4>
            <ul class="nav nav-pills nav-stacked">
              <li><a href="../user/indexUser">Accueil</a></li>
              <li><a href="../profil/Profil">Mon Profil</a></li>
              <li><a href="../chat/chat">Chat</a></li>
            </ul><br>
          </div>

					<div class="gtco-container">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 text-center">
								<div class="type-text">
									<h2>Contenu de vos échanges</h2>
						      <s:iterator value="messages" var="message">
										<s:if test="#message.auteur.id == utilisateur.id">
											<div class="row text-right">
												<span>
													<strong><s:property value="#message.auteur.prenom"/></strong><br/>
												</span>
												<strong>Contenu : </strong><s:property value="#message.message"/><br/>
												<strong>Date : </strong><s:property value="#message.dateText"/>
											</div>
										</s:if>
										<s:else>
											<div class="row text-left">
												<span>
													<strong><s:property value="#message.auteur.prenom"/></strong><br/>
												</span>
												<strong>Contenu : </strong><s:property value="#message.message"/><br/>
												<strong>Date : </strong><s:property value="#message.dateText"/>
											</div>
										</s:else>
									</s:iterator>
									<div class="row text-center">
										<s:form action="ajouterMessage" theme="simple">
												<s:property  value="fieldErrors.get('messageEcrit').get(0)"  />
											<s:textarea name="contenu" rows="5" placeholder="Saisissez votre message" />
											<s:hidden name="utilisateur.id" value="%{utilisateur.id}" />
											<s:submit key="submit" cssClass="btn btn-2" value="Envoyer"/>
										</s:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</body>
</html>
