<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App TP3 Java WEB Marcio Figueiredo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
		<h2>TP3</h2>
		
		<h3>${nome}</h3>
		<h4>${email}</h4>
		
		<p>Git: <a href="${Git}">link</a></p>
				
		<form action="/usuario" method="get">			
			<button type="submit">Novo Usuário</button>	
		</form>
	</div>

</body>
</html>