<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Profil</title>
  <link rel="stylesheet" href="../css/style.css">
</head>
<body>
  <header>
		<fieldset>
			<legend><h2>Information sur votre profil</h2></legend>
      <p>Nom : <i>${sessionScope.user.nom}</i></p>
      <p>Prénom : <i>${sessionScope.user.prenom}</i></p>
      <p>Age : <i>${sessionScope.user.age}</i></p>
      <p>E-mail : <i>${sessionScope.user.mail}</i></p>
      <p>Ville : <i>${sessionScope.user.ville}</i></p>
      <p>Code postal : <i>${sessionScope.user.departement}</i></p>
      <p>Sexe :  <i id="sexe"></i></p>
      <script type="text/javascript">
        var div = document.getElementById("sexe");
        if(${sessionScope.user.sexe}==0){
          div.textContent = "Homme";
        }else{
          div.textContent = "Femme";
        }
        var text = div.textContent;
      </script>
      <p>Intéressé par : <i id="orientation"></i></p>
      <script type="text/javascript">
        var div = document.getElementById("orientation");
        if(${sessionScope.user.orientation}==0){
          div.textContent = "Homme";
        }else{
          div.textContent = "Femme";
        }
        var text = div.textContent;
      </script>
      <p><a href="../user/edit.action" >Editer votre profil</a></p>
      <p><a href="../accueil/logout.action">Se déconnecter</a></p>
    </fieldset>
	</header>
</body>
</html>
