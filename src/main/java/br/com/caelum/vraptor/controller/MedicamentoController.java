package br.com.caelum.vraptor.controller;
import javax.inject.Inject;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.MedicamentoDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Medicamento;
import br.com.caelum.vraptor.model.Paciente;

@Path("medicamento")
@Controller
public class MedicamentoController {
	@Inject Result result;
	@Inject PacienteTestDAO dao;
	@Inject MedicamentoDAO medDao;
	@Get("")
	public void medicamento(int id) {
		Paciente paciente = dao.findById(id);
		for (Medicamento medicamento: paciente.getMedicamentos()) {
			System.out.println(medicamento.getNome());
		}
		result.include("paciente",paciente);
	}
}
