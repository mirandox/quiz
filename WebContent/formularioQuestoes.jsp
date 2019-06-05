<%@page import="br.com.uninove.quiz.modelo.Jogador"%>
<%@page import="br.com.uninove.quiz.servlet.JogadorController"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>Quiz</title>
		<link 
			rel="stylesheet" 
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
			crossorigin="anonymous"
		>
</head>
<body class="container">
<br>
	<h2 class="text-center">Bem vindo, <c:out value="${ jogador.nomeJogador }"/>!</h2>
<br>
	<form action="/quiz/salvaQuestao" method="POST">
	<input value="${ jogador.codigoJogador }" name="jogador" style="display: none">
		
			<c:forEach var="pergunta" items="${ perguntas }">
			<div class="card" style="width: 69rem;">
				<fieldset id="${ pergunta.codigoPergunta }">
					<div class="card-header">
						<label class="font-weight-bold"> 
							<c:out value="${ pergunta.descricaoPergunta }"/>
						</label>
					</div>
					<div class="list-group list-group-flush">
						<c:forEach var="resposta" items="${ respostas }">
							<c:if test = "${ pergunta.codigoPergunta == resposta.numeroPergunta }">
								<div class="list-group-item custom-control custom-radio" style="padding-left: 40px">
								 	<input type="radio" id="${ resposta.codigoResposta }" name="${ pergunta.codigoPergunta }" class="custom-control-input" value="${ resposta.codigoResposta }">
								 	<label class="custom-control-label" for="${ resposta.codigoResposta }"> 
								 		<c:out value="${ resposta.descricaoResposta }"/>
								 	</label>
							 	</div>
						 	</c:if>
					 	</c:forEach>
				 	</div>
			 	</fieldset>
			 	</div>
			 	<br>
			</c:forEach>
		<button type="submit" class="btn btn-primary btn-lg btn-block">Enviar</button><br><br>
	</form>
</body>
</html>