<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Chat</title>

		<!-- Theme style  -->
		<link rel="stylesheet" href="../css/style.css">

  </head>
  <body>
    <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="js/chat.js"></script>
		<header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center">
							<div class="type-text">
								<fieldset>
									<s:form action="message" method="post" cssStyle="text-align: center;display: inline-block;">
											<legend><h2>Messagerie</h2></legend>
													<s:textfield label="Message" name="message" placeholder="Entrez votre message..." required="true"/>
											<s:submit value="Envoyer" action="envoi" class="btn btn-2"/>
									</s:form>
								</fieldset>
							</div>
						</div>
					</div>
			</div>
		</header>
  </body>
</html>
