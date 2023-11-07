	package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;


import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Medicamento;
import br.com.caelum.vraptor.model.Paciente;


@Path("situacao")
@Controller
public class SituaçãoController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject PacienteTestDAO dao;
	
	@Get("")
	public void situacao(int id) {
		Paciente paciente = dao.findById(id);
		result.include("paciente", paciente);
		
	}
	
	@Post("salvarplano")
	public void salvarPlano() {
		//salvar plano no banco
		
		//direciona para tela paciente
		result.redirectTo(PacientesController.class).pacientes();
		

	}
}
