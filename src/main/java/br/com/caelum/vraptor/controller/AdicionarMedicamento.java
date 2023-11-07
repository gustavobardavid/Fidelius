package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Medicamento;
import br.com.caelum.vraptor.model.Paciente;

@Path("adicionarmedicamento")
@Controller
public class AdicionarMedicamento {
	@Inject PacienteTestDAO dao;
	@Inject PacienteDAO daoUp;
	@Inject Result result;
	@Get("")
	public void adicionar(int id) {
		result.include("id", id);
	}
	
	@Post("salvarmedicamento")
	public void salvarMedicamento(int id, Medicamento medicamento) {
		Paciente paciente = dao.findById(id);
		paciente.addMedicamento(medicamento);
		medicamento.setPaciente(paciente);
		daoUp.insertOrUpdate(paciente);
		result.redirectTo(MedicamentoController.class).medicamento(id);
	}
}
