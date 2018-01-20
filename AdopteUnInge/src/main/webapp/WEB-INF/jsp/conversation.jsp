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
					<div class="row text-left">
				</s:if>
				<s:else>
					<div class="row text-right">
				</s:else>
				<div class="row">
					<div class="panel panel-info">
						<div class="panel-heading">
							<span class="panel-title">
								<strong><s:property value="#message.auteur.prenom"/></strong>
							</span>
						</div>
						<div class="panel-body">
							<div class="row">
								<s:if test="#message.auteur.id == utilisateur.id">
									<div class="col-md-9 col-lg-9 ">
										<table class="table table-user-information">
											<tr>
												<td><strong>Contenu : </strong><s:property value="#message.message"/></td>
												<td><strong>Date : </strong><s:property value="#message.dateText"/></td>
											</tr>
										</table>
									</div>
								</s:if>
								<s:else>
									<div class="col-md-9 col-lg-9 ">
										<table class="table table-user-information">
											<tr>
												<td><strong>Contenu : </strong><s:property value="#message.message"/></td>
												<td><strong>date : </strong><s:property value="#message.dateText"/></td>
											</tr>
										</table>
									</div>
								</s:else>
							</div>
						</div>
					</div>
				</div>
			</s:iterator>

			<div class="row text-center">
				<s:form action="ajouterMessage" theme="simple">
					<div class="errorMessage">
						<s:property  value="fieldErrors.get('messageEcrit').get(0)"  />
					</div>
					<s:textarea cssClass="form-control" name="messageEcrit" rows="5" placeholder="Saisissez votre message" />
					<s:hidden name="utilisateur.id" value="%{utilisateur.id}" />
					<s:submit key="submit" cssClass="btn btn-success boutton" value="Envoyer"/>
				</s:form>
			</div>
		</div>
