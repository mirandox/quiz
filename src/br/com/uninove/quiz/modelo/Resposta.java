package br.com.uninove.quiz.modelo;

public class Resposta {

	private int codigoResposta;
	private String descricaoResposta;
	private boolean corretaResposta;
	
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
	
	public boolean isCorretaResposta() {
		return corretaResposta;
	}
	
	public void setCorretaResposta(boolean corretaResposta) {
		this.corretaResposta = corretaResposta;
	}
}
