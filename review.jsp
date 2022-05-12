<%-- 
    Document   : review
    Created on : April 02, 2022, 10:25:26 AM
    Author     : Roshan sonje & Mahesh pawar
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String a=request.getParameter("mname");
String b=request.getParameter("rating");
String c=request.getParameter("review");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/mobilespecifications","root","");
Statement st=con.createStatement();

int i=st.executeUpdate("insert into userreview(mname,rating,review)values('"+a+"','"+b+"','"+c+"')");
out.println("Thank you for your precious review..");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
