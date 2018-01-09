<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <script src="../js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé - Connexion</title>

		<!-- Theme style  -->
		<link rel="stylesheet" href="../css/style.css">
    <script
	language="JavaScript"
	src="../js/utils.js"
	type="text/javascript">
</script>
<script
	language="JavaScript"
	src="../js/validation.js"
	type="text/javascript">
</script>
  </head>
  <body>
    <header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
      <div class="gtco-container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3 text-center">
            <div class="display-connexion">
            <s:form id="form" action="LoginProcess" theme="xhtml" cssClass="yform">
                <fieldset>
                  <legend><h2>Connexion</h2></legend>
                  <div name = "identification">
                    <div class="type-text">
                      <s:textfield id="usermail" name="usermail" label="Adresse Mail" placeholder="Email" class="form-connexion" required="true"/>
                      <s:password label="Mot de passe" name="userpass" id="userpass" placeholder="******" class="form-connexion" required="true"></s:password>
                    </div>
                    <div class="type-button">      
                    <sj:submit
                      targets="result"
                      button="true"
                      validate="true"
                      value="Se connecter"
                      indicator="indicator"
                      />                                         
                    </div>
                  </div>     
                </fieldset>
              </s:form>
              <img id="indicator" src="../images/indicator.gif" alt="Loading..." style="display:none"/>
            </div>            
          </div>
        </div>
      </div>
    </header>
  </body>
</html>
