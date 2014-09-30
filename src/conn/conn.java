package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conn {
	public static Connection conn1()
	{
		Connection conn=null;
		String username="root";
		String password="root";
		String url="jdbc:mysql://localhost:3306/pm25";	
		try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(url, username, password);
				if(conn!=null)
				{
					System.out.println("连接成功........");
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	
		return conn;
	}
	
//	 public static void main(String[] args) {
//		  conn c=new conn();
//		  c.conn1();
//	}
//	 
}
