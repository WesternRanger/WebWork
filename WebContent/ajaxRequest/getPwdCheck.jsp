<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String password=request.getParameter("password");
	if(password.length()>=1&&password.length()<6){
		out.println("-1");
	}
	if(password.length()>=6&&password.length()<9){
		out.println("0");
	}
	if(password.length()>=9&&password.length()<12){
		out.println("1");
	}
	if(password.length()>=12&&password.length()<17){
		out.println("2");
	}
	if(password.length()>=17){
		out.println("3");
	}
%>
    