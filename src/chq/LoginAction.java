package chq;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import conn.conn;

public class LoginAction {
	private String username;
	private String password;
	private String logna;
	
	public String getLogna() {
		return logna;
	}
	public void setLogna(String logna) {
		this.logna = logna;
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
	  String sql = "select * from qq where username=? and password=?";
	  Connection con = conn.conn1();
	  PreparedStatement ps;
	  if(username == null||username.length()==0||password == null||password.length()==0){
	   setLogna("请填写用户名和密码");
	   return "error";
	  }
	 try {
		ps=con.prepareStatement(sql);
		ps.setString(1,username);
		ps.setString(2,password);
		ResultSet rs = ps.executeQuery();
		HttpServletRequest request = ServletActionContext.getRequest();  
		HttpSession session = request.getSession();
		if(rs.next()){
			Object n=rs.getString(1);
			session.setAttribute("ok", n);
			return "success";
		}
		else{
			setLogna("请填写用户名和密码");
			return "error";
		}
			   
		} catch (SQLException e) {
			   e.printStackTrace();
			   setLogna("请填写用户名和密码");
			   return "error";
			  }

	  }
}
