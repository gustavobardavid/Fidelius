package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;
import java.util.List;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Paciente;

import org.hibernate.Session;
import org.hibernate.query.Query;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;

@Path("pacientes")
@Controller
public class PacientesController {
	@Inject Result result;
	
	
	
	@Get("")
	public void pacientes() {
		
		PacienteTestDAO dao = new PacienteTestDAO();
		List<Paciente> pacientes = dao.findAll();
		result.include("pacientes",pacientes);
		 
	}
}
