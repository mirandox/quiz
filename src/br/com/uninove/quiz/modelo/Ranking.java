package br.com.uninove.quiz.modelo;

public class Ranking {

	private int codigoQuestao;
	private String nomeJogador;
	private int pontuacao;
	
	public int getCodigoQuestao() {
		return codigoQuestao;
	}
	
	public void setCodigoQuestao(int codigoQuestao) {
		this.codigoQuestao = codigoQuestao;
	}
	
	public String getNomeJogador() {
		return nomeJogador;
	}
	
	public void setNomeJogador(String nomeJogador) {
		this.nomeJogador = nomeJogador;
	}
	
	public int getPontuacao() {
		return pontuacao;
	}
	
	public void setPontuacao(int pontuacao) {
		this.pontuacao = pontuacao;
	}
}
