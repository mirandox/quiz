package br.com.uninove.quiz.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.uninove.quiz.banco.Banco;
import br.com.uninove.quiz.modelo.Jogador;
import br.com.uninove.quiz.modelo.Questao;
import br.com.uninove.quiz.modelo.Ranking;

@WebServlet("/salvaQuestao")
public class QuestaoController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Questao questao = new Questao();
		Jogador jogador = new Jogador();
		Banco banco = new Banco();
		
		try {
			banco.conectar();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		for(int i = 1; i <= 10; i++) {
			String codigoResposta = request.getParameter(String.valueOf(i));
			
			jogador.setCodigoJogador(Integer.parseInt(request.getParameter("jogador")));
			
			questao.setCodigoPergunta(i);
			questao.setCodigoResposta(Integer.parseInt(codigoResposta));
			questao.setCodigoJogador(jogador.getCodigoJogador());
			
			banco.salvaQuestao(questao);
		}
		
		List<Ranking> listaRanking = banco.getRanking();
		
		banco.desconectar();
		
		request.setAttribute("listaRanking", listaRanking);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/ranking.jsp");
		requestDispatcher.forward(request, response);
	}
}
