package br.com.caelum.vraptor.model;



import javax.persistence.Entity;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Paciente extends Model {
	
	@NotEmpty(message= "{paciente.nome.vazio}") 
	private String nome;
	
	@NotEmpty(message = "{paciente.comorbidade.vazio}")
	private String comorbidade;
	
	private String dataNascimento;

	private char Preocupa;
	
	private String objetivo;
	
	private String prioridade;
	
	private String medicamento;
	
	boolean alcançado = false;
		
	public String getMedicamento() {
		return medicamento;
	}
	public void setMedicamento(String medicamento) {
		this.medicamento = medicamento;
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
	public boolean isAlcançado() {
		return alcançado;
	}
	public void setAlcançado(boolean alcançado) {
		this.alcançado = alcançado;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	
	public char getPreocupa() {
		return Preocupa;
	}
	public void setPreocupa(char preocupa) {
		Preocupa = preocupa;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getComorbidade() {
		return comorbidade;
	}
	public void setComorbidade(String comorbidade) {
		this.comorbidade = comorbidade;
	}
	
}
