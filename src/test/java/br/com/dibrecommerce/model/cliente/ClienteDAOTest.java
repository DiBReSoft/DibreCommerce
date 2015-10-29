/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.dibrecommerce.model.cliente;

import java.util.Date;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author luciano
 */
public class ClienteDAOTest {
  
  public ClienteDAOTest() {
  }
  
  @BeforeClass
  public static void setUpClass() {
  }
  
  @AfterClass
  public static void tearDownClass() {
  }
  
  @Before
  public void setUp() {
  }
  
  @After
  public void tearDown() {
  }

  /**
   * Test of cadastrarCliente method, of class ClienteDAO.
   */
  @org.junit.Test
  public void testCadastrarCliente() {
    System.out.println("cadastrarCliente");
    Cliente c = new Cliente();
    ClienteDAO instance = new ClienteDAO();
    
    c.setNome("Tester");
    c.setSexo("T");
    Date data = new Date();
    c.setDt_nasc(data);
    c.setCpf("111.111.111-11");
    c.setRg("11.111.111-1");
    c.setEmail("teste@sistema.com.br");
    c.setSenha("123456");
    c.setNewsletter(true);
    c.setPrivacidade(true);
    
    boolean expResult = true;
    boolean result = instance.cadastrarCliente(c);
   
    assertEquals(expResult, result);
    
  }

  /**
   * Test of inativarCliente method, of class ClienteDAO.
   */
  @org.junit.Test
  public void testInativarCliente() {
    System.out.println("inativarCliente");
    int id = 0;
    ClienteDAO instance = new ClienteDAO();
    boolean expResult = false;
    boolean result = instance.inativarCliente(id);
    assertEquals(expResult, result);
    // TODO review the generated test code and remove the default call to fail.
    fail("The test case is a prototype.");
  }

  /**
   * Test of editarCliente method, of class ClienteDAO.
   */
  @org.junit.Test
  public void testEditarCliente() {
    System.out.println("editarCliente");
    Cliente cli = new Cliente();
    int id = 1;
    ClienteDAO instance = new ClienteDAO();
   
    cli.setNome("Teste100");
    cli.setSexo("F");
    java.util.Date data = new java.util.Date();
    java.sql.Date dataSql = new java.sql.Date(data.getTime());
    cli.setSenha("222222");
    cli.setDt_nasc(dataSql);
    cli.setNewsletter(false);
        
    boolean expResult = true;
    boolean result = instance.editarCliente(cli, id);
    assertEquals(expResult, result);
    
  }
  
}
