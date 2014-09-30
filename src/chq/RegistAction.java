package chq;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.conn;

public class RegistAction {
	private String username;
	private String password;
	private String na;
	
	public String getNa() {
		return na;
	}
	public void setNa(String na) {
		this.na = na;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute(){
		String n=null;
		  String sql = "insert into qq (username,password) values (?,?)";
//		  String sql = "insert into qq values(?,?)";
		  Connection con = conn.conn1();
		  PreparedStatement ps;
		  if(username==null||username.length()==0||password==null||password.length()==0){
			  setNa("注册失败，请重新填写用户名密码");
			  return "error";
		  }	  
		 try {
			ps=con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			int i = ps.executeUpdate();
			if(i==0){
				setNa("注册失败，请重新填写用户名密码");
				return "error";
			}
			else{
				setNa("恭喜您成为成为qq家族的一员，现在就去登陆吧！！！");
				return "success";
			}
			
			} catch (SQLException e) {
				   e.printStackTrace();
				   return "error";
				  }
		  }
}
