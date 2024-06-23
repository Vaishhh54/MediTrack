<%@page import="com.vaishhh.ConnectDB.*" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%    
	    
		try
		{
			String mid= request.getParameter("mid");
			Connection con = ConnectDB.connect();
    		PreparedStatement p1 = con.prepareStatement("update medical_tbl set status=? where mid=?");
    		p1.setString(1,"Approve");
    		p1.setString(2,mid);
    		int i = p1.executeUpdate();
    	if(i>0)
    	{
    		response.sendRedirect("admininterface.html");
    	}
    	else
    	{
    		response.sendRedirect("admininterface.html");
    	}	
			
		}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>