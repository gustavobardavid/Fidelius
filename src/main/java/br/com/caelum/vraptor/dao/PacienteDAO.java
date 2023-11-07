package br.com.caelum.vraptor.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.model.Paciente;

@RequestScoped 
public class PacienteDAO extends DAO<Paciente> {
	
	@Inject
	public PacienteDAO(EntityManager em) {
		super(em, Paciente.class);
		// TODO Auto-generated constructor stub
	}
	
	@Deprecated public PacienteDAO() {this(null);}
}
