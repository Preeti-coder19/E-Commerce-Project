package NewPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBClass {

	
	static Connection conn=null;
	PreparedStatement pstmt = null;
	static ResultSet rs=null;
	static Statement statement;
	static String url=null, dburl=null;
	
	
	public DBClass() {
		dburl="com.mysql.jdbc.Driver";
		url="jdbc:mysql://localhost:3306/CustomerSurvey";
	}
	
	public String GetProjectName() {
		return "Online CustomerSurvey";
	}
	
	public static Connection GetConn() {
		try {
			dburl="com.mysql.jdbc.Driver";
			url="jdbc:mysql://localhost:3306/CustomerSurvey";
			Class.forName(dburl).newInstance();
			conn=DriverManager.getConnection(url, "root", "");	
		} catch (Exception e) {
			System.out.println("Exception : " +e.getMessage());
			conn=null;
		}		
		return conn;
	}
	
	public static boolean checkQuery(String sql) {
		boolean flag=false;
		try {
			statement = conn.createStatement();
			rs=statement.executeQuery(sql);
			flag=rs.next();
		} catch (Exception e) {
			System.out.println("Exception : " +e.getMessage());
		}
		return flag;
	}
	
	public static ResultSet executeQuery(String sql) {
		rs=null;
		try {
			dburl="com.mysql.jdbc.Driver";
			url="jdbc:mysql://localhost:3306/CustomerSurvey";
			Class.forName(dburl).newInstance();
			conn=DriverManager.getConnection(url, "root", "");
			statement = conn.createStatement();
			rs=statement.executeQuery(sql);
		} catch (Exception e) {
			System.out.println("Exception : " +e.getMessage());
		}
		return rs;
	}
	
	public static int executeUpdate(String sql) {
		int rowsAffected=0;
		try {
			dburl="com.mysql.jdbc.Driver";
			url="jdbc:mysql://localhost:3306/CustomerSurvey";
			Class.forName(dburl).newInstance();
			conn=DriverManager.getConnection(url, "root", "");
			statement = conn.createStatement();
			rowsAffected=statement.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println("Exception : " +e.getMessage());
		}
		return rowsAffected;
	}
	
}
