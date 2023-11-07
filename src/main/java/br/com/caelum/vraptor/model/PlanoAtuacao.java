package br.com.caelum.vraptor.model;

import javax.persistence.Entity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class PlanoAtuacao extends Model{
	//plano de atuação
	private String objetivo;
		
	private String prioridade;
		
	private String alergias;
	
	private String historicoMedico;
	
	private String observacoesMedicas;
	
	private char Preocupa;
}
