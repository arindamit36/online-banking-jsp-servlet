package mycolls;


import java.sql.DriverManager;

import com.mysql.jdbc.Connection;



public class DAO {
	private static final String DB_HOST="localhost";
	private static final String DB_NAME="ibank";
	private static final int DB_PORT=3306;
	private static final String DB_USER="root";
	private static final String DB_PASSWORD="";
	
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e){
			System.out.println("MySQL JDBC Driver not found.");
		}
		try{
			con=(Connection) DriverManager.getConnection("jdbc:mysql://"+DB_HOST+":"+DB_PORT+"/"+DB_NAME,DB_USER,DB_PASSWORD);
		}catch(Exception e){
			System.out.println("MySQL Connection creation failed.");
		}
		return con;
	}
	
}