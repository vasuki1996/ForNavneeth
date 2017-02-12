<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*,com.farmer.form.*,com.farmer.dao.*,com.farmer.core.util.*" %>
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
    
    
    
<html>
  <head>
    
    <title>My JSP 'ViewDistricts.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript">
function sub()
{
 var state=document.viewdistricts.state_id.value;
 document.write(state);
 location.href="crop_season.jsp?state_id="+state;
 document.viewdistricts.submit();
}
</script>
	
  </head>
  <body>
  <div>
      <jsp:include page="menu.html"/></div>
      <form action="crop_seasson1.jsp" name="viewdistricts" method="post"> 
         <table align="center" border="1" bordercolor="pink">
         <tr><td>
         State:</td><td><select name="state_id" onchange="sub()">
         <option>--SELECT--</option>
         <%
		  DistrictInfoForm df=new DistrictInfoForm();
		  State_infoDao sd=new State_infoDao();
		  CoreList cl=sd.viewState_info();
		  Enumeration em=cl.elements();
		 while(em.hasMoreElements())
		 {
		  State_infoForm sf=(State_infoForm)em.nextElement();
		  df.setState_id(sf.getState_id());//df
		  %>
		  <option value="<%=df.getState_id() %>"><%=sf.getState() %></option>
		   
		  <%} %>
         </select></td>
         
         </tr>
         
         <tr>
         <td><b>District</b></td><td><select name="district1">
         <option>SELECT</option>
          <%
           String d=request.getParameter("state_id");
          if(d!=null)
          {
             CropForm cf=new CropForm();
            
             DistrictInfoDAO did=new DistrictInfoDAO();
             CoreList cl1=new CoreList();
             cl1=did.getDistricts(Integer.parseInt(request.getParameter("state_id")));
             Enumeration em1=cl1.elements();
             while(em1.hasMoreElements())
             {
              df=(DistrictInfoForm)em1.nextElement();
           %>
           
           <option value="<%=df.getDistrict()%>"><%=df.getDistrict() %></option>
          <% 
          
          }
             State_infoForm sf=new State_infoForm();
             int d1=new Integer(d);
             sf.setState_id(d1);
             %>
             <input type="hidden" name="state_id4" value="<%=sf.getState_id() %>">
                          <%
          
          }
          %> 
         </select>
         </td>
        
         </tr>
         <tr><td><input type="submit" value="send"><input type="submit" value="clear"></tr>
         </table>
         </form>
       
  </body>
</html>


  </td></tr>
    </table>
    </td></tr></table>
    
   </body></html>