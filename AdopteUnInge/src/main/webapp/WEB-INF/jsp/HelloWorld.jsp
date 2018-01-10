<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bienvenue</title>
</head>
<body>
    <center>
        <h3>Welcome <i>${sessionScope.user.nom}</i> <i>${sessionScope.user.prenom}</i>, you have logged in successfully!</h3>
        <h3><a href="../accueil/logout.action">Logout</a></h3>
    </center>
</body>
</html>
