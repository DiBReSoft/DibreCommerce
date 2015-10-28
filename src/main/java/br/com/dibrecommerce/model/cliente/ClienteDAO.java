/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.dibrecommerce.model.cliente;

import br.com.dibrecommerce.persistencia.ConnectionFactory;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author luciano
 */
public class ClienteDAO {

  public boolean cadastrarCliente(Cliente cli) {
    ConnectionFactory conexao = new ConnectionFactory();
    PreparedStatement stmt = null;
    String sql = "INSERT INTO APP.TB_CLIENTE (NM_CLIENTE, SEXO_CLIENTE, DT_NASC_CLIENTE, CPF_CLIENTE, RG_CLIENTE, EMAIL_CLIENTE, SENHA_CLIENTE, NEWSLETTER, PRIVACIDADE, STATUS, DT_CADASTRO) \n"
	    + "	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";

    try {
      conexao.openConection();
      stmt = conexao.conn.prepareStatement(sql);
      
      cli.setStatus(true);

      stmt.setString(1, cli.getNome());
      stmt.setString(2, cli.getSexo());
      java.sql.Date sqlDataNasc = new java.sql.Date(cli.getDt_nasc().getTime());
      stmt.setDate(3, sqlDataNasc);
      stmt.setString(4, cli.getCpf());
      stmt.setString(5, cli.getRg());
      stmt.setString(6, cli.getEmail());
      stmt.setString(7, cli.getSenha());
      stmt.setBoolean(8, cli.isNewsletter());
      stmt.setBoolean(9, cli.isPrivacidade());
      stmt.setBoolean(10, cli.isStatus());

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
  
//  public boolean editarCliente(Cliente c, int id) {
//
//        ConnectionFactory conexao = new ConnectionFactory();
//        PreparedStatement stmt = null;
//
//        String sql = "UPDATE TB_CLIENTE SET NM_CLIENTE = ?, SEXO_CLIENTE = ?, DT_NASC_CLIENTE = ?, "
//                + "SENHA_CLIENTE=?, NEWSLETTER = ? \n"
//                + "WHERE ID_CLIENTE = ? \n";
//
//        try {
//            conexao.openConection();
//            stmt = conexao.conn.prepareStatement(sql);
//
//            stmt.setString(1, c.getNome());
//            stmt.setString(2, c.getSexo());
//            java.sql.Date sqlDataNasc;
//	    SimpleDateFormat sdf = new SimpleDateFormat("28/11/1988");
//	    sqlDataNasc = sdf.parse('1988-11-28');
//            stmt.setDate(3, sqlDataNasc);
//	    stmt.setString(4,c.getSenha());
//            stmt.setBoolean(5, c.isNewsletter());
//	    stmt.setInt(6,id);
//            
//
//            stmt.executeUpdate();
//            System.out.println("Dados Alterados com sucesso!!!");
//
//        } catch (SQLException ex) {
//            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
//            System.out.println("Erro ao alterar os dados");
//            return false;
//        } finally {
//            if (stmt != null) {
//                try {
//                    stmt.close();
//                } catch (SQLException ex) {
//                    Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
//                }
//            }
//            if (conexao.conn != null) {
//                try {
//                    conexao.conn.close();
//                } catch (SQLException ex) {
//                    Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
//                }
//            }
//        }
//        return true;
//    }

}
