package br.com.caelum.vraptor.model;

import javax.persistence.Entity;

@Entity
public class PlanoAtuacao extends Model{
	//plano de atuação
	private String objetivo;
		
	private String prioridade;
		
	private String alergias;
	
	private String historicoMedico;
	
	private String observacoesMedicas;
	
	private char Preocupa;

	public char getPreocupa() {
		return Preocupa;
	}

	public void setPreocupa(char preocupa) {
		Preocupa = preocupa;
	}

	
	public String getObjetivo() {
		return objetivo;
	}

	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}

	public String getPrioridade() {
		return prioridade;
	}

	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}

	public String getAlergias() {
		return alergias;
	}

	public void setAlergias(String alergias) {
		this.alergias = alergias;
	}

	public String getHistoricoMedico() {
		return historicoMedico;
	}

	public void setHistoricoMedico(String historicoMedico) {
		this.historicoMedico = historicoMedico;
	}

	public String getObservacoesMedicas() {
		return observacoesMedicas;
	}

	public void setObservacoesMedicas(String observacoesMedicas) {
		this.observacoesMedicas = observacoesMedicas;
	}
	
	
}
