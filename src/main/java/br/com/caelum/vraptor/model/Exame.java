package br.com.caelum.vraptor.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import lombok.*;

@Entity
@Getter
@Setter
public class Exame extends Model {
	private String data;
	
	private String HbA1c;
	
	private String Glicjj;
	
	private String ColT;

	private String TG;
	
	private String LDLc;
	
	private String HDLc;
	
	private String Ur;
	
	private String Cr;
	
	// Definindo o relacionamento muitos para um com a entidade Paciente
	@ManyToOne
	@JoinColumn(name = "paciente_id")
	private Paciente paciente;	
}
