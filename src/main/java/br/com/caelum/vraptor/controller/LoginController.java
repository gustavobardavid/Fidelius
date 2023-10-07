package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PacienteDAO;
import br.com.caelum.vraptor.dao.UsuarioDAO;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.Validator;

@Path("login")
@Controller
public class LoginController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject UsuarioDAO usuarioDao;
	@Inject Validator validator;
	
	@Get("")
	public void login() {
			
	}
	@Post("validausuario")
	public void validarUsuario(Usuario usuario) {
		//validar usuario e em caso de erro redireciona pra mesma pagina
		
		Usuario usuarioDoBanco = usuarioDao.selectPorNome(usuario);

        if (usuarioDoBanco == null) {
            // Usuário não encontrado no banco de dados
            result.include("error", "Usuário não encontrado");
            result.redirectTo(this).login();
        } else if (!usuarioDoBanco.getSenha().equals(usuario.getSenha())) {
            // Senha incorreta
            result.include("error", "Senha incorreta");
            result.redirectTo(this).login();
        } else {
            // Usuário válido
            result.include("success", "Login bem-sucedido");
          //direcionar para pacientes
    		result.redirectTo(PacientesController.class).pacientes();
        }

     
  
		
		
		
	}
}
