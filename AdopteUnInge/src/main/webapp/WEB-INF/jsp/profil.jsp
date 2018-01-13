<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.dao.Database" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
    <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Adopte un Ingé - <%=Database.fetchUserDetailsByID(4).getPrenom()%> <%=Database.fetchUserDetailsByID(4).getNom()%></title>
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
    <header>
			<h1><%=Database.fetchUserDetailsByID(4).getPrenom()%> <%=Database.fetchUserDetailsByID(4).getNom()%></h1>
			<p><%=Database.fetchUserDetailsByID(4).getAge()%> ans</p>
			<p><%=Database.fetchUserDetailsByID(4).getVille()%>, <%=Database.fetchUserDetailsByID(4).getDepartement()%></p>
			<h3><a href="../accueil/Profil" onclick="likeClick()">Liker</a></h3>
			<h3><a href="../accueil/Profil">Signaler</a></h3>
			<h3><a href="#">Contacter</a></h3>
    </header>
  </body>
</html>
