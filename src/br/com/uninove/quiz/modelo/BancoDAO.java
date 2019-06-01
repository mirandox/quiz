package br.com.uninove.quiz.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BancoDAO {

	private final String URL = "jdbc:mysql://127.0.0.1:3306/quiz";
	private final String USER = "root";
	private final String PASSWORD = "felipe";
	private Connection connection;
	private PreparedStatement statement;
	
	public void conectar() throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("Conectado com sucesso!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Falha na conexão!");
		}
	}
	
	public void desconectar() {
		try {
			connection.close();
			System.out.println("Desconectado com sucesso!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Falha ao desconectar!");
		}
	}
	
	public void cadastraJogador(Jogador jogador) {
		try {
			String inserir = "INSERT INTO jogador (`nm_jogador`)"
					+ " VALUES (?)";
			
			statement.setString(1, jogador.getNomeJogador());
			
			statement = connection.prepareStatement(inserir);
			
			statement.execute();
			System.out.println("Jogador cadastrado com sucesso!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Falha ao inserir jogador!");
		}
	}
}
