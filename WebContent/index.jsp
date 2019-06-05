<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<h1 class="text-center">Bem vindo ao Quiz!</h1><br>
		<div class="row justify-content-center">
			<form action="/quiz/novoJogador" method="POST">
				<div class="form-group text-center font-weight-bold">
					<label for="inputNome"><h3>Nome do jogador</h3></label>
					<div class="row">
					
						<input type="text" name="nome" class="form-control-lg" id="inputNome" placeholder="Digite um nome" required/>
					</div>
				</div>
				<button type="submit" class="btn btn-primary btn-lg btn-block">Iniciar Quiz</button>
			</form>
		</div>
	</body>
</html>