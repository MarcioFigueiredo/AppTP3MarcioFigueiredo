<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App TP3 Java WEB Marcio Figueiredo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container">
		
		<h2>Usuários</h2>
		
		<form action="/usuario/incluir" method="post">
		
			<div class="form-group">			
			<label>Informe o seu nome:</label>
			<input type="text" class="form-control" name="nome">
			</div>

			<div class="form-group">			
			<label>Informe o seu e-mail:</label>
			<input type="email" class="form-control" name="email">
			</div>
			
			<div class="form-group">			
			<label>Informe a sua senha:</label>
			<input type="password" class="form-control" name="senha">
			</div>
			
						
			<button type="submit">Gravar</button>	
		</form>
		
		<c:if test="${not empty usuarios}">
		 <p>Listagem de Usuários Cadastrados.</p>            
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Nome:</th>
		        <th>E-mail:</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="u" items="${usuarios}">
		      <tr>
		        <td>${u.nome}</td>
		        <td>${u.email}</td>
		        <td><a href="/usuario/${u.id}/excluir"> Excluir</a></td>
		      </tr> 
		      </c:forEach>
		    </tbody>
		  </table>
		</c:if>
		
		<c:if test="${empty usuarios}">
			<p>Nenhum Usuário cadastrado!!!</p>
		</c:if>
	</div>

</body>
</html>