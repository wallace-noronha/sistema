package br.com.peixotoinstalacoes.sistema.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cliente {

	@Id
	@GeneratedValue
	private Integer id;
	private String cpf;
	private String nome;
	
	
	/**
	 * @deprecated hibernate only
	 */
	public Cliente() {
		
	}

	
//	Getters and Setters
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}	
	
}
