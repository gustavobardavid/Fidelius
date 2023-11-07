package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.PacienteTestDAO;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.model.Paciente;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.Validator;

@Path("login")
@Controller
public class LoginController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject UsuarioDAO usuarioDao;
	@Inject Validator validator;
	@Inject UsuarioDAO daoUsuario;
	@Inject PacienteDAO dao;
	@Inject PacienteTestDAO daoTest;
	
	@Get("")
	public void login() {
			
	}
	
	@Post("validausuario")
	public void validarUsuario(Usuario usuario) {
		List<Usuario> usuarios  = daoUsuario.findAll();
		boolean nomeEncontrado = false;
		Usuario usuarioEncontrado = null;
		for (Usuario usuarioBanco : usuarios) {
	        if (usuarioBanco.getNome().equals(usuario.getNome())) {
	        	nomeEncontrado = true;
		        usuarioEncontrado = usuarioBanco;
	            break; // Sai do loop assim que encontrar um CPF correspondente
	        }
	    }
		 if (nomeEncontrado) {
			result.redirectTo(HomeController.class).home();
		 } else {
			   result.redirectTo(this).login();
		 }
	}
	}

