package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Medicamento extends Model{
	
	private String nome;
	
	private String subsAtiva;
	
	private String posologia;
	
	private String desde;
	
	// Definindo o relacionamento muitos para um com a entidade Paciente
	@ManyToOne
	@JoinColumn(name = "paciente_id")
	private Paciente paciente;
	 
	public String getDesde() {
		return desde;
	}

	public void setDesde(String desde) {
		this.desde = desde;
	}

    
	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSubsAtiva() {
		return subsAtiva;
	}

	public void setSubsAtiva(String subsAtiva) {
		this.subsAtiva = subsAtiva;
	}

	public String getPosologia() {
		return posologia;
	}

	public void setPosologia(String posologia) {
		this.posologia = posologia;
	}
	
	
}
