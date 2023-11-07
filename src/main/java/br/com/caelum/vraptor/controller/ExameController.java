package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Paciente;

@Path("exame")
@Controller
public class ExameController {
	@Inject PacienteTestDAO dao;
	@Inject Result result;
	@Get("")
	public void exame(int id) {
		Paciente paciente = dao.findById(id);
		result.include("paciente",paciente);
	}
}
