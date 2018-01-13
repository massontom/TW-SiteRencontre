<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="model.dao.Database" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Adopte un Ingé - <%=Database.fetchUserDetailsByID(4).getPrenom()%> <%=Database.fetchUserDetailsByID(4).getNom()%></title>
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

      /* Set black background color, white text and some padding */
      footer {
        background-color: #555;
        color: white;
        padding: 15px;
      }
    </style>
		<script>
			function likeClick() {
				${sessionScope.user}.getLike().addPersonnesLike(Database.fetchUserDetailsByID(4));
				Database.fetchUserDetailsByID(4).getLike().addPersonnesQuiMontLike(${sessionScope.user});
				Database.updateUserDetails(Database.fetchUserDetailsByID(4));
				Database.updateUserDetails(${sessionScope.user});
			}
		</script>
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
			<div class="text-center">
				<h1><%=Database.fetchUserDetailsByID(4).getPrenom()%> <%=Database.fetchUserDetailsByID(4).getNom()%></h1>
				<p><%=Database.fetchUserDetailsByID(4).getAge()%> ans</p>
				<p><%=Database.fetchUserDetailsByID(4).getVille()%>, <%=Database.fetchUserDetailsByID(4).getDepartement()%></p>
				<h3><a href="../accueil/AfficherProfil" onclick="likeClick()" class="btn btn-2">Liker</a></h3>
				<h3><a href="../accueil/AfficherProfil" class="btn btn-2">Signaler</a></h3>
				<h3><a href="#" class="btn btn-2">Contacter</a></h3>
			</div>
    </header>
  </body>
</html>
