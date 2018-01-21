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
		<header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(../images/img_bg_1.jpg);">
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
									</s:iterator>
							</div>
						</div>
					</div>
			</div>
		</header>
  </body>
</html>
