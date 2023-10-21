package br.com.caelum.vraptor.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
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
	
	@OneToOne
	@JoinColumn(name = "plano_id")
	private PlanoAtuacao planoAtuacao;
	
	// Anotando a coleção que representa o relacionamento um para muitos
    @OneToMany(mappedBy = "paciente", cascade = CascadeType.ALL)
    private List<Medicamento> medicamentos = new ArrayList<>();
	
	public PlanoAtuacao getPlanoAtuacao() {
		return planoAtuacao;
	}
	public void setPlanoAtuacao(PlanoAtuacao planoAtuacao) {
		this.planoAtuacao = planoAtuacao;
	}
	public List<Medicamento> getMedicamentos() {
		return medicamentos;
	}
	public void setMedicamentos(ArrayList<Medicamento> medicamentos) {
		this.medicamentos = medicamentos;
	}
	public void addMedicamento(Medicamento medicamento) {
		this.medicamentos.add(medicamento);
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getNumeroTelefone() {
		return numeroTelefone;
	}
	public void setNumeroTelefone(String numeroTelefone) {
		this.numeroTelefone = numeroTelefone;
	}
	public String getGrupoSanguineo() {
		return grupoSanguineo;
	}
	public void setGrupoSanguineo(String grupoSanguineo) {
		this.grupoSanguineo = grupoSanguineo;
	}
	
	public String getResponsavelLegal() {
		return responsavelLegal;
	}
	public void setResponsavelLegal(String responsavelLegal) {
		this.responsavelLegal = responsavelLegal;
	}
	
	public boolean isAlcançado() {
		return alcançado;
	}
	public void setAlcançado(boolean alcançado) {
		this.alcançado = alcançado;
	}

	public String getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getComorbidade() {
		return comorbidade;
	}
	public void setComorbidade(String comorbidade) {
		this.comorbidade = comorbidade;
	}
	
}