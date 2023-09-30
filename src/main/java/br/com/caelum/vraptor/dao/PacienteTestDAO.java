package br.com.caelum.vraptor.dao;

import java.util.List;


import javax.persistence.EntityManager;

import br.com.caelum.vraptor.connection.ConnectionFactory;
import br.com.caelum.vraptor.model.Paciente;

public class PacienteTestDAO {
	
	public Paciente save(Paciente paciente) {
		EntityManager em = new ConnectionFactory().getConnection();
		
		try {
			em.getTransaction().begin();
			em.persist(paciente);
			em.getTransaction().commit();
			
		} catch (Exception e) {
			System.err.println(e);
		}finally {
			em.close();
		}
		return paciente;
	}
	
	public Paciente findById(Integer Id) {
		
		EntityManager em = new ConnectionFactory().getConnection();
		Paciente paciente = null;
		
		try {
			paciente = em.find(Paciente.class, Id);
		} catch (Exception e) {
			System.err.println(e);
		}finally {
			em.close();
		}
		return paciente;
	}
	
	public List<Paciente> findAll(){
		EntityManager em = new ConnectionFactory().getConnection();
		List<Paciente> pacientes = null;
		try {
			pacientes = em.createQuery("from Paciente p").getResultList();
		} catch (Exception e) {
			System.err.println(e);
		}finally{
			em.close();
		}
		return pacientes;
	}
	
	public Paciente remove(Integer Id) {
		
		EntityManager em = new ConnectionFactory().getConnection();
		Paciente paciente = null;
		try {
			paciente = em.find(Paciente.class, Id );
			em.getTransaction().begin();
			em.remove(paciente);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.err.println(e);
			em.getTransaction().rollback();
		} finally {
			em.close();
		}
		return paciente;
	}
}
