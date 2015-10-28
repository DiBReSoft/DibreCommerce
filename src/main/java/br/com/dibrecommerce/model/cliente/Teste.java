/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.dibrecommerce.model.cliente;

/**
 *
 * @author luciano.lourenco
 */
public class Teste {

  public static void main(String[] args) {

    ClienteDAO cliDAO = new ClienteDAO();
    Cliente cli = new Cliente();

    cli.setNome("Teste100");
    cli.setSexo("F");
    java.util.Date data = new java.util.Date();
    java.sql.Date dataSql = new java.sql.Date(data.getTime());
    cli.setSenha("222222");
    cli.setDt_nasc(dataSql);
    cli.setNewsletter(false);
    
    
    cliDAO.editarCliente(cli,16);

  }

}
