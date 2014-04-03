<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", -1);
%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>SPCB Admin Home</title>


<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'main.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'anylinkmenu.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'tabcontent.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'stylesheet.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'style.css')}" />
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'menucontents.js')}" ></script>
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'anylinkmenu.js')}" ></script>
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'tabcontent.js')}" ></script>
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'gen_validatorv31.js')}"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style3 {color: #186DB5}
.style5 {color: #0099FF}
.style6 {color: #33FF66; }
a:link {
	text-decoration: none;
	color: #1E6BBD;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}

.qwe123{
background-image: url('${createLinkTo(dir:'images2/gif',file:'blue_bg.gif')}');
padding-left:23px;
padding-right:20px;
padding-top:5px;
padding-bottom:5px;

}

.qwe123:hover{
background-image: url('${createLinkTo(dir:'images2/gif',file:'gray_bg.gif')}');
}

.blue{
background-image: url('${createLinkTo(dir:'images2/gif',file:'button_gray.gif')}');
padding-left:30px;
padding-right:27px;
padding-top:5px;
padding-bottom:7px;
}
.blue:hover{
background-image: url('${createLinkTo(dir:'images2/gif',file:'button_blue.gif')}');
}
-->
</style>

<script type="text/javascript" src="js/tabcontent.js">
</script>
<script type="text/javascript">
anylinkmenu.init("menuanchorclass")
</script>



</head>

<body >
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="91" align="left" valign="top" class="bgtop">
		<!-- code for spcbHeader  -->
		<g:include controller="userMaster" action="showSpcbHeader"/>
		</td>
      </tr>
      <tr>
        <td height="32" align="left" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_BG.gif')}" >
		<!-- code for menuAdminHorizontal-->
		<% 
				if(  (IndUser)session.getAttribute("indUser")  ){ %>
						  <g:include controller="userMaster" action="showIndustryMenuHorizontal"/>                                         
				<% } %>
 <% 
 		if((UserMaster)session.getAttribute("userMaster")){
 		UserMaster aa = (UserMaster)session.getAttribute("userMaster");
		String userType = aa.accessLevel
		 if(userType.equals("admin")) { %>   

                    <g:include controller="userMaster" action="showAdminMenuHorizontal"/>                                      

                <% }else{ %>

                    <g:include controller="userMaster" action="showSpcbUserMenuHorizontal"/> 

                  <%}} %>
			<% if( (!(IndUser)session.getAttribute("indUser") ) && 
		      (! (UserMaster)session.getAttribute("userMaster") )  )   {%>
					<g:include controller="userMaster" action="showMenu"/>        

                <% } %>
		</td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="1003" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="224" align="left" valign="top" bgcolor="#DEEED0">
			<!-- code for menuAdmin-->
			<%
				if(  (IndUser)session.getAttribute("indUser")  ){ %>
					 <g:include controller="userMaster" action="showSpcbIndustryMenu"/>                                         

                           <%} %>
				 <% 

                 if((UserMaster)session.getAttribute("userMaster")){
				UserMaster aa = (UserMaster)session.getAttribute("userMaster");
                String userType = aa.accessLevel
					 if(userType.equals("admin")) { %>   

                 <g:include controller="userMaster" action="showAdminMenu"/>                                          

                 <% }else{ %>
					 <g:include controller="userMaster" action="showSpcbUserMenu"/> 
							 <%}} %>
						<% if( (!(IndUser)session.getAttribute("indUser") ) && 
							(! (UserMaster)session.getAttribute("userMaster") )  )   {%>
							<g:include controller="userMaster" action="showIndexMenu"/>            

                                 <% } %>
			</td>
            <td width="1" align="left" valign="top" bgcolor="#ADBFCB"></td>
            <td width="778" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="1" valign="top"></td>
              </tr>
              <tr>
                <td><img src="${createLinkTo(dir:'images2',file:'img.jpg')}" width="778" height="134" /></td>
              </tr>  
              
              <tr>
                <td height="24" bgcolor="#EEEEF3">
					<table width="100%"> <tr bgcolor="#4C8BC0">
				<td  class="top-lnks" width="100%">
					<table width="100%" border="0" >
						 <tr height="10px" width="100%">
						 	<td></td>
						 	<td class="top-lnks" align="right">  </td>
						 </tr>
					 </table>
					 </td></tr><tr>
							
							
							<!--<td width="20%" align="left"><g:link controller="officeMaster" action="updateoffice" ><span class="innerlink">&nbsp;Update&nbsp;|</span></g:link></td> -->
							<td width="80%">&nbsp;</td>
					   </tr></table>
				</td>
              </tr>
              <tr>
                <td height="0" align="left" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr><!-- Div area for errors-->
                    
                    
                      <td align="center" valign="top"><div style="width:400px; height:20px; vertical-align:middle"><span class="error">
				                     <g:if test="${flash.message}">
									<div class="message">${flash.message}</div>
									</g:if>
									<g:hasErrors bean="${officeMasterInstance}">
									<div class="errors">
										<g:renderErrors bean="${officeMasterInstance}" as="list" />
									</div>
									</g:hasErrors>

                      </span></div></td>
                    </tr>
                    <!--<tr>        
                      <td align="center" valign="top">Row for Page Heading</td>
                    </tr>-->
                    <tr>
                      <td height="0" align="left" valign="top"><table width="778" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="82" align="left" valign="top">&nbsp;</td>
                            <td align="left" valign="top"><div style="padding:0px 0px 0px 0px;" >
	  
        
				 
    <br/>
       
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
		
		
		
		
		<g:form action="save" name="myform" method="post" >
		
	<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
     <tr>
     <td><img src="${createLinkTo(dir:'images',file:'arr.jpg')}" />&nbsp;&nbsp;</td>
          <td width="95%" align="left" class="headngbig" bgcolor="">Board's Chairman and Members Address:-
 </td>
     </tr>
	    </table>
	    
	
 
    
   <table width="751" height="2" cellspacing="0" cellpadding="0"  style="border: 0px solid #4C8BC0" >
    
 
    
 <table width="751" height="2" cellspacing="0" cellpadding="0"  style="border: 0px solid #4C8BC0" >
    
 
    
    	<tr>
        					<td width="100%" valign="top" align="center" height="529" bgcolor="white">
						          <table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border-style: none; border-width: medium" width="626">
						            <tr>
						              <td width="38" valign="top" style="border: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"><b><font face="Verdana" size="2">S.No.<u1:p>
						                </u1:p>
						                </font></b></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p align="center" style="text-align:center" class="txt4"><b>Name
						                of the Member<u1:p>
						                </u1:p>
						                </b></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p align="center" style="text-align:center" class="txt4"><b>Address<u1:p>
						                </u1:p>
						                </b></td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">01.<u1:p>
						                </u1:p>
						                </td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">CHAIRMAN
SHRI P. JOY OOMMEN
ENVIRONMENT & URBAN DEVELOPMENT DEPARTMENT,
GOVERNMENT OF CHHATTISGARH
RAIPUR (C.G.)
</font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">ROOM NO.308
D.K.S. BHAWAN
MANTRALAYA
RAIPUR (C.G.)

'  0771 –2221308 (O), 5080308 (O)
FAX NO. 5066236

						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">(
						                91-07744-236401 (Fax))</td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">02.<u1:p>
						                </u1:p>
						                </td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">MANAGING DIRECTOR,
CHHATTISGARH STATE FOREST DEVELOPMENT CORPORATION LIMITED,
RAIPUR (C.G.)<u1:p>
						                </u1:p>
						                </td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">D-252/253,SECTOR-5,
DEVENDRA NAGAR, RAIPUR (C.G.)

'  0771 –5057748 (O)
</p>
						                <p style="margin:0in;margin-bottom:.0001pt">&nbsp;</p>
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">(&nbsp;&nbsp;
						                91-07752-261172 (O),&nbsp;
						                91-07752-270160 (O) )</p>
						              </td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4"> 03.<u1:p>
						                </u1:p>
						                </td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">SPECIAL SECRETARY,
ENVIRONMENT AND URBAN DEVELOPMENT DEPARTMENT,
GOVERNMENT OF CHHATTISGARH,RAIPUR (C.G.)<u1:p>
						                </u1:p>
						                </td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">
						               ROOM NO.235
D.K.S. BHAWAN
MANTRALAYA, RAIPUR (C.G.)

'  0771 –2680799 (O), 5080799 (O)

						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">(&nbsp;
						                91-0788-2242964 (O), 91-0788-2211898 (O)</font></p>
						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;
						                91-0788-2241554 (Fax))</font></p>
						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"class="txt4">04.<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">MANAGING DIRECTOR,
