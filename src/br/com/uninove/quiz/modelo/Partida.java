package br.com.uninove.quiz.modelo;

public class Partida {

	private int codigoPartida;
	private int codigoQuestao;
	private int numeroPontuacao;
	
	public int getCodigoPartida() {
		return codigoPartida;
	}
	
	public void setCodigoPartida(int codigoPartida) {
		this.codigoPartida = codigoPartida;
	}
	
	public int getCodigoQuestao() {
		return codigoQuestao;
	}
	
	public void setCodigoQuestao(int codigoQuestao) {
		this.codigoQuestao = codigoQuestao;
	}
	
	public int getNumeroPontuacao() {
		return numeroPontuacao;
	}
	
	public void setNumeroPontuacao(int numeroPontuacao) {
		this.numeroPontuacao = numeroPontuacao;
	}
}
