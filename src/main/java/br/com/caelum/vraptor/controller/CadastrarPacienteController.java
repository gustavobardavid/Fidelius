package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.model.Paciente;

@Path("cadastrarPaciente")
@Controller
public class CadastrarPacienteController {
	
	@Inject EntityManager em;
	@Inject Result result;
	
	@Get("")
	public void cadastrarPaciente() {
		
	}
	
	@Post("cadastrarpaciente")
	public void cadastrarPaciente(Paciente paciente){
		em.persist(paciente);
		result.redirectTo(DashboardController.class).dashboard();;
	}
}
