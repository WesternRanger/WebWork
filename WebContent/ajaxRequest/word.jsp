<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*"%>
        <%@page import="UserDao.MyUserDao" %>
<%
		int rs=MyUserDao.input_mine(request);
		if(rs!=0){
			out.println("1");
		}
		else{
			out.println("0");
		}
%>
    