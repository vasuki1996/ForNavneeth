<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.farmer.core.util.*,com.farmer.dao.*,java.util.*,com.farmer.form.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Fert_View.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="wheat">
  <table border=3 width="600" columnspace=4>
  <tr><td><b>Title</b></td><td><b>Description</b></td><td><b>Schedule</b></td><td><b>Status</b></td></tr>
  <%
     TrainingDao td=new TrainingDao();
  
   %>
  </table>
   </body>
</html>
