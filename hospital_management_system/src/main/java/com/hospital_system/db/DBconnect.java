package com.hospital_system.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static Connection conn;
	
	public static Connection getConn() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");  //load the driver
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_system","root","Aailuvbaba@123");  //get the connection
			
		}
		catch(Exception e) {
			e.printStackTrace();		
		}
		
		return conn;
	}

}
