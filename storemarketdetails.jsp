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
  </head><body leftmargin="0" topmargin="0" bgcolor="c1DDD7" marginheight="0" marginwidth="0">
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
        <td width="30"><br><br></td>
      </tr>
    </tbody></table></td>
      <td width="700" align="center">
    
  <form name="storemarketdetails" action="storemarket.do" method="post">
       <%//int sid=Integer.parseInt(request.getParameter("stateid"));
         String did=request.getParameter("dist_id");
         System.out.println("/////////////"+did);
         %>
         <table align="center" border="1" bordercolor="pink">
         <tr></tr><tr></tr>
         <tr align="center">
         <td width="13"><span class="style23">Market:</span></td>
         <td><select name="marketid">  
          <option value="select">--SELECT--</option>       
            <%if(request.getParameter("dist_id")!=null)
            {
               MarketDetailsDAO md=new MarketDetailsDAO();
               CoreList cl1=new CoreList();
               cl1=md.getMarkets(Integer.parseInt(request.getParameter("dist_id")));
               MarketForm mf=new MarketForm();
               Enumeration em1=cl1.elements();
               while(em1.hasMoreElements())
               {
                mf=(MarketForm)em1.nextElement();
               // mf.setDist_id(df.getDist_code());
            %>  
                 <option value="<%=mf.getMarketid() %>"><%=mf.getMarket()%></option>
             <%}} %>   
             </select> 
            </td></tr>
          </table>
          <p>&nbsp;</p><p>&nbsp;</p>
          
          <table align="center" border="1" bordercolor="pink"  cellspacing="3" cellspacing="3" width="293" height="325">  
            <tr><td><span class="style23">Arrivals</span></td><td><input type="text" name="arrivals"/></td></tr>
            <tr><td><span class="style23">Unit of Arrivals</span></td><td><input type="text" name="unitarrivals"/></td></tr>
            <tr><td><span class="style23">Arrival Date</span></td><td><input type="text" name="arrivaldt"/><a href="javascript:show_calendar('document.storemarketdetails.arrivaldt', document.storemarketdetails.arrivaldt.value);">
<img src="images/cal.gif" width="18" height="18" border="0"/></a></td></tr>
            <tr><td><span class="style23">Variety</span></td><td><select name="variety">
                    <option value="select">---SELECT---</option>
                    <%CoreList cl=new CoreList();
                      CommodityDAO cd=new CommodityDAO();
                      CommodityForm cf=null;
                      cl=cd.getCommodities();
                      Enumeration em=cl.elements();
                      while(em.hasMoreElements())
                      {
                        cf=(CommodityForm)em.nextElement(); %>
                    <option value="<%=cf.getCmid() %>"><%=cf.getCname() %></option>
                    <%} %>
                    </select>  
            </td></tr>
            <tr><td><span class="style23">Grade</span></td><td><input type="text" name="grade"/></td></tr>
            <tr><td><span class="style23">Minimum Price</span></td><td><input type="text" name="minprice"/></td></tr>
            <tr><td><span class="style23">Maximum Price</span></td><td><input type="text" name="maxprice"/></td></tr>
            <tr><td><span class="style23">Modal Price</span></td><td><input type="text" name="modalprice"/></td></tr>
            <tr><td><span class="style23">Unit of Price</span></td><td><input type="text" name="unitprice"/></td></tr>
            <tr></tr>
          </table>  
              <center><INPUT type="image" name="submit" src="./images/submit.gif" border="0"></center>
           
     </form> 
  </td>
  </tr>
  </table>          
  </body>
  
</html>
