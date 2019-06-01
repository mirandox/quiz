<%@page import="br.com.uninove.quiz.modelo.Jogador"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bem vindo, 
        <% 
            Jogador jogador = new Jogador();
            out.print(request.getAttribute("jogador"));
        %>
        !</h1>
        
        <form>
            <div>
                <label>Pergunta 1</label>
                
            </div>
        </form>
    </body>
</html>