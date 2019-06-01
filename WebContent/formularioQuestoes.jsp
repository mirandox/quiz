<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List,br.com.uninove.quiz.servlet.JogadorController"%>    
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

	<c:forEach items="${ jogadores }" var="jogador">
		<label> ${ jogador.nomeJogador }  </label>
	</c:forEach>

	<form>
			<fieldset id="group1">
				<label> A </label>
				<div class="custom-control custom-radio">
					 <input type="radio" id="customRadio1" name="group1" class="custom-control-input">
					 <label class="custom-control-label" for="customRadio1"> A </label>
				</div>
			</fieldset>
	</form>



</body>
</html>