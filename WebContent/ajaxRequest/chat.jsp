<%@page import="UserDao.MyUserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*"%>
<%
		int rs_int = MyUserDao.input_mine(request);
		if(rs_int!=0){
			out.println("1");
		}
		else{
			out.println("0");
		}
		ResultSet rs = MyUserDao.wordShow(request);
		while(rs.next()){
			out.println(rs.getString(1));
		}
%>
    