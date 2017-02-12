<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*,com.farmer.form.*,com.farmer.dao.*,com.farmer.util.*" %>
<!DOCTYPE HTML PUBLIC "-//SoftQuad//DTD HoTMetaL PRO 4.0::19971010::extensions to HTML 4.0//EN" "hmpro4.dtd">
<%@ page import="java.util.*,com.farmer.form.*,com.farmer.dao.*,com.farmer.util.*" %>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  <meta name="verify-v1" content="bGDK2jk+Vhn+Kk2NrZFue5EbYn1Fed4v/Ej+U2bg7wc=">
<script type="text/javascript" src="scripts/project.js"></script>

    <title>Agriculture Industry - Agricultural Products,Agricultural Product
    Manufacturers,Exporters,Suppliers,Importers</title>
    <meta name="Description" content="Agriculture Industry - Guide to the agriculture industry in India, providing listings of agri produce manufacturers, exporters, suppliers, importers, buy sell trade leads, agro business catalogs, EXIM policies, agro industry statistics, agriculture pricing policies and national seeds policy of India.">
    <meta name="Keywords" content="agriculture industry, agriculture product manufacturers, agro product exporters, agro industry guide, agro industry guide, indian agriculture industry agro industry directory, agro business catalogs, agro industry statistics, agriculture pricing policies, national seeds policy, agri industry india, agri product exporters, agro product suppliers, india agriculture, agricultural commodity exporters, agro product manufacturers and exporters, india">
    <link href="ABC/agrostyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="scripts/general.js"> </script>
<STYLE type=text/css>
.inpt {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
.tarea {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
INPUT {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
FONT {
	COLOR: #4f4d4d; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
}
.style1 {
	color: #9F0B05;
	font-weight: bold;
	font-size: 9px;
}
a:active {
	text-decoration: none;
}
.style2 {
	color: #9F0B05;
	font-weight: bold;
}
.style23 {font-size: 14px; font-weight: bold; color: #CC856A; }
.style24 {
	font-size: 24px;
	font-weight: bold;
}
.style25 {color: #663333}
.style26 {
	color: #753F81;
	font-weight: bold;
}
.style27 {
    font-size: 28px; font-weight: bold;
	color: #228B22;
	font-weight: bold;
}
</STYLE>
<script type="text/javascript" src="scripts/ts_picker.js"></script>
<script src="ABC/script.js" language="javascript"></script>
 </head>
  
 
  <form action="ansqry.do" name="ansqry" method="post"> 
     <center><strong><font color="orange" size="12"><u>The Posted Queries are</u></font></strong></center><br/><br/>
   <table align="center">  
     <%CoreList cl=new CoreList();
       QueryForm qr=null;
       int qid=Integer.parseInt(request.getParameter("queryid"));
       cl=new QueryDAO().getQueryByID(qid); 
       Enumeration em=cl.elements();
       while(em.hasMoreElements())
       {
         qr=(QueryForm)em.nextElement();
         System.out.println("+++++++++"+qr.getQuery());%>
        
        <tr> <td><font color="blue"><%=qr.getQueryid()%>.)</font></td><td><font color="blue"><%=qr.getQuery()%></font></td></tr>
        <span class="style23">Answer/Reply:</span><tr><textarea name="answer" rows="4" cols="20"></textarea></tr>
        <td><input type="hidden" name="qid" value="<%=qr.getQueryid() %>"/></td>
      <%}%>
         
     </table> 
      <center><input type="submit" value="Post Answer"></center>
      </form>
      

 </html>