CHHATTISGARH INFRASTRUCTURE DEVELOPMENT CORPORATION,
RAIPUR (C.G.)<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">
						              CHHATTISGARH INFRASTRUCTURE DEVELOPMENT CORPORATION,
SHASTRI CHOWK,
RAIPUR (C.G.)

'  0771 –2666300 (O), 2221616 (O)

						                495 677.</font></td>
						               <!-- <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">&nbsp;
						                91-07759- 222370 (O),&nbsp;</font></p>-->
						             <!--   <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;
						                91-07759-222325 (Fax))</font>--></td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"class="txt4">05.<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">COMMISSIONER,
MUNICIPAL CORPORATION,
BILSAPUR (C.G.)<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"class="txt4">
						                MUNICIPAL CORPORATION, TOWN HALL, BILSAPUR (C.G.)

'  0771 –227495 (O), 245228 (O)
</font></td>
						               						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"class="txt4">06.<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"class="txt4">SHRI JEEVENDRA NATH THAKUR,
ADVOCATE, RAIPUR (C.G.)<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">
						               TURI HATARI, PURANI BASTI, RAIPUR (C.G.)

'  0771 –2539999 (O)

						              </td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">07.<u1:p> </u1:p>
						                </font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">SHRI K SUBRAMANIAM 

RAIPUR (C.G.)
<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">
						              H.No.1, Tilak Nagar, Shiv Mandir Chowk, Main Road, Avanti Vihar, Raipur (C.G.)
 

'  0771-2443923, 2443934, (O)

</font> </p>
						              </td>
						       		</tr>
						       	</table>
						   </table>
						
    
      <table width="95%" align="center">
	   		<tr>
	   		<td colspan="3">&nbsp;</td>
	   		</tr> 
		
		</table>
		        <div align="left" class="txt" style="color: navy">
			  <br>
			
		</div>
		
  			</g:form>
            <br />
            <br />

          </div>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          </div>
	  
<script type="text/javascript">

var countries=new ddtabcontent("countrytabs")
countries.setpersist(true)
countries.setselectedClassTarget("link") //"link" or "linkparent"
countries.init()

</script>
      </div></td>
                            <td width="132" align="left" valign="top">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
      </tr>
      <!-- code for spcb Footer -->
	  <g:include controller="userMaster" action="showSpcbFooter"/>
    </table></td>
  </tr>
</table>

</body>
<HEAD> 
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE"> 
<META HTTP-EQUIV="Expires" CONTENT="-1">
</HEAD>
</html>


    