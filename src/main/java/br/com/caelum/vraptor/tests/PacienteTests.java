package br.com.caelum.vraptor.tests;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.vraptor.connection.ConnectionFactory;
import br.com.caelum.vraptor.dao.DAO;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Paciente;

public class PacienteTests {
	
	
	
	
	public static void main(String[] args) {
		
		PacienteTestDAO dao = new PacienteTestDAO();
		Paciente p = new Paciente();
		p.setNome("Gustavo D");
		p.setComorbidade("Bronquite");
		dao.save(p);
	
	
	
	}
	
}
