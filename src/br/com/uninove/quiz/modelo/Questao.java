package br.com.uninove.quiz.modelo;

import java.util.ArrayList;
import java.util.List;

public class Questao {

	private int codigoQuestao;
	private static List<Pergunta> perguntas = new ArrayList<>();
	private static List<Resposta> respostas = new ArrayList<>();
	
	static {
		Pergunta pergunta1 = new Pergunta();
		pergunta1.setDescricaoPergunta("1 - Em que ano o Palmeiras ganhou o último título brasileiro?");
		
		Pergunta pergunta2 = new Pergunta();
		pergunta2.setDescricaoPergunta("2 - Em que ano Dudu foi eleito o melhor jogador do campeonato brasileiro?");
		
		perguntas.add(pergunta1);
		perguntas.add(pergunta2);
		
		Resposta resposta1 = new Resposta();
		resposta1.setDescricaoResposta("A - 2018");
		resposta1.setCorretaResposta(true);
		
		Resposta resposta2 = new Resposta();
		resposta2.setDescricaoResposta("B - 2017");
		resposta2.setCorretaResposta(false);
		
		Resposta resposta3 = new Resposta();
		resposta3.setDescricaoResposta("C - 2016");
		resposta3.setCorretaResposta(false);
		
		Resposta resposta4 = new Resposta();
		resposta4.setDescricaoResposta("D - 2015");
		resposta4.setCorretaResposta(false);
		
		Resposta resposta5 = new Resposta();
		resposta5.setDescricaoResposta("E - 2014");
		resposta5.setCorretaResposta(false);
		
		respostas.add(resposta1);
		respostas.add(resposta2);
		respostas.add(resposta3);
		respostas.add(resposta4);
		respostas.add(resposta5);
	}
	
	public List<Pergunta> obterPerguntas() {
		return Questao.perguntas;
	}
	
	public List<Resposta> obterRespostas() {
		return Questao.respostas;
	}
	
	public int getCodigoQuestao() {
		return codigoQuestao;
	}
}
