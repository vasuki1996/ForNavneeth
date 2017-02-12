<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.farmer.form.*,com.farmer.dao.*,com.farmer.core.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RecoverPasswordAction.jsp' starting page</title>
    
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
  <%
  String target = "RecoverPassword.jsp?status=Entries not Matched... Try Again";;
    try{
        RegisterForm rb=new RegisterForm();
        String loginid=request.getParameter("loginname");
        String sanswer=request.getParameter("secretqans");
        rb.setLoginname(loginid);
        rb.setSecretAnswer(sanswer);
        int squestid=0;
        String password="";
         if(request.getParameter("ch")!=null)
        {
            rb.setSecretQuestionID(squestid);
            rb.setOwnSecretQuestion(request.getParameter("ownsecretq"));
            password=new SecurityDAO().recoverPasswordByOWNQuestion(rb);
        }
        else
        {
            squestid=Integer.parseInt(request.getParameter("secretqid"));
            rb.setSecretQuestionID(squestid);
            rb.setOwnSecretQuestion("Not Mentioned");
            password=new SecurityDAO().recoverPasswordByExistQuestion(rb);
        }
        if(password.equals("") || password==null)
            target="RecoverPassword.jsp?status=Entries not Matched... Try Again";
        else
           target="LoginForm.jsp?status=Password is "+password;
      }
      catch(Exception e)
      {
        e.printStackTrace();
      }
      RequestDispatcher rd = request.getRequestDispatcher(target);
      rd.forward(request,response); 
    %>
  </body>
</html>
