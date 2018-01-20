<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
								<h2>Voici la liste de vos messages</h2>
								<s:iterator value="utilisateur.chatprive.messages" var="messages">
									<s:url action="voirMessages.action" var="message" >
										<s:param name="utilisateur.id"><s:property value="#messages.destinataire.id"/></s:param>
									</s:url>
									<a href='<s:property value="#message" />'>
									<div class="row">
														<div class="profil panel panel-info">
															<div class="panel-heading">
																<span class="panel-title">
																	<strong><s:property value="#utilisateur.prenom"/></strong>
																</span>
															</div>
															<div class="panel-body">
																<div class="row">
																	<div class="col-md-9 col-lg-9 ">
																		<table class="table table-user-information">
																			<tr>
																				<td><strong>Date du dernier message : </strong><s:property value="#messages.dernierMessage.date"/></td>
																				<td><strong>Contenu du dernier message : </strong><s:property value="#messages.dernierMessage.message"/></td>
																			</tr>
																		</table>

																	</div>
																</div>
															</div>
														</a>
													</s:iterator>
							</div>
						</div>
					</div>
			</div>
		</header>
  </body>
</html>
