/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.dibrecommerce.model.cliente;

import br.com.dibrecommerce.persistencia.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author luciano
 */
public class ClienteDAO {

  public boolean cadastrarCliente(Cliente c) {
    System.out.println("data que vem do browser"+c.getDt_nasc());
    
    ConnectionFactory conexao = new ConnectionFactory();
    PreparedStatement stmt = null;
    c.setStatus(true); 
    String sql = "INSERT INTO APP.TB_CLIENTE (NM_CLIENTE, SEXO_CLIENTE, DT_NASC_CLIENTE, CPF_CLIENTE, RG_CLIENTE, EMAIL_CLIENTE, SENHA_CLIENTE, NEWSLETTER, PRIVACIDADE, STATUS, DT_CADASTRO) \n"
	    + "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";

    try {
      conexao.openConection();
      stmt = conexao.conn.prepareStatement(sql);
      stmt.setString(1, c.getNome());
      stmt.setString(2, c.getSexo());
      //O número 8440000000 é equivalente a um dia. Isso corrige temporariamente a falha na inserção de datas no sistema. Ass.Luciano
      java.sql.Date sqlDate = new java.sql.Date(c.getDt_nasc().getTime()+84400000);
      stmt.setDate(3,  sqlDate);
      stmt.setString(4, c.getCpf());
      stmt.setString(5, c.getRg());
      stmt.setString(6, c.getEmail());
      stmt.setString(7, c.getSenha());
      stmt.setBoolean(8, c.isNewsletter());
      stmt.setBoolean(9, c.isPrivacidade());
      stmt.setBoolean(10, c.isStatus());

      stmt.executeUpdate();

    } catch (SQLException ex) {
      Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
      return false;
    } finally {
      if (stmt != null) {
	try {
	  stmt.close();
	} catch (SQLException ex) {
	  Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
	}
      }
      if (conexao.conn != null) {
	try {
	  conexao.conn.close();
	} catch (SQLException ex) {
	  Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
	}
      }
    }
    return true;
  }
  
  public boolean inativarCliente(int id) {

        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        String query = "update APP.TB_CLIENTE set STATUS= false where ID_CLIENTE=?";
        
        try {
            conexao.openConection();
            stmt = conexao.conn.prepareStatement(query);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            System.out.println("Inativado com sucesso!");
            conexao.closeConection();
          
        } catch (SQLException ex) {
      Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
      return false;
    } finally {
      if (stmt != null) {
	try {
	  stmt.close();
	} catch (SQLException ex) {
	  Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
	}
      }
      if (conexao.conn != null) {
	try {
	  conexao.conn.close();
	} catch (SQLException ex) {
	  Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
	}
      }
    }
    return true;
  }
  
  public boolean editarCliente(Cliente c, int id) {

        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;

        String sql = "UPDATE TB_CLIENTE SET NM_CLIENTE = ?, SEXO_CLIENTE = ?, DT_NASC_CLIENTE = ?, "
                + "SENHA_CLIENTE=?, NEWSLETTER = ? \n"
                + "WHERE ID_CLIENTE = ? \n";

        try {
            conexao.openConection();
            stmt = conexao.conn.prepareStatement(sql);

            stmt.setString(1, c.getNome());
            stmt.setString(2, c.getSexo());
            //O número 8440000000 é equivalente a um dia. Isso corrige temporariamente a falha na inserção de datas no sistema.
            java.sql.Date sqlDate = new java.sql.Date(c.getDt_nasc().getTime()+84400000);
            stmt.setDate(3, sqlDate);
	    stmt.setString(4,c.getSenha());
            stmt.setBoolean(5, c.isNewsletter());
	    stmt.setInt(6,id);
            

            stmt.executeUpdate();
            System.out.println("Dados Alterados com sucesso!!!");

        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Erro ao alterar os dados");
            return false;
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conexao.conn != null) {
                try {
                    conexao.conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return true;
    }

}
