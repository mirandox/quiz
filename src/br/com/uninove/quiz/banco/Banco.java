package br.com.uninove.quiz.banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.uninove.quiz.modelo.Jogador;
import br.com.uninove.quiz.modelo.Pergunta;
import br.com.uninove.quiz.modelo.Questao;
import br.com.uninove.quiz.modelo.Ranking;
import br.com.uninove.quiz.modelo.Resposta;

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

	public void salvaQuestao(Questao questao) {
		try {
			String comando = "INSERT INTO questao (`cd_pergunta`, `cd_resposta`, `cd_jogador`)"
					+ " VALUES (?, ?, ?)";
			
			statement = connection.prepareStatement(comando);
			
			statement.setInt(1, questao.getCodigoPergunta());
			statement.setInt(2, questao.getCodigoResposta());
			statement.setInt(3, questao.getCodigoJogador());
			
			statement.execute();
			System.out.println("Questao cadastrada com sucesso!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Falha ao inserir questao!");
		}
	}
	
	public int getCodigoLastJogador() {
		
		int codigoJogador = 0;
		
		try {
			String comando = "SELECT * FROM jogador ORDER BY `cd_jogador` DESC LIMIT 1;";
			
			statement = connection.prepareStatement(comando);
			
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				Jogador jogador = new Jogador();
				jogador.setCodigoJogador(resultSet.getInt("cd_jogador"));
				
				codigoJogador = jogador.getCodigoJogador();
			}
			System.out.println("Último jogador retornado com sucesso!");
		} catch(SQLException e) {
			System.out.println("Não foi possível buscar o último jogador!");
			e.printStackTrace();
		}
		return codigoJogador;
	}
	
	public List<Ranking> getRanking() {
		
		List<Ranking> listaRanking = new ArrayList<>();
		
		try {
			String comando = "SELECT COUNT(*) AS pontuacao, j.nm_jogador AS nome\n" + 
							    "FROM questao AS q\n" + 
								"	INNER JOIN resposta AS r\n" + 
								"		ON r.cd_resposta = q.cd_resposta\n" + 
								"	INNER JOIN jogador AS j\n" + 
								"		ON j.cd_jogador = q.cd_jogador\n" + 
								"WHERE r.in_tipo_resposta = 'VERDADEIRO'\n" + 
								"GROUP BY q.cd_jogador "
								+ "ORDER BY pontuacao DESC;";
						
			statement = connection.prepareStatement(comando);
			
			resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				Ranking ranking = new Ranking();
				ranking.setNomeJogador(resultSet.getString("nome"));
				ranking.setPontuacao(resultSet.getInt("pontuacao"));
				
				listaRanking.add(ranking);
			}
			System.out.println("Ranking retornado com sucesso!");
		} catch(SQLException e) {
			System.out.println("Não foi possível buscar o ranking!");
			e.printStackTrace();
		}
		return listaRanking;
	}
 }
