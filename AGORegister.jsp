<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RegisterForm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="scripts/ts_picker.js"></script>
			<script type="text/javascript" src="scripts/submit.js"></script>

<script language="javascript">
function formCheck(formobj){
	
	var fieldRequired = Array("firstname","lastname","bdate","qualification","designation","city","state","country","email","loginname","password","squest","ownquest","sanswer");
	
	var fieldDescription = Array("First Name","Last Name","Birth Date","Qualification","Designation","City","State","Country","Email","Login Name","Password","Secret Question","Own Question","Secret Answer");
	// dialog message
	var alertMsg = "Please complete the following fields:\n";
	
	var l_Msg = alertMsg.length;
              
	
	for (var i = 0; i < fieldRequired.length; i++){
		var obj = formobj.elements[fieldRequired[i]];
		if (obj){
			switch(obj.type){
			case "select-one":
				if (obj.selectedIndex == -1 || obj.options[obj.selectedIndex].text == ""){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "select-multiple":
				if (obj.selectedIndex == -1){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "text":
			case "textarea":
				if (obj.value == "" || obj.value == null){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			default:
			}
			if (obj.type == undefined){
				var blnchecked = false;
				for (var j = 0; j < obj.length; j++){
					if (obj[j].checked){
						blnchecked = true;
					}
				}
				if (!blnchecked){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
			}
                                                  
		}
	}

	if (alertMsg.length == l_Msg){
		return true;
	}else{
		alert(alertMsg);
		return false;
	}
}

</script>	
			
<script language="javascript">
function check()
{
   if(!document.register.ch.checked)
   {
         document.register.ownquest.disabled=true;
         document.register.squest.disabled=false;
   }
   else
   {
         document.register.ownquest.disabled=false;
         document.register.squest.disabled=true;
   }
}
</script>
<script language="javascript">
function emailcheck(){
var string1=document.register.email.value
if (string1.indexOf("@")==-1){
alert("Please input a valid email address!")
document.register.email.focus()
}
}

</script>
  </head>
  
  <body bgcolor="#c1DDD7">
  
  <form name="register" action="register.do" method="post" onsubmit="return formCheck(this)">
  <%if(request.getParameter("status")!=null)
					  {%>
					  <%=request.getParameter("status")%>
					  <%}%>
<table width="481" border="0" align="center" bordercolor="#CD848F" bgcolor="#EDF9DF">
                        <tr>
                          <td width="7" height="57" valign="top">&nbsp;</td>
                          <td width="471"><div align="center"><span class="style11"><strong>R e g i s t r a t i o n</strong></span></div></td>
                          <td width="10">&nbsp;</td>
                        </tr>
                        <tr>
                          <td align="right">&nbsp;</td>
                          <td><table width="407" border="0" align="center">
                              <tr>
                                <td width="128"><span class="style17">First Name </span></td>
                                <td width="269"><label>
                                  <input type="text" name="firstname" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Last Name </span></td>
                                <td><label>
                                  <input type="text" name="lastname" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Birth Date </span></td>
                                <td><label>
                                  <input type="text" name="bdate" readonly><a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);">
<img src="images/cal.gif" width="18" height="18" border="0"/></a>
                                </label></td>
                              </tr>
                              <tr>
                              <tr>
                                <td><span class="style17">Qualification</span></td>
                                <td><label>
                                  <input type="text" name="qualification" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Designation</span></td>
                                <td><label>
                                  <input type="text" name="designation" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">City</span></td>
                                <td><label>
                                  <select name="city">
                                    <option>Hyderabad</option>
                                    <option>Mumbai</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">State</span></td>
                                <td><label>
                                  <select name="state">
                                    <option>Andhra pradesh</option>
                                    <option>Maharashtra</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Country</span></td>
                                <td><label>
                                  <select name="country">
                                    <option>India</option>
                                  </select>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Email Address</span></td>
                                <td><label>
                                    <input type="text" name="email" onblur="emailcheck()" onkeypress="return lettersOnly(event)">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Login Name </span></td>
                                <td><label>
                                  <input type="text" name="loginname">
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Password</span></td>
                                <td><label>
                                  <input name="password" type="password" id="password">
                                </label></td>
                              </tr>
                             
                              <tr>
                                <td><span class="style17">
                                  <label>Secret Question</label>
                                </span></td>
                                <td><select name="squest">
                                    <option value="1">What is your favorite pastime?</option>
                                    <option value="2">Who was your childhood hero?</option>
                                    <option value="3">What was the name of your first school?</option>
                                    <option value="4">Where did you meet your spouse?</option>
                                    <option value="5">What is your favorite sports team?</option>
                                    <option value="6">What is your father's middle name?</option>
                                    <option value="7">What was your high school mascot?</option>
                                    <option value="8">What make was your first car or bike?</option>
                                    <option value="9">What is your pet's name?</option>
                                </select></td>
                              </tr>
                              <tr>
                                <td colspan="2"><span class="style17"> </span><span class="style18">
                                  <label>
                                  <input type="checkbox" name="ch" value="1" onClick="check()">
                                  <span class="style20">Own Question</span> </label>
                                </span><span class="style17"> </span></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Own Question </span></td>
                                <td><label>
                                  <input type="text" name="ownquest" disabled>
                                </label></td>
                              </tr>
                              <tr>
                                <td><span class="style17">Secret Answer </span></td>
                                <td><input name="sanswer" type="text"></td>
                              </tr>
                              <input type="hidden" name="diff" value="ngo">
                              <tr>
                                <td colspan="2"><div align="center">
                                    <INPUT type="image" name="submit" src="./images/RegisterNow.gif" border="0" style="border-width: 1px; height:40px; width:150px;" type="image" onclick="return formCheck(this)">
                                </div></td>
                              </tr>
                          </table>
</td>
</tr>
</table>
</form>                          
  </body>
</html>
