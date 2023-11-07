package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.Validator;

@Path("cadastrarUsuario")
@Controller
public class CadastrarUsuarioController {
	@Inject Validator validator;
	@Inject EntityManager em;
	@Inject Result result;
	@Inject UsuarioDAO dao;	
	@Get("")
	public void cadastrarUsuario() {
		
	}
	
	@Post("salvausuario")
	public void salvarUsuario(@Valid Usuario usuario) {
		 // Valida o modelo Usuario e, em caso de erro, redireciona 
	    validator.onErrorRedirectTo(this).cadastrarUsuario();
	    
	    dao.save(usuario);
	    
	    // Se tudo ocorrer bem, redireciona para a tela de login
	    result.redirectTo(LoginController.class).login();
	}
}
