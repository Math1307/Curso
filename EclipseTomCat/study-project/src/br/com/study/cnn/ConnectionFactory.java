package br.com.study.cnn;

import java.sql.*;

public class ConnectionFactory {

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/agenda?useTimezone=true&serverTimezone=UTC";
			String user = "root";
			String pwd = "267589";
			
			Connection cnct = DriverManager.getConnection(url, user, pwd);
			
			return cnct;
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
}
