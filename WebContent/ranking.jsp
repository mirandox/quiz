<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ranking</title>
	<link 
		rel="stylesheet" 
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		crossorigin="anonymous"
	>
</head>
<body class="container"><br>
	<h2 class="text-center">Ranking de Jogadores</h2><br>
	<table class="table table-bordered">
	  <thead class="thead-dark">
	    <tr class="text-center">
	      <th scope="col">Jogador</th>
	      <th scope="col">Pontuação</th>
	    </tr>
	  </thead>
	  <tbody>
	  
	  <c:forEach var="jogador" items="${ listaRanking }">
	  
		    <tr class="text-center">
		      <td><c:out value="${ jogador.nomeJogador }"/></td>
		      <td><c:out value="${ jogador.pontuacao }"/></td>
		    </tr>
	    
	    </c:forEach>
	  </tbody>
	</table>
	<a href="/quiz/index.jsp" class="btn btn-primary btn-lg btn-block">Voltar ao Início</a>
</body>
</html>