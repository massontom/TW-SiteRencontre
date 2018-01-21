<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><s:property value="recherche"/></title>

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
	          <ul class="nav navbar-nav">
	            <li class="active"><a href="/acceuil/Recherche">Recherche</a></li>
	          </ul>
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
	            <li><a href="../profil">Mon Profil</a></li>
	            <li><a href="#section2">Chat</a></li>
	          </ul><br>
	          <div class="input-group">
	            <form>Recherche
								<input type="number"  min="0" max="96" label="Département"  placeholder="département" value="%{Recherche.departement}" ></input>
								<input type="text"  label="Ville"  placeholder="ville" ></input>
								<input type="number" label="Age" min="18" max="99" placeholder="Age"></input>
							</form>
	          </div>
	        </div>


	        <div class="col-sm-9" name="recherche">
	        </div>
	      </div>
	    </div>
	</body>
	<footer>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"> </script>

	</footer>
</html>
