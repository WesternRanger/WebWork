package UserDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import conn.conn;

public class MyUserDao {
	public static ResultSet form1(HttpServletRequest request){
		ResultSet rs=null;
		String sname=request.getParameter("username");
			try {
				String sql="select username from qq where username=?";
				conn d=new conn();
				Connection con=d.conn1();
				PreparedStatement pre=con.prepareStatement(sql);
				pre.setString(1,sname);
				rs=pre.executeQuery();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
		return rs;
	}
	public static ResultSet wordShow(HttpServletRequest request){
		ResultSet rs=null;
		try {
			String sql="select name from word";
			conn d=new conn();
			Connection con=d.conn1();
			PreparedStatement pre=con.prepareStatement(sql);
			rs=pre.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
		return rs;
	}
	public static int input_mine(HttpServletRequest request){
		int rs=0;
		String input_mine=request.getParameter("input_mine");
		try {
			String sql="insert into word (name) values(?)";
			conn d=new conn();
			Connection con=d.conn1();
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1,input_mine);
		    rs = pre.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;	
	}
}
