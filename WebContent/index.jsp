<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Quiz</title>
		<link 
			rel="stylesheet" 
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
			crossorigin="anonymous">
	</head>
	<body class="container">
		<br/>
		<div class="center-form">
			<form action="/quiz/novoJogador" method="POST">
				<div class="form-group">
					<label for="inputNome">Nome do jogador</label>
					<input type="text" name="nome" class="form-control" placeholder="Digite um nome"/>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</body>
</html>