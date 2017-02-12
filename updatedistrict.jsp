<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.farmer.form.*,com.farmer.dao.*,java.util.*,com.farmer.core.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddDistrict.jsp' starting page</title>
    
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
       <form action="updateDistrict.do">
               State:<select name="state_id">
               <%!String dist=""; %>
               <%CoreList cl1=new CoreList();
                 DistrictInfoForm df=new DistrictInfoForm();
                 State_infoForm sf=null;
                 State_infoDao sd=new State_infoDao();
                 cl1=sd.getStates();
                 Enumeration em1=cl1.elements();
                 while(em1.hasMoreElements())
                 {
                    sf=(State_infoForm)em1.nextElement();
                    System.out.println("+++++++++"+sf.getState_id());
                    df.setState_id(sf.getState_id());
                      System.out.println("+++++++++"+df.getState_id());
                    %>
                    <option value="<%=df.getState_id() %>"><%=sf.getState() %></option>
                 <%} %>   
               </select><br/>
              <%int id=Integer.parseInt(request.getParameter("id"));
               dist=new DistrictInfoDAO().getDistrictByID(id);
               System.out.println("----------"+dist);
              %> 
              <input type="hidden" name="dist_code" value="<%=id %>"/><br/>
               District:<input type="text" name="district" value="<%=dist %>"/><br/>
               SoilType: Black Soil<input type="checkbox" name="soil_code" value="1"> Red Soil<input type="checkbox" name="soil_code" value="2">Alluvial Soil<input type="checkbox" name="soil_code" value="3">Lateriate Soil<input type="checkbox" name="soil_code" value="4">Mountain Soil<input type="checkbox" name="soil_code" value="5">Desert Soil<input type="checkbox" name="soil_code" value="6"><br/>
               <input type="submit" value="SUBMIT">  
       </form>
         </body>
</html>
