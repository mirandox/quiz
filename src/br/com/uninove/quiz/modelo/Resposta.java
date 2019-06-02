package br.com.uninove.quiz.modelo;

public class Resposta {

	private int codigoResposta;
	private String descricaoResposta;
	private String corretaResposta;
	private int numeroPergunta;
	
	public int getCodigoResposta() {
		return codigoResposta;
	}
	
	public void setCodigoResposta(int codigoResposta) {
		this.codigoResposta = codigoResposta;
	}
	
	public String getDescricaoResposta() {
		return descricaoResposta;
	}
	
	public void setDescricaoResposta(String descricaoResposta) {
		this.descricaoResposta = descricaoResposta;
	}
	
	public String getCorretaResposta() {
		return corretaResposta;
	}
	
	public void setCorretaResposta(String corretaResposta) {
		this.corretaResposta = corretaResposta;
	}

	public int getNumeroPergunta() {
		return numeroPergunta;
	}

	public void setNumeroPergunta(int numeroPergunta) {
		this.numeroPergunta = numeroPergunta;
	}
}