package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PlanoAtuação extends Model {
	
	
	private String objetivo;
	private String dataInicio;
	private String prioridade;
	boolean alcançado = false;


	public String getObjetivo() {
		return objetivo;
	}
	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}
	public String getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}
	public String getPrioridade() {
		return prioridade;
	}
	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}
	public boolean isAlcançado() {
		return alcançado;
	}
	public void setAlcançado(boolean alcançado) {
		this.alcançado = alcançado;
	}
	
	
	
}
