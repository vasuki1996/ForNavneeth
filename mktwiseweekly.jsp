<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*,com.farmer.form.*,com.farmer.dao.*,com.farmer.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mktwiseweekly.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="mktwisemonthly.jsp" name="mktwisemonthly" method="post" onsubmit="sub1()"> 
         <table align="center" border="1" bordercolor="pink">
         <tr><td>
         State:<select name="stateid" onchange="sub()">
         <option value="select">--SELECT--</option>
         <%CoreList cl=new CoreList();
		  DistrictInfoForm df=new DistrictInfoForm();
		  State_infoDao sd=new State_infoDao();
		  cl=sd.getStates();
		  Enumeration em=cl.elements();
		  while(em.hasMoreElements())
		  {
		   State_infoForm sf=(State_infoForm)em.nextElement();
		   df.setState_id(sf.getState_id());
		  %>
		  <option value="<%=df.getState_id() %>"><%=sf.getState() %></option>
		  <%} %>
         </select><br>
         </td></tr>
         <tr><td>
          Market:<select name="market">
          <%!int sid1; %>
         <%if(request.getParameter("state_id")!=null)
         {
             MarketDetailsDAO md=new MarketDetailsDAO();
             MarketForm mf=null;
             CoreList cl1=new CoreList();
             sid1=Integer.parseInt(request.getParameter("state_id"));
             cl1=md.getMarketsByState(Integer.parseInt(request.getParameter("state_id")));
             Enumeration em1=cl1.elements();
             while(em1.hasMoreElements())
             {
              mf=(MarketForm)em1.nextElement();
          %>
           <option value="<%=mf.getMarketid() %>"><%=mf.getMarket() %></option>
           <%}} %>         
          </select>
          </td></tr>
         </table>
       </form>   
  </body>
</html>
