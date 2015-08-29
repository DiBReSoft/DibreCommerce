package br.com.dibrecommerce.model.hospede;

import br.com.dibrecommerce.model.pessoa.Pessoa;

/**
 *
 * @author Thiago, udimberto.sjunior data: 04/04/2015, 25/05/2015 essa classe
 * tem como finalidade criar os atributos e metodos de hospede com herança de
 * pessoa
 */
public class Hospede extends Pessoa {

  private String nPassaporte;
  private String foto;
  private String nCartao;

  public String getnCartao() {
    return nCartao;
  }

  public void setnCartao(String nCartao) {
    this.nCartao = nCartao;
  }
}
