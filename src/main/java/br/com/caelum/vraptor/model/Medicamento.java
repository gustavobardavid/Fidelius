package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Medicamento extends Model{
	
	private String nome;
	
	private String subsAtiva;
	
	private String posologia;
	
	private String desde;
	
	// Definindo o relacionamento muitos para um com a entidade Paciente
	@ManyToOne
	@JoinColumn(name = "paciente_id")
	private Paciente paciente;
}
