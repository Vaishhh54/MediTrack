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
			String mdid= request.getParameter("mdid");
			Connection con = ConnectDB.connect();
    		PreparedStatement p1 = con.prepareStatement("delete from medicine_tbl where mdid=?");
    		p1.setString(1,mdid);
    		int i = p1.executeUpdate();
    	if(i>0)
    	{
    		response.sendRedirect("ViewMedicine.jsp");
    	}
    	else
    	{
    		response.sendRedirect("medicalinterface.html");
    	}	
			
		}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>