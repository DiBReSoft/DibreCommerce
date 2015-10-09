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
  
  
  
  
  public int cadastrarCliente (Cliente cli){
    ConnectionFactory conexao = new ConnectionFactory();
    PreparedStatement stmt = null;
    String sql = "INSERT INTO APP.TB_CLIENTE (NM_CLIENTE, SEXO_CLIENTE, DT_NASC_CLIENTE, CPF_CLIENTE, RG_CLIENTE, EMAIL_CLIENTE, SENHA_CLIENTE, NEWSLETTER, PRIVACIDADE, DT_CADASTRO) \n" +
"	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)";
    
    try {
      conexao.openConection();
      stmt = conexao.conn.prepareStatement(sql);
      
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
      
      stmt.executeUpdate();
      
    } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
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
        return 1;
  } 
  
}
