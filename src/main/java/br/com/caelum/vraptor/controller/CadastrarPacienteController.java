package br.com.caelum.vraptor.controller;

import javax.inject.Inject;


import javax.persistence.EntityManager;
import javax.validation.Valid;

import com.sun.istack.NotNull;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.model.Paciente;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("cadastrarPaciente")
@Controller
public class CadastrarPacienteController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject PacienteDAO pacienteDao;
	@Inject Validator validator;
	
	@Get("")
	public void cadastrarPaciente() {
		
	}
	
	@Post("salvarpaciente")
	public void cadastrarPaciente(@Valid Paciente paciente){
		//em caso de erro, redireciona
		validator.onErrorRedirectTo(this).cadastrarPaciente();
		//salvar paciente no banco
		pacienteDao.insertOrUpdate(paciente);
		
		//direcionar para pacientes
		result.redirectTo(PacientesController.class).pacientes();
	}
}
