package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.model.Paciente;

@Path("paciente")
@Controller
public class PacienteController {
	
	@Get("")
	public void paciente() {
		
	}
	
	@Post("cadastrarpaciente")
	public void cadastrarPaciente(Paciente paciente){
		System.out.println(paciente.getNome());
		
	}
}
