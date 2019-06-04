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
<body>

	<label>
		Bem vindo, <c:out value="${ jogador.nomeJogador }"/>!
    </label>

	<form action="/quiz/salvaQuestao" method="POST">
		<c:forEach var="pergunta" items="${ perguntas }">
			<fieldset id="${ pergunta.codigoPergunta }">
				<label> 
					<c:out value="${ pergunta.descricaoPergunta }"/>
				</label>
				<c:forEach var="resposta" items="${ respostas }">
					<c:if test = "${ pergunta.codigoPergunta == resposta.numeroPergunta }">
						<div class="custom-control custom-radio">
						 	<input type="radio" id="${ resposta.codigoResposta }" name="${ pergunta.codigoPergunta }" class="custom-control-input" value="${ resposta.codigoResposta }">
						 	<label class="custom-control-label" for="${ resposta.codigoResposta }"> 
						 		<c:out value="${ resposta.descricaoResposta }"/>
						 	</label>
					 	</div>
				 	</c:if>
			 	</c:forEach>
		 	</fieldset>
		</c:forEach>
		
		<button type="submit" class="btn btn-primary">Enviar</button>
	</form>
</body>
</html>