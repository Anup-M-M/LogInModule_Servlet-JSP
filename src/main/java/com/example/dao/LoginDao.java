package com.example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

public class LoginDao {
	
	public boolean check(String username, String password) {
		
		String dbURL = "jdbc:mysql://localhost:3306/studyeasy";
		String dbUsername = "root";
		String dbPassword = "mysql1234";
		String driver = "com.mysql.cj.jdbc.Driver";
		String sql = "select * from login where username=? and password=?";
		
		
		try {
			
			Class.forName(driver);
			
			Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
			
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setString(1, username);
			stmt.setString(2, password);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
		return false;
	}

}
