package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.model.PlanoAtuação;

@Path("situacao")
@Controller
public class SituaçãoController {
	
	@Inject EntityManager em;
	@Inject Result result;
	
	@Get("")
	public void situacao() {
			
	}
	
	@Post("salvarplano")
	public void salvarPlano(PlanoAtuação plano) {
		em.persist(plano);
		result.redirectTo(PacientesController.class).pacientes();
	}
}
