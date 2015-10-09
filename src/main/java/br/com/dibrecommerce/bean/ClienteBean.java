package br.com.dibrecommerce.bean;

import br.com.dibrecommerce.model.cliente.Cliente;
import br.com.dibrecommerce.model.cliente.ClienteDAO;
import javax.inject.Named;
import java.io.Serializable;
import javax.enterprise.context.RequestScoped;


/**
 *
 * @author luciano.lourenco
 */
@Named(value = "clienteBean")
@RequestScoped
public class ClienteBean implements Serializable {

  private Cliente cliente;
  private ClienteDAO clienteDAO;

  
  
  public ClienteBean() {
    cliente = new Cliente();
    clienteDAO = new ClienteDAO();
  }
  
  
  public Cliente getCliente() {
    return cliente;
  }

  public void setCliente(Cliente cliente) {
    this.cliente = cliente;
  }
  
  
  
  /* INCOMPLETO - ERRADO */
  public void cadastrar() {
    
    clienteDAO.cadastrarCliente(cliente);
    
  }
  
}
