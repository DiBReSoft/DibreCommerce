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
  
  public ClienteBean() {
  }
  
  /* INCOMPLETO - ERRADO */
  public void cadastrar() {
    
  }
  
}
