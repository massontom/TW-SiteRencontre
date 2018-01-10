<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><s:property value="title"/></title>

		<!-- Theme style  -->
		<link rel="stylesheet" href="../css/style.css">
  </head>
  <body>
    <header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
      <div class="gtco-container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2 text-center">
            <div class="display-tc">
              <h1><s:property value="title"/></h1>
              <h2><s:property value="message"/> <a href="http://insa-rouen.fr/" target="_blank">Insa Rouen</a></h2>
              <p><a href="./Register.action" class="btn btn-default">Inscription</a></p>
              <p><a href="./login" class="btn btn-default">Connexion</a></p>
            </div>
          </div>
        </div>
      </div>
    </header>
  </body>
</html>
