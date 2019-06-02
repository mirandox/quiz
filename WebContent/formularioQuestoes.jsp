<%@page import="br.com.uninove.quiz.modelo.Jogador"%>
<%@page import="br.com.uninove.quiz.servlet.JogadorController"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
    
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

	<label>Bem vindo, 
        <% 
            Jogador jogador = new Jogador();
            out.print(request.getAttribute("jogador"));
        %>
    </label>

	<form>
		<fieldset id="group1">
			<c:forEach var="pergunta" items="${ perguntas }">
					<label> 
						<c:out value="${ pergunta.descricaoPergunta }"/>
					</label>
					
						<div class="custom-control custom-radio">
						<c:forEach var="resposta" items="${ respostas }">
						 	<input type="radio" id="customRadio1" name="group1" class="custom-control-input">
						 	<label class="custom-control-label" for="customRadio1"> 
						 		<c:out value="${ resposta.descricaoResposta }"/>
						 	</label>
						 	</c:forEach>
						</div>
					
			</c:forEach>
		</fieldset>
	</form>
</body>
</html>