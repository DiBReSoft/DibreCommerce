package br.com.dibrecommerce.bean;

import br.com.dibrecommerce.model.cliente.Cliente;
import br.com.dibrecommerce.model.cliente.ClienteDAO;
import java.io.IOException;
import javax.inject.Named;
import java.io.Serializable;
import javax.enterprise.context.RequestScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author luciano.lourenco
 */
@Named(value = "clienteBean")
@RequestScoped
public class ClienteBean implements Serializable {

  private Cliente cliente;
  private final ClienteDAO clienteDAO;

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

  public void cadastrar() throws IOException {

    boolean resultadoOperacao;
    resultadoOperacao = clienteDAO.cadastrarCliente(cliente);

    System.out.println("[RESULTADO] Cadastro de Cliente: " + resultadoOperacao);

    if (resultadoOperacao) {
      FacesContext.getCurrentInstance().getExternalContext().redirect("/DibreCommerce/sucesso-no-cadastro");
    } else {
      FacesContext.getCurrentInstance().getExternalContext().redirect("/DibreCommerce/falha-no-cadastro");
    }

  }

}
