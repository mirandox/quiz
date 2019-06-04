package br.com.uninove.quiz.servlet;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.uninove.quiz.banco.Banco;
import br.com.uninove.quiz.modelo.Jogador;
import br.com.uninove.quiz.modelo.Pergunta;
import br.com.uninove.quiz.modelo.Resposta;

@WebServlet(urlPatterns = "/novoJogador")
public class JogadorController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Banco banco = new Banco();
		Jogador jogador = new Jogador();
		
		jogador.setNomeJogador(request.getParameter("nome"));
		
		try {
			banco.conectar();
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(JogadorController.class.getName()).log(Level.SEVERE, null, ex);
			ex.printStackTrace();
		}
		
		banco.cadastraJogador(jogador);
		
		List<Pergunta> perguntas = banco.getPerguntas();
		List<Resposta> respostas = banco.getRespostas();
		
		banco.desconectar();
		
		request.setAttribute("jogador", jogador);
		request.setAttribute("perguntas", perguntas);
		request.setAttribute("respostas", respostas);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/formularioQuestoes.jsp");
		requestDispatcher.forward(request, response);
	}
}
