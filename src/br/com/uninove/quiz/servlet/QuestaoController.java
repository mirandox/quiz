package br.com.uninove.quiz.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.uninove.quiz.banco.Banco;
import br.com.uninove.quiz.modelo.Questao;

@WebServlet("/salvaQuestao")
public class QuestaoController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Questao questao = new Questao();
		Banco banco = new Banco();
		
		try {
			banco.conectar();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		for(int i = 1; i <= 10; i++) {
			String codigoResposta = request.getParameter(String.valueOf(i));
			
			questao.setCodigoPergunta(i);
			questao.setCodigoResposta(Integer.parseInt(codigoResposta));
			questao.setCodigoJogador(1);
			
			banco.salvaQuestao(questao);
		}
		
		banco.desconectar();
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/QuestaoCadastrada.jsp");
		requestDispatcher.forward(request, response);
	}
}
