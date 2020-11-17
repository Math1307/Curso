package br.com.projetoweb.dao;

import java.sql.*;
import java.util.ArrayList;

import br.com.projetoweb.beans.*;
import br.com.projetoweb.cnn.ConnectionFactory;

public class PessoaDAO {
	
	public static ArrayList<Pessoa> listaPessoas() {
		Connection cnn = ConnectionFactory.getConnection();
		
		String query = "SELECT * FROM PESSOA;";
		
		try {
			PreparedStatement pStmt = cnn.prepareStatement(query);
			ResultSet resulSet = pStmt.executeQuery();
			
			ArrayList<Pessoa> listaPessoas = new ArrayList<Pessoa>();
			while(resulSet.next()) {
				Pessoa pessoa = new Pessoa(resulSet.getInt("ID"), resulSet.getString("NOME"), resulSet.getDate("DT_NASCIMENTO") + "", resulSet.getString("SEXO"));
				
				listaPessoas.add(pessoa);
			}
			
			return listaPessoas;
 		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void adicionarPessoa(long id, String nome, String sexo) {
		Connection cnn = ConnectionFactory.getConnection();
		String query = "INSERT INTO PESSOA(ID, NOME, DT_NASCIMENTO, SEXO) VALUES(" + id + ", '" + nome + "' , '2003-01-23', '" + sexo + "');";
		
		try {
			PreparedStatement pStmt = cnn.prepareStatement(query);
			pStmt.executeUpdate();
 		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
