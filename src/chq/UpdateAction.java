package chq;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.conn;

public class UpdateAction {
	private String username;
	private String password;
	private String updna;
	
	
	public String getUpdna() {
		return updna;
	}
	public void setUpdna(String updna) {
		this.updna = updna;
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
		  String sql = "update qq set password=? where username=?";
		  Connection con = conn.conn1();
		  PreparedStatement ps;
		  if(password.length()==0){
			  setUpdna("����������������");
			  return "error";
		  }	  
		 try {
			ps=con.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2, username);
			int i = ps.executeUpdate();
			if(i==0){
				setUpdna("�޸�������ʧ��");
				return "error";
			}
			else{
				setUpdna("��������Ч�����ڿ���ʹ��������");
				return "success";
			}
			
			} catch (SQLException e) {
				   e.printStackTrace();
				   setUpdna("�޸�������ʧ��");
				   return "error";
				  }
		  }
}
