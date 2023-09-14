package br.com.caelum.vraptor.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.model.PlanoAtuação;

@RequestScoped
public class PlanoAtuacaoDAO extends DAO<PlanoAtuação> {

	@Inject
	public PlanoAtuacaoDAO(EntityManager em) {
		super(em, PlanoAtuação.class);
		// TODO Auto-generated constructor stub
	}
	
	@Deprecated public PlanoAtuacaoDAO() {this(null);}
}