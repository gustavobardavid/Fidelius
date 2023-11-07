package br.com.caelum.vraptor.dao;

import java.util.List;


import javax.persistence.EntityManager;

import br.com.caelum.vraptor.connection.ConnectionFactory;
import br.com.caelum.vraptor.model.Medicamento;

public class MedicamentoDAO {
	
	public Medicamento save(Medicamento Medicamento) {
		EntityManager em = new ConnectionFactory().getConnection();
		
		try {
			em.getTransaction().begin();
			em.persist(Medicamento);
			em.getTransaction().commit();
			
		} catch (Exception e) {
			System.err.println(e);
		}finally {
			em.close();
		}
		return Medicamento;
	}
	
	public Medicamento findById(Integer Id) {
		
		EntityManager em = new ConnectionFactory().getConnection();
		Medicamento Medicamento = null;
		
		try {
			Medicamento = em.find(Medicamento.class, Id);
		} catch (Exception e) {
			System.err.println(e);
		}finally {
			em.close();
		}
		return Medicamento;
	}
	
	public List<Medicamento> findAll(){
		EntityManager em = new ConnectionFactory().getConnection();
		List<Medicamento> Medicamentos = null;
		try {
			Medicamentos = em.createQuery("from Medicamento p").getResultList();
		} catch (Exception e) {
			System.err.println(e);
		}finally{
			em.close();
		}
		return Medicamentos;
	}
	
	public Medicamento remove(Integer Id) {
		
		EntityManager em = new ConnectionFactory().getConnection();
		Medicamento Medicamento = null;
		try {
			Medicamento = em.find(Medicamento.class, Id );
			em.getTransaction().begin();
			em.remove(Medicamento);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.err.println(e);
			em.getTransaction().rollback();
		} finally {
			em.close();
		}
		return Medicamento;
	}
}
