<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.farmer.form.SoilTypeForm"%>
<%@page import="com.farmer.dao.SoilTypeDAO"%>
<%@page import="com.farmer.core.util.*"%>
<%@page import="com.farmer.form.CropForm"%>
<%@page import="com.farmer.dao.CropDAO"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML PUBLIC "-//SoftQuad//DTD HoTMetaL PRO 4.0::19971010::extensions to HTML 4.0//EN" "hmpro4.dtd">
 
<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  <meta name="verify-v1" content="bGDK2jk+Vhn+Kk2NrZFue5EbYn1Fed4v/Ej+U2bg7wc=">
<script type="text/javascript" src="scripts/project.js"></script>

    <title>Agriculture Industry - Agricultural Products,Agricultural Product
    Manufacturers,Exporters,Suppliers,Importers</title>
    <meta name="Description" content="Agriculture Industry - Guide to the agriculture industry in India, providing listings of agri produce manufacturers, exporters, suppliers, importers, buy sell trade leads, agro business catalogs, EXIM policies, agro industry statistics, agriculture pricing policies and national seeds policy of India.">
    <meta name="Keywords" content="agriculture industry, agriculture product manufacturers, agro product exporters, agro industry guide, agro industry guide, indian agriculture industry agro industry directory, agro business catalogs, agro industry statistics, agriculture pricing policies, national seeds policy, agri industry india, agri product exporters, agro product suppliers, india agriculture, agricultural commodity exporters, agro product manufacturers and exporters, india">
    <link href="ABC/agrostyle.css" rel="stylesheet" type="text/css">

<script src="ABC/script.js" language="javascript"></script>
  </head><body leftmargin="0" topmargin="0" bgcolor="#c1DDD7" marginheight="0" marginwidth="0">
    <div style="position: absolute; left: 7px; top: 49px; font-family: arial; font-size: 27px; color: rgb(51, 102, 0);" class="tlt"><a href="#"><b>Farmers Buddy</b></a></div>
    <div style="position: absolute; left: 241px; top: 285px; padding-right: 10px;" align="justify"><font class="ag-text-gr">.</font></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td background="ABC/top-td-bg.jpg" bgcolor="#90c82f"><a href="#"><img src="ABC/imart-agro.gif" alt="IndiaMART - Source &gt; Supply &gt; Grow" width="119" align="right" border="0" height="88" hspace="0"></a><a href="#"><img src="ABC/indian-agro-industry.gif" alt="Agriculture Industry - Agriculture Product Manufacturers,Exporters,Suppliers,Importers,Agro Industry Guide" width="306" align="left" border="0" height="88" hspace="0"></a><img src="ABC/rice-wheat-corn-img.gif" alt="indian agro portal" width="110" height="88"><img src="ABC/dals.gif" alt="agro industry catalogs" width="107" height="88"><img src="ABC/fruits-vegetables.gif" alt="agriculture product manufacturers" width="107" height="88"></td>
      </tr>
      <tr>
        <td background="ABC/d-bg.gif" bgcolor="#ffffc0"><img src="ABC/corn-bot.gif" width="50" height="15"><img src="ABC/agro-punch.gif" alt="Guide To Indian Agriculture Sector" width="366" height="15"></td>
      </tr>
      <tr>
        <td bgcolor="#336600"><img src="ABC/corn-bot1.gif" width="50" height="18"><img src="ABC/sanjeev.gif" width="34" height="18"><img src="ABC/grad.gif" width="332" height="18"><jsp:include page="mymenu.html"/></td>
      </tr>
    </tbody></table>
      <table><tr><td>
    <table width="238" valign="top" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr bgcolor="green">
        <td width="208"><img src="ABC/paddy.jpg" alt="agro directory, indian agriculture product manufacturers, exporters, suppliers and importers guide" width="208" height="148"><br>
        <img src="ABC/farms.jpg" alt="indian agriculture industry, agro industry guide, agro industry portal" width="208" height="93"></td>
        <td width="30"><img src="ABC/zero.gif" width="30" height="1"></td>
      </tr>
      <tr bgcolor="green">
        <td width="208">
       </td>
        <td width="30"></td>
      </tr>
      <tr bgcolor="green">
        <td width="208" align="center"><img src="ABC/indian-farmer.jpg" alt="Indian Farmer" width="208" height="145"><br>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tbody><tr>
            <td height="3"></td>
          </tr>
       
          <tr>
            <td bgcolor="#336600">
            </td>
          </tr>
        </tbody></table>
        </td>
        <td width="30"></td>
      </tr>
    </tbody></table></td><td valign="top">
    
    
    <table align=center width="565" height="339">
    <tr align="center"><td bgcolor="#c1DDD7">
    
   <br>


  <form action="fert.do">
  <center><h3>ADD FERTILIZER INFORMATION</h3></center>
  <table border=2 cellspacing=3 color="red">
   <% 
     SoilTypeDAO std=new SoilTypeDAO(); 
     CoreList c=std.getSoilTypes(); 
     Enumeration en3=c.elements(); 
      
   %>
   
   <tr><td><b>Soil Name</b></td><td><select name="soil_id">
   <option>SELECT</option>
   <%
   while(en3.hasMoreElements())
   {
     SoilTypeForm stf=(SoilTypeForm)en3.nextElement();
     %>
     <option value="<%=stf.getSoilcode()%>"><%=stf.getSoilname() %></option>
     <%
   }
    %>
   </select></td></tr>
  <tr><td><b>Type</b></td><td><select name="cvherb1">
  <option>SELECT</option>
  <option>Crop</option>
  <option>Herb</option>
  <option>Vegetable</option>
  </select></td>
  </tr>
  <%
     CropDAO cd=new CropDAO();
     CoreList1 c1=cd.getcrop_view();
     Enumeration en4=c1.elements();
     
   %>
   
   <tr><td><b>CropName</b></td><td><select name="crname">
   <option>SELECT</option>
   <%
   while(en4.hasMoreElements())
   {
     CropForm cf=(CropForm)en4.nextElement();
     
     %>
     <option value="<%=cf.getCrop()%>"><%=cf.getCrop() %></option>
  
     <%
   }
    %>
   </select></td></tr>
   <tr><td><b>Nitrogen(N)</b></td><td><input type=text" name="nitro"></td></tr>
   <tr><td><b>Phosporous(P2O5)</b></td><td><input type=text" name="phosporus"></td></tr>
   <tr><td><b>CoffeeCreamer(K2O)</b></td><td><input type=text" name="cofeecreamer"></td></tr>
   <tr><td><b>Use Fertilizer for Heactor</b></td><td><input type=text" name="usefertacre"></td></tr>
   <tr><td><b>Cost of Fertilizer</b></td><td><input type=text" name="costfert"></td></tr>
   <tr><td><b>Use Fertilizer for Year</b></td><td><input type=text" name="usefertyear"></td></tr>
   <tr><td><b>Use Fertilizer for State</b></td><td><input type=text" name="usefertstate"></td></tr>
   <tr><td><b>Use Fertilizer for Crops</b></td><td><input type=text" name="usefertcrops"></td></tr>
   <tr><td><input type="submit" value="send"><input type="submit" value="clear"></td></tr>
   
 
</table>
</form>



</td></tr>
    </table>
    </td></tr></table>
    
   </body></html>
