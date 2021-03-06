/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.dibrecommerce.model.cliente;

import java.util.Date;

/**
 *
 * @author luciano.lourenco
 */
public class Cliente {
  
  private int id;
  private String nome;
  private String sexo;
  private Date dt_nasc;
  private String cpf;
  private String rg;
  private String email;
  private String senha;
  private boolean newsletter;
  private boolean privacidade;
  private boolean status;

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }
  
  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getSexo() {
    return sexo;
  }

  public void setSexo(String sexo) {
    this.sexo = sexo;
  }

  public Date getDt_nasc() {
    return dt_nasc;
  }

  public void setDt_nasc(Date dt_nasc) {
    this.dt_nasc = dt_nasc;
  }

  public String getCpf() {
    return cpf;
  }

  public void setCpf(String cpf) {
    this.cpf = cpf;
  }

  public String getRg() {
    return rg;
  }

  public void setRg(String rg) {
    this.rg = rg;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getSenha() {
    return senha;
  }

  public void setSenha(String senha) {
    this.senha = senha;
  }

  public boolean isNewsletter() {
    return newsletter;
  }

  public void setNewsletter(boolean newsletter) {
    this.newsletter = newsletter;
  }

  public boolean isPrivacidade() {
    return privacidade;
  }

  public void setPrivacidade(boolean privacidade) {
    this.privacidade = privacidade;
  }

  public boolean isStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }
  
 
  
  
  
  
    
}
