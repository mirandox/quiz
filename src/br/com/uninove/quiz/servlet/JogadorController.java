package br.com.uninove.quiz.servlet;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.uninove.quiz.modelo.BancoDAO;
import br.com.uninove.quiz.modelo.Jogador;

@WebServlet(urlPatterns = "/novoJogador")
public class JogadorController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		BancoDAO banco = new BancoDAO();
		Jogador jogador = new Jogador();
		
		jogador.setNomeJogador(request.getParameter("nome"));
		
		try {
			banco.conectar();
			banco.cadastraJogador(jogador);
			banco.desconectar();
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(JogadorController.class.getName()).log(Level.SEVERE, null, ex);
			ex.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/teste.jsp");
		request.setAttribute("jogador", jogador.getNomeJogador());
		rd.forward(request, response);
	}
}
