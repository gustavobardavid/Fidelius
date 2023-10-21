package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Paciente;
import br.com.caelum.vraptor.model.PlanoAtuacao;

@Path("editarPaciente")
@Controller
public class EditarPacienteController {
	@Inject PacienteDAO dao;
	@Inject Result result;
	@Inject PacienteTestDAO daoTest;
	
	@Get("")
	public void editar(int id) {
		Paciente paciente = daoTest.findById(id);
		result.include("paciente", paciente);
	}
	
	@Post
	@Path("editarpaciente")
	public void editarPaciente(Paciente paciente){
		//Carregar o paciente existente do banco de dados com base no ID
        Paciente pacienteExistente = null;
        pacienteExistente = daoTest.findById(paciente.getId());
		 // Atualizar apenas os campos desejados
		pacienteExistente.getPlanoAtuacao().setPreocupa(paciente.getPlanoAtuacao().getPreocupa());
		pacienteExistente.getPlanoAtuacao().setObjetivo(paciente.getPlanoAtuacao().getObjetivo());
		pacienteExistente.getPlanoAtuacao().setPrioridade(paciente.getPlanoAtuacao().getPrioridade());
		pacienteExistente.getPlanoAtuacao().setObservacoesMedicas(paciente.getPlanoAtuacao().getObservacoesMedicas());
		pacienteExistente.getPlanoAtuacao().setHistoricoMedico(paciente.getPlanoAtuacao().getHistoricoMedico());
		pacienteExistente.getPlanoAtuacao().setAlergias(pacienteExistente.getPlanoAtuacao().getAlergias());
		pacienteExistente.setGrupoSanguineo(paciente.getGrupoSanguineo());
		
		//atualiza o model no banco
        dao.insertOrUpdate(pacienteExistente);
		
		result.redirectTo(SituaçãoController.class).situacao(paciente.getId());
	}
	
}
