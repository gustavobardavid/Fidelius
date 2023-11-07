package br.com.caelum.vraptor.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Usuario extends Model{
	
	@NotEmpty(message = "Nome não pode ser vazio")
	private String nome;
	@NotEmpty(message = "Senha não pode estar vazia")
	private String senha;
}
