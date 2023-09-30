package br.com.caelum.vraptor.dao;


import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.model.Usuario;

@RequestScoped 
public class UsuarioDAO {
	
	protected EntityManager em;
	private Class<Usuario> persistedClass;
	

	public Usuario selectPorNome(Usuario usuario) {
		Usuario u = usuario;
		String nome = u.getNome();
		u = em.find(this.persistedClass, u.getNome());
		
		//Verifica se o Registro existe no banco
		if(u == null) {
			
			throw new RuntimeException(
					"O Registro que tentou buscar, não existe no Banco de Dados! classe do registro:" + persistedClass.getSimpleName() + 
					" Nome:" +nome);
		}
		
		return usuario; //Sera retornado o registro encontrado, ou nulo, ou se tiver inativo estoura a exeption
		
	}
}
