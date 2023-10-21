package br.com.caelum.vraptor.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import br.com.caelum.vraptor.model.Medicamento;

@RequestScoped
public class MedicamentoDAO extends DAO<Medicamento> {
	@Inject
	public MedicamentoDAO(EntityManager em) {
		super(em, Medicamento.class);
		// TODO Auto-generated constructor stub
	}
	
	@Deprecated public MedicamentoDAO() {this(null);}
}
