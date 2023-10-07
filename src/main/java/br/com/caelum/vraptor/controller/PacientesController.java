package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;
import java.util.List;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.model.Paciente;

import org.hibernate.Session;
import org.hibernate.query.Query;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;

@Path("pacientes")
@Controller
public class PacientesController {
	@Inject Result result;
	@Inject PacienteTestDAO daoTest;
	@Inject PacienteDAO dao;
	
	
	@Get("")
	public void pacientes() {
		
		PacienteTestDAO dao = new PacienteTestDAO();
		List<Paciente> pacientes = dao.findAll();
		result.include("pacientes",pacientes);
		 
	}
	
	@Get
	@Path("deletarpaciente")
	public void deletarPaciente(int id){
		//procura o paciente correspondente pelo id
		Paciente paciente = daoTest.findById(id);
		//deleta o paciente do banco. depois devo fazer soft delete!
		dao.delete(paciente);
		//redireciona para tela pacientes
		result.redirectTo(PacientesController.class).pacientes();
	}
	
	
}
