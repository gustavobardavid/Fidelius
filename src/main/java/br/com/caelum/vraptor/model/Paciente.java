package br.com.caelum.vraptor.model;



import javax.persistence.Entity;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Paciente extends Model {
	
	//dados do paciente
	@NotEmpty(message= "{paciente.nome.vazio}") 
	private String nome;
	
	@NotEmpty(message = "{paciente.comorbidade.vazio}")
	private String comorbidade;
	
	private String dataNascimento;

	private char Preocupa;
	
	private String endereco;
	
	private String numeroTelefone;
	
	private String grupoSanguineo;
	
	private String alergias;
	
	private String historicoMedico;
	
	private String observacoesMedicas;
	
	private String responsavelLegal;
	//plano de atuação
	private String objetivo;
	
	private String prioridade;
	
	private String medicamento;
	
	boolean alcançado = false;
		
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
	public String getAlergias() {
		return alergias;
	}
	public void setAlergias(String alergias) {
		this.alergias = alergias;
	}
	public String getHistoricoMedico() {
		return historicoMedico;
	}
	public void setHistoricoMedico(String historicoMedico) {
		this.historicoMedico = historicoMedico;
	}
	public String getObservacoesMedicas() {
		return observacoesMedicas;
	}
	public void setObservacoesMedicas(String observacoesMedicas) {
		this.observacoesMedicas = observacoesMedicas;
	}
	public String getResponsavelLegal() {
		return responsavelLegal;
	}
	public void setResponsavelLegal(String responsavelLegal) {
		this.responsavelLegal = responsavelLegal;
	}
	public String getMedicamento() {
		return medicamento;
	}
	public void setMedicamento(String medicamento) {
		this.medicamento = medicamento;
	}
	
	public String getObjetivo() {
		return objetivo;
	}
	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}
	
	public String getPrioridade() {
		return prioridade;
	}
	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
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
	
	public char getPreocupa() {
		return Preocupa;
	}
	public void setPreocupa(char preocupa) {
		Preocupa = preocupa;
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
