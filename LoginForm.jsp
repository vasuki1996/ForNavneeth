<!DOCTYPE HTML PUBLIC "-//SoftQuad//DTD HoTMetaL PRO 4.0::19971010::extensions to HTML 4.0//EN" "hmpro4.dtd">
<%@ page import="java.util.*,com.farmer.form.*,com.farmer.dao.*,com.farmer.core.util.*" %>
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
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
.tarea {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
INPUT {
	FONT-SIZE: 8pt; BORDER-TOP-STYLE: groove; FONT-FAMILY: Verdana; BORDER-RIGHT-STYLE: groove; BORDER-LEFT-STYLE: groove; BORDER-BOTTOM-STYLE: groove
}
FONT {
	COLOR: #4f4d4d; FONT-FAMILY: Verdana
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


<script type="text/javascript">
     
 
var fadeimages=new Array()
//SET IMAGE PATHS. Extend or contract array as needed
fadeimages[0]=["ag4.jpg", "", ""] //plain image syntax
fadeimages[1]=["ag2.jpg", "", ""] //image with link syntax
fadeimages[2]=["ag3.jpg", "", ""] //image with link and target syntax
fadeimages[3]=["ag5.jpg", "", ""]
fadeimages[4]=["ag6.jpg", "", ""]
fadeimages[5]=["agrh.jpg", "", ""]

 
var fadeimages2=new Array() //2nd array set example. Remove or add more sets as needed.
//SET IMAGE PATHS. Extend or contract array as needed
fadeimages2[0]=["photo1.jpg", "", ""] //plain image syntax
fadeimages2[1]=["photo2.jpg", "http://www.cssdrive.com", ""] //image with link syntax
fadeimages2[2]=["photo3.jpg", "http://www.javascriptkit.com", "_new"] //image with link and target syntax
 
var fadebgcolor="white"

////NO need to edit beyond here/////////////
 
var fadearray=new Array() //array to cache fadeshow instances
var fadeclear=new Array() //array to cache corresponding clearinterval pointers
 
var dom=(document.getElementById) //modern dom browsers
var iebrowser=document.all
 
function fadeshow(theimages, fadewidth, fadeheight, borderwidth, delay, pause, displayorder){
this.pausecheck=pause
this.mouseovercheck=0
this.delay=delay
this.degree=10 //initial opacity degree (10%)
this.curimageindex=0
this.nextimageindex=1
fadearray[fadearray.length]=this
this.slideshowid=fadearray.length-1
this.canvasbase="canvas"+this.slideshowid
this.curcanvas=this.canvasbase+"_0"
if (typeof displayorder!="undefined")
theimages.sort(function() {return 0.5 - Math.random();}) //thanks to Mike (aka Mwinter) :)
this.theimages=theimages
this.imageborder=parseInt(borderwidth)
this.postimages=new Array() //preload images
for (p=0;p<theimages.length;p++){
this.postimages[p]=new Image()
this.postimages[p].src=theimages[p][0]
}
 
var fadewidth=fadewidth+this.imageborder*2
var fadeheight=fadeheight+this.imageborder*2
 
if (iebrowser&&dom||dom) //if IE5+ or modern browsers (ie: Firefox)
document.write('<div id="master'+this.slideshowid+'" style="position:relative;width:'+fadewidth+'px;height:'+fadeheight+'px;overflow:hidden;"><div id="'+this.canvasbase+'_0" style="position:absolute;width:'+fadewidth+'px;height:'+fadeheight+'px;top:0;left:0;filter:progid:DXImageTransform.Microsoft.alpha(opacity=10);opacity:0.1;-moz-opacity:0.1;-khtml-opacity:0.1;background-color:'+fadebgcolor+'"></div><div id="'+this.canvasbase+'_1" style="position:absolute;width:'+fadewidth+'px;height:'+fadeheight+'px;top:0;left:0;filter:progid:DXImageTransform.Microsoft.alpha(opacity=10);opacity:0.1;-moz-opacity:0.1;-khtml-opacity:0.1;background-color:'+fadebgcolor+'"></div></div>')
else
document.write('<div><img name="defaultslide'+this.slideshowid+'" src="'+this.postimages[0].src+'"></div>')
 
if (iebrowser&&dom||dom) //if IE5+ or modern browsers such as Firefox
this.startit()
else{
this.curimageindex++
setInterval("fadearray["+this.slideshowid+"].rotateimage()", this.delay)
}
}

function fadepic(obj){
if (obj.degree<100){
obj.degree+=10
if (obj.tempobj.filters&&obj.tempobj.filters[0]){
if (typeof obj.tempobj.filters[0].opacity=="number") //if IE6+
obj.tempobj.filters[0].opacity=obj.degree
else //else if IE5.5-
obj.tempobj.style.filter="alpha(opacity="+obj.degree+")"
}
else if (obj.tempobj.style.MozOpacity)
obj.tempobj.style.MozOpacity=obj.degree/101
else if (obj.tempobj.style.KhtmlOpacity)
obj.tempobj.style.KhtmlOpacity=obj.degree/100
else if (obj.tempobj.style.opacity&&!obj.tempobj.filters)
obj.tempobj.style.opacity=obj.degree/101
}
else{
clearInterval(fadeclear[obj.slideshowid])
obj.nextcanvas=(obj.curcanvas==obj.canvasbase+"_0")? obj.canvasbase+"_0" : obj.canvasbase+"_1"
obj.tempobj=iebrowser? iebrowser[obj.nextcanvas] : document.getElementById(obj.nextcanvas)
obj.populateslide(obj.tempobj, obj.nextimageindex)
obj.nextimageindex=(obj.nextimageindex<obj.postimages.length-1)? obj.nextimageindex+1 : 0
setTimeout("fadearray["+obj.slideshowid+"].rotateimage()", obj.delay)
}
}
 
fadeshow.prototype.populateslide=function(picobj, picindex){
var slideHTML=""
if (this.theimages[picindex][1]!="") //if associated link exists for image
slideHTML='<a href="'+this.theimages[picindex][1]+'" target="'+this.theimages[picindex][2]+'">'
slideHTML+='<img src="'+this.postimages[picindex].src+'" border="'+this.imageborder+'px">'
if (this.theimages[picindex][1]!="") //if associated link exists for image
slideHTML+='</a>'
picobj.innerHTML=slideHTML
}
 
 
fadeshow.prototype.rotateimage=function(){
if (this.pausecheck==1) //if pause onMouseover enabled, cache object
var cacheobj=this
if (this.mouseovercheck==1)
setTimeout(function(){cacheobj.rotateimage()}, 100)
else if (iebrowser&&dom||dom){
this.resetit()
var crossobj=this.tempobj=iebrowser? iebrowser[this.curcanvas] : document.getElementById(this.curcanvas)
crossobj.style.zIndex++
fadeclear[this.slideshowid]=setInterval("fadepic(fadearray["+this.slideshowid+"])",50)
this.curcanvas=(this.curcanvas==this.canvasbase+"_0")? this.canvasbase+"_1" : this.canvasbase+"_0"
}
else{
var ns4imgobj=document.images['defaultslide'+this.slideshowid]
ns4imgobj.src=this.postimages[this.curimageindex].src
}
this.curimageindex=(this.curimageindex<this.postimages.length-1)? this.curimageindex+1 : 0
}
 
fadeshow.prototype.resetit=function(){
this.degree=10
var crossobj=iebrowser? iebrowser[this.curcanvas] : document.getElementById(this.curcanvas)
if (crossobj.filters&&crossobj.filters[0]){
if (typeof crossobj.filters[0].opacity=="number") //if IE6+
crossobj.filters(0).opacity=this.degree
else //else if IE5.5-
crossobj.style.filter="alpha(opacity="+this.degree+")"
}
else if (crossobj.style.MozOpacity)
crossobj.style.MozOpacity=this.degree/101
else if (crossobj.style.KhtmlOpacity)
crossobj.style.KhtmlOpacity=this.degree/100
else if (crossobj.style.opacity&&!crossobj.filters)
crossobj.style.opacity=this.degree/101
}
 
 
fadeshow.prototype.startit=function(){
var crossobj=iebrowser? iebrowser[this.curcanvas] : document.getElementById(this.curcanvas)
this.populateslide(crossobj, this.curimageindex)
if (this.pausecheck==1){ //IF SLIDESHOW SHOULD PAUSE ONMOUSEOVER
var cacheobj=this
var crossobjcontainer=iebrowser? iebrowser["master"+this.slideshowid] : document.getElementById("master"+this.slideshowid)
crossobjcontainer.onmouseover=function(){cacheobj.mouseovercheck=1}
crossobjcontainer.onmouseout=function(){cacheobj.mouseovercheck=0}
}
this.rotateimage()
}

</script>


<script type="text/javascript" src="scripts/ts_picker.js"></script>
		<script type="text/javascript" src="scripts/submit.js"></script>
<script language="javascript">
function formCheck(formobj){
	
	var fieldRequired = Array("username","password");
	
	var fieldDescription = Array("Login Name","Password");
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

<script src="ABC/script.js" language="javascript"></script>
  </head><body leftmargin="0" topmargin="0" bgcolor="#FAF9DE" marginheight="0" marginwidth="0">
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
        <td bgcolor="#336600"><img src="ABC/corn-bot1.gif" width="50" height="18"><img src="ABC/sanjeev.gif" width="34" height="18"><img src="ABC/grad.gif" width="332" height="18"><jsp:include page="generalmenu.html"/></td>
      </tr>
    </tbody></table>
    <table width="814" height="409"><tr><td>  
    <table width="238" valign="top" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr bgcolor="green">
        <td width="208"><img src="ABC/paddy.jpg" alt="agro directory, indian agriculture product manufacturers, exporters, suppliers and importers guide" width="208" height="148"><br>
        <img src="ABC/farms.jpg" alt="indian agriculture industry, agro industry guide, agro industry portal" width="208" height="93"></td>
        <td width="30"><img src="ABC/indian-farmer.jpg" width="30" height="1"></td>
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
    </tbody></table></td>
      <td width="700" align="right">
    <form action="login.do" method="post" name="register" onsubmit="return formCheck(this)">
                    <table width="150" border="0" align="center">
                      <tr>
                        <td><div align="right" class="style25">
					  
					  <% if(request.getParameter("status")!=null)
					  {%>
					  <strong><%=request.getParameter("status")%></strong>
					  <%}%>
					  </div></td>
                      </tr>
                      <tr>
                        <td><table width="350" height="206" border="0" align="center" bordercolor="#CD817E" bgcolor="#FAF9DE">
                          <tr>
                            <td width="1" height="57" valign="top"></td>
                            <td width="280"><div align="center" class="style24">L o g i n</div></td>
                            <td width="29"></td>
                          </tr>
                          <tr>
                            <td height="120" align="right"></td>
                            <td><table width="226" border="0" align="center">
                                <tr>
                                  <td width="79"><span class="style23">Username</span></td>
                                  <td width="189"><input type="text" name="username">                                  </td>
                                </tr>
                                <tr>
                                  <td><span class="style23">Password</span></td>
                                  <td><label>
                                    <input type="password" name="password">
                                  </label></td>
                                </tr>
                                <tr>
                                  <td colspan="2"><label>
                                      <div align="center">
                                        <input type="submit" name="Submit" value="Sign In">
                                        &nbsp;
                                        <input name="Input2" type="reset" value="Clear">
                                      </div>
                                    </label></td>
                                </tr>
                            </table></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td height="21">&nbsp;</td>
                            <td valign="baseline">		<div align="center"><span class="style26"><a href="RecoverPassword.jsp">Forgot Password ! !......</a></span> <br>
                                <img src="images/regisbot.gif" alt="a" width="280" height="3"></div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                    </table>
                    <p align="center"><a href="Register.jsp"><img src="images/register.gif" width="200" height="40" border="0"></a>&nbsp;</p>
                    <p align="center"><a href="AGORegister.jsp">Agricultural Officer Registration</a></p>
                  </form>    
              </td>
              <td valign="top">
               <script type="text/javascript">
               //new fadeshow(IMAGES_ARRAY_NAME, slideshow_width, slideshow_height, borderwidth, delay, pause (0=no, 1=yes), optionalRandomOrder)
                new fadeshow(fadeimages, 130, 103, 0, 3000, 1, "R")
               </script>
               
              
              <img src="./images/newsupdate.gif"/>
              <script type="text/javascript">


//specify path to your external page:
var iframesrc="external.htm"

//You may change most attributes of iframe tag below, such as width and height:
document.write('<iframe id="datamain" src="'+iframesrc+'" width="150px" height="250px" marginwidth="0" marginheight="0" bgcolor="#CD817E" hspace="0" vspace="0" frameborder="1" scrolling="no"></iframe>')

</script>
</td>   


 
  </body>
</html>
