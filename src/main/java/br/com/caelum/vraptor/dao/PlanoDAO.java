package br.com.caelum.vraptor.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import br.com.caelum.vraptor.model.PlanoAtuacao;

@RequestScoped
public class PlanoDAO extends DAO<PlanoAtuacao> {

	@Inject
	public PlanoDAO(EntityManager em) {
		super(em, PlanoAtuacao.class);
		// TODO Auto-generated constructor stub
	}
	
	@Deprecated public PlanoDAO() {this(null);}
}
