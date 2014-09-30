<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*"%>
        <%@page import="UserDao.MyUserDao"%>
        <%@page import="conn.conn" %>
<%
	try {
		ResultSet rs = MyUserDao.wordShow(request);
		while(rs.next()){
			out.println(rs.getString(1));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>
    