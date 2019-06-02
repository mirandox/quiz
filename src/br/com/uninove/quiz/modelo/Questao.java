package br.com.uninove.quiz.modelo;

public class Questao {
	
	private int codigoQuestao;
	private int codigoPergunta;
	private String descricaoPergunta;
	private int codigoResposta;
	private String descricaoResposta;
	private String tipoResposa;
	
	public int getCodigoQuestao() {
		return codigoQuestao;
	}
	
	public void setCodigoQuestao(int codigoQuestao) {
		this.codigoQuestao = codigoQuestao;
	}
	
	public int getCodigoPergunta() {
		return codigoPergunta;
	}
	
	public void setCodigoPergunta(int codigoPergunta) {
		this.codigoPergunta = codigoPergunta;
	}
	
	public String getDescricaoPergunta() {
		return descricaoPergunta;
	}
	
	public void setDescricaoPergunta(String descricaoPergunta) {
		this.descricaoPergunta = descricaoPergunta;
	}
	
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
	
	public String getTipoResposa() {
		return tipoResposa;
	}
	
	public void setTipoResposa(String tipoResposa) {
		this.tipoResposa = tipoResposa;
	}

	@Override
	public String toString() {
		return "Questao [codigoQuestao=" + codigoQuestao + ", codigoPergunta=" + codigoPergunta + ", descricaoPergunta="
				+ descricaoPergunta + ", codigoResposta=" + codigoResposta + ", descricaoResposta=" + descricaoResposta
				+ ", tipoResposa=" + tipoResposa + "]";
	}
}
