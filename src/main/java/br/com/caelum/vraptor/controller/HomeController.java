package br.com.caelum.vraptor.controller;

import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Paciente;

@Path("home")
@Controller
public class HomeController {

	@Inject PacienteDAO dao;
	@Inject PacienteTestDAO daoTest;
	@Inject Result result;
	@Get("")
	public void home() {
		//busca os pacientes no banco
		List<Paciente> pacientes = daoTest.findAll();
		int contadorPacientes = 0;
		int contadorAlcançado = 0;
		//conta quantos pacientes existem com id ativo(softdelete)
		for (Paciente paciente : pacientes) {
			contadorPacientes++;
		}
		for (Paciente paciente : pacientes) {
			if(paciente.isAlcançado() == true) {
				contadorAlcançado++;
			}
		}
		
		
		result.include("contadorPacientes", contadorPacientes);
		result.include("contadorAlcançado", contadorAlcançado);
	}
}
