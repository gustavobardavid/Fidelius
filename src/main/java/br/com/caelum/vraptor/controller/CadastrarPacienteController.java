package br.com.caelum.vraptor.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.inject.Inject;


import javax.persistence.EntityManager;
import javax.validation.Valid;

import com.sun.istack.NotNull;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.MedicamentoDAO;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PlanoDAO;
import br.com.caelum.vraptor.model.Medicamento;
import br.com.caelum.vraptor.model.Paciente;
import br.com.caelum.vraptor.model.PlanoAtuacao;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;

@Path("cadastrarPaciente")
@Controller
public class CadastrarPacienteController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject PacienteDAO pacienteDao;
	@Inject Validator validator;
	@Inject PlanoDAO planoDAO;
	@Inject MedicamentoDAO medDAO;
	
	@Get("")
	public void cadastrarPaciente() {
		
	}
	
	@Post("salvarpaciente")
	public void cadastrarPaciente(@Valid Paciente paciente, PlanoAtuacao planoAtuacao, Medicamento medicamento) throws UnsupportedEncodingException{
		
		//em caso de erro, redireciona
		validator.onErrorRedirectTo(this).cadastrarPaciente();
		//setando o plano ao paciente
		paciente.setPlanoAtuacao(planoAtuacao);
		//setando o arraylist
		ArrayList<Medicamento> medicamentos = new ArrayList<Medicamento>();
		paciente.setMedicamentos(medicamentos);
		//setando o paciente na classe medicamento
		medicamento.setPaciente(paciente);
		//setando o medicamento no arraylist do paciente
		paciente.addMedicamento(medicamento);
		//salvar plano no banco
		planoDAO.insertOrUpdate(planoAtuacao);
		//salvar medicamento no banco
		medDAO.insertOrUpdate(medicamento);
		//salvar paciente no banco
	    pacienteDao.insertOrUpdate(paciente);
		//direcionar para pacientes
		result.redirectTo(PacientesController.class).pacientes();
	}
}
