<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Conversation</title>

    <link rel="stylesheet" href="../css/style.css">

      <s:iterator value="messages.messages" var="message">
        <s:if test="#message.auteur.id == utilisateur.id">
				</s:if>
				<s:else>
				</s:else>
				<div class="row">
						<span>
								<strong><s:property value="#message.auteur.prenom"/></strong>
							</span>
						</div>
							<div class="row">
								<s:if test="#message.auteur.id == utilisateur.id">
									<div class="col-md-9 col-lg-9 ">
										<table>
											<tr>
												<td><strong>Contenu : </strong><s:property value="#message.message"/></td>
												<td><strong>Date : </strong><s:property value="#message.dateText"/></td>
											</tr>
										</table>
									</div>
								</s:if>
								<s:else>
									<div class="col-md-9 col-lg-9 ">
										<table>
											<tr>
												<td><strong>Contenu : </strong><s:property value="#message.message"/></td>
												<td><strong>date : </strong><s:property value="#message.dateText"/></td>
											</tr>
										</table>
									</div>
								</s:else>
							</div>
			</s:iterator>

			<div class="row text-center">
				<s:form action="ajouterMessage" theme="simple">
						<s:property  value="fieldErrors.get('messageEcrit').get(0)"  />
					<s:textarea name="messageEcrit" rows="5" placeholder="Saisissez votre message" />
					<s:hidden name="utilisateur.id" value="%{utilisateur.id}" />
					<s:submit key="submit" cssClass="btn btn-2" value="Envoyer"/>
				</s:form>
			</div>
		</div>
