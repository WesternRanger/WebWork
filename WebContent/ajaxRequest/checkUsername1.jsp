<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="conn.conn"%>
<%@page import="java.sql.*"%>
<%@page import="UserDao.*"%>
	<%
	ResultSet rs=UserDao.MyUserDao.form1(request);
	if(rs.next()){
		out.println("0");
	}
	
	else{
		out.println("1");
	}
	%>
