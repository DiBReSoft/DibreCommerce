package br.com.dibrecommerce.bean;

import br.com.dibrecommerce.model.cliente.Cliente;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;

/**
 *
 * @author luciano.lourenco
 */
@Named(value = "clienteBean")
@SessionScoped
public class ClienteBean implements Serializable {

  private Cliente cliente;

  public Cliente getCliente() {
    return cliente;
  }

  public void setCliente(Cliente cliente) {
    this.cliente = cliente;
  }
  
  public ClienteBean() {
    cliente = new Cliente();
  }
  
  /* INCOMPLETO - ERRADO */
  public void cadastrar() {
    
  }
  
}
