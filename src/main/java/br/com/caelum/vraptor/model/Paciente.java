package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Paciente extends Model {
	
	
	
	@NotEmpty @Size(min= 6, max = 20)
	private String nome;
	
	@NotEmpty
	private String comorbidade;
	
	private String dataNascimento;
	
	private String Preocupa;
	
	
	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getPreocupa() {
		return Preocupa;
	}
	public void setPreocupa(String preocupa) {
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
