package br.com.caelum.vraptor.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Paciente extends Model {
	
	//dados do paciente
	@NotEmpty(message= "{paciente.nome.vazio}") 
	private String nome;
	
	@NotEmpty(message = "{paciente.comorbidade.vazio}")
	private String comorbidade;
	
	private String dataNascimento;
	
	private String endereco;
	
	private String numeroTelefone;
	
	private String grupoSanguineo;
	
	private String responsavelLegal; // em caso de menor de idade
	
	boolean alcançado = false;
	
	@OneToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "plano_id")
	private PlanoAtuacao planoAtuacao;
	
	@OneToMany(mappedBy = "paciente", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<Medicamento> medicamentos = new HashSet<>();

	@OneToMany(mappedBy = "paciente", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<Exame> exames = new HashSet<>();
	
	public void addMedicamento(Medicamento medicamento) {
		this.medicamentos.add(medicamento);
	}
	public void addExame(Exame exame) {
		this.exames.add(exame);
	}
	public boolean isAlcançado() {
		return alcançado;
	}

}