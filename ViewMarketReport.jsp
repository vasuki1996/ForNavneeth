<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*,com.farmer.form.*,com.farmer.dao.*,com.farmer.core.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewMarketDetails.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript">
function checkAll()
{
 var checkboxex = document.getElementsByName("check");
 for(var i=0;i<checkboxex.length;i++)
 {
 	 	checkboxex[i].checked=document.getElementById("checkall").checked;
 }
}
</script>
	<script type="text/javascript" src="scripts/ts_picker.js"></script>
  </head>
  
  <body>
   <form action="deletemarket.do" name="viewmarketdetails" method="post"> 
    <table align="center" border="1" bordercolor="green">
      <tr>
        <th><input type="checkbox" name="checkall" onclick="checkAll()"></th>
        <th>State</th>
        <th>District</th>
        <th>Market</th>
      </tr>  
      <%CoreList cl=new CoreList(); 
        cl=new MarketDetailsDAO().getMarkets();
        Enumeration em=cl.elements();
        String st=null,dt=null;
        while(em.hasMoreElements())
        {
         MarketForm mf=(MarketForm)em.nextElement();
         st=new State_infoDao().getStateNameByID(mf.getState_id());
         dt=new DistrictInfoDAO().getDistrictByID(mf.getDist_id());
      %>
      <tr>
        <td align="center"><input type="checkbox" name="check" value="<%=mf.getMarketid() %>"></td>
        <td><%=st %></td>
        <td><%=dt %></td>
        <td><a href="updatemarket.jsp?mid=<%=mf.getMarketid()%>"><%=mf.getMarket() %></a></td>
      </tr> 
      <%} %>
      </table>   
        <pre>                                             <input type="button" value="Add New" onclick="javascript:location.href='AddMarketDetails.jsp'"/><input type="submit" value="Delete"/></pre>
    </form>    
  </body>
</html>
