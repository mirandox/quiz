package br.com.uninove.quiz.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Banco {

	private final String URL = "jdbc:mysql://127.0.0.1:3306/quiz";
	private final String USER = "root";
	private final String PASSWORD = "felipe";
	private Connection connection;
	private PreparedStatement statement;
	private ResultSet resultSet;
	
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
			String comando = "INSERT INTO jogador (`nm_jogador`)"
					+ " VALUES (?)";
			
			statement = connection.prepareStatement(comando);
			
			statement.setString(1, jogador.getNomeJogador());
			
			statement.execute();
			System.out.println("Jogador cadastrado com sucesso!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Falha ao inserir jogador!");
		}
	}
	
	public List<Questao> getQuestoes() {
		
		List<Questao> questoes = new ArrayList<>();
		
		try {
			String comando = "SELECT * FROM questao WHERE cd_pergunta = 1;";
			
			statement = connection.prepareStatement(comando);
			
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				Questao questao = new Questao();
				
				questao.setCodigoQuestao(resultSet.getInt("cd_questao"));
				questao.setCodigoPergunta(resultSet.getInt("cd_pergunta"));
				questao.setDescricaoPergunta(resultSet.getString("ds_pergunta"));
				questao.setCodigoResposta(resultSet.getInt("cd_resposta"));
				questao.setDescricaoResposta(resultSet.getString("ds_resposta"));
				questao.setTipoResposa(resultSet.getString("in_tipo_resposta"));
				
				questoes.add(questao);
			}
			System.out.println("Questões retornadas com sucesso!");
		} catch (SQLException e) {
			System.out.println("Falha ao buscar questões!");
			e.printStackTrace();
		} 
		return questoes;
	}
	
	public List<Pergunta> getPerguntas() {
		
		List<Pergunta> perguntas = new ArrayList<>();
		
		try {
			String comando = "SELECT * FROM pergunta;";
			
			statement = connection.prepareStatement(comando);
			
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				Pergunta pergunta = new Pergunta();
				
				pergunta.setCodigoPergunta(resultSet.getInt("cd_pergunta"));
				pergunta.setDescricaoPergunta(resultSet.getString("ds_pergunta"));
				
				perguntas.add(pergunta);
			}
			System.out.println("Perguntas retornadas com sucesso!");
		} catch(SQLException e) {
			System.out.println("Falha ao retornar perguntas!");
			e.printStackTrace();
		}
		return perguntas;
	}
	
	public List<Resposta> getRespostas() {
		
		List<Resposta> respostas = new ArrayList<>();
		
		try {
			String comando = "SELECT * FROM resposta;";
			
			statement = connection.prepareStatement(comando);
			
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				Resposta resposta = new Resposta();
				
				resposta.setCodigoResposta(resultSet.getInt("cd_resposta"));
				resposta.setDescricaoResposta(resultSet.getString("ds_resposta"));
				resposta.setCorretaResposta(resultSet.getString("in_tipo_resposta"));
				resposta.setNumeroPergunta(resultSet.getInt("nr_pergunta"));
				
				respostas.add(resposta);
			}
			System.out.println("Respostas retornadas com sucesso!");
		} catch(SQLException e) {
			System.out.println("Falha ao retornar respostas!");
			e.printStackTrace();
		}
		return respostas;
	}
 }
