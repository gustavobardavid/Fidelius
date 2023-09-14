package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.PlanoAtuacaoDAO;
import br.com.caelum.vraptor.model.PlanoAtuação;

@Path("situacao")
@Controller
public class SituaçãoController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject PlanoAtuacaoDAO planoAtuacaoDao;
	
	@Get("")
	public void situacao() {
			
	}
	
	@Post("salvarplano")
	public void salvarPlano(PlanoAtuação plano) {
		//salvar plano no banco
		
		planoAtuacaoDao.insertOrUpdate(plano);
		
		//direciona para tela paciente
		result.redirectTo(PacientesController.class).pacientes();
	}
}
