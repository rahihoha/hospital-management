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
                <td height="0" align="left" valign="top" class="middlespacer"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
          <td width="95%" align="left" class="headngbig" bgcolor="">Introduction </td>
     </tr>
	    </table>
		
<!--  <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
                            <tr>
                              <td width="11"><img src="${createLinkTo(dir:'images2/gif',file:'industry_details_left.gif')}" width="11" height="27" /></td>
                              <td width="147" align="center" background="${createLinkTo(dir:'images2/gif',file:'industry_details_middle.gif')}" class="top-lnks"><a href="#" rel="country1">Introduction</a></td>
                              <td width="11" valign="bottom"><img src="${createLinkTo(dir:'images2/gif',file:'industry_details_right.gif')}" width="11" height="27" /></td>
							  <td width="432" align="right" ></td>
							</tr>
	    </table>-->
	    
		            <!--    content change...START  -->	
		
 
<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="1" >
 
			   <tr class="txt4" >
   <td width="100%" height="100%"  class="headngblue1" border="0">
  

            <p style="line-height: 200%; margin-left: 10; margin-right:20" align="justify">
                  Central Pollution Control Board has delegated all of its powers and functions under the Water(Prevention
                  & control of pollution)Act,1981 to Chandigarh Pollution Control Committee in the year 1992.
                  As per decision of Coimbatore Charter,the Chandigarh Pollution control committee has been reconstituted to have wider technical representation.The constitution of committee is placed at Annexure -I. 
</font>
          </td>
     
      <tr class="txt4" >
   <td width="100%" height="100%"  class="headngblue1" border="0">
  

            <p style="line-height: 200%; margin-left: 10; margin-right:20" align="justify">
                  The functions of the committe are specified in detail under section 17(1) and 17(2) of the water (Prevention and Control of Pollution) Act,1974 and air (Prevention and control of pollution) Act,1981. 
</font>
          </td>
     </tr>
     <!-- 
      <tr>
          <td width="100%" height="1" class="headngblue">
            <p style="line-height: 200%; margin-left: 10; margin-right: 20" align="left">Objective of Board:-&nbsp;</p>
          </td>
      </tr>
      <tr>
          <td width="100%" height="1" class="headngblue">
            <p style="line-height: 200%; margin-left: 10; margin-right: 20" align="justify" class="txt4">The Punjab Pollution Control Board was constituted in the year 1975 after the enactment of Water (Prevention & Control of Pollution) Act, 1974 to preserve the wholesomeness of water. Subsequently, with the enactment of other environmental laws the responsibility to implement the provisions of such laws was also entrusted to the Punjab Pollution Control Board in the State of Punjab.  
<br>The basic organization through which the policies and decisions are implemented is headed by the Chairman of the Board, whereas, the Administrative, Financial Planning and legal affairs are looked into by the Member Secretary under the advice of the Chairman. Besides the basic organization, the Board has set up a Hazardous Waste Management Cell, Bio-Medical Waste management Cell, Environment Protection Squad, Consent Management Cell and a General, Planning and Computerization Cell.
&nbsp;</p>
          </td>
      </tr>
      
      <tr>
          <td width="100%" height="1" class="headngblue">
            <p style="line-height: 200%; margin-left: 10; margin-right: 20" align="left">CONSTITUTION OF THE BOARD:-&nbsp;</p>
          </td>
      </tr>
      
      
      <tr>
          <td width="100%" height="100%" >
            <p style="line-height: 200%; margin-left: 10; margin-right: 20" align="justify" class="txt4">The Punjab State Board for the Prevention and Control of Water Pollution was constituted under section 4 of the Water (Prevention & Control of Pollution) Act, 1974.  The Board consists of :<br>
          <br>
            <b>*</b>
          A full time Chairman.<br>
            <b>*</b>
          Such number of persons, not exceeding five, to be nominated by the State Government to represent that Government.<br>
            <b>*</b>
          Such number of persons, not exceeding five, amongst the members of Local Authorities functioning within the State.<br>
          <b>*</b>
          Such number of non-officials, not exceeding three, to be nominated by the State Government to represent the interest of agriculture, fishery or industry or trade or any other interest which, in opinion of the State Government ought to be represented.<br>
          <b>*</b>Two persons to represent the companies or corporations owned, controlled or managed by the State Government to be nominated by the State Government. <br>
          <b>*</b>A full time Member Secretary, possessing qualifications, knowlege and experience of Scientific, Engineering or management aspects or pollution Control, to be appointed by the State Government.    <br>
          
          </td>
      
      <tr>
          <td width="100%" height="1" class="headngblue">
            <p style="line-height: 200%; margin-left: 10; margin-right: 20" align="left">DUTIES OF THE BOARD:-&nbsp;</p>
          </td>
      </tr>
		</tr>
		<tr>
		<td width="100%" height="100%" >
		<p style="line-height: 200%; margin-left: 10; margin-right: 20" align="justify" class="txt4">In order to perform its functions under the above Acts, the Board carries out the following main activities :<br>
<br>
            <b>*</b>
            It carries out the monitoring of the Water quality of all the four rivers of the State viz. Sutlej, Beas, Ravi & Ghaggar through 37 monitoring stations.
<br>
            <b>*</b>
            It monitors the groundwater quality in the major industrial towns of Ludhiana, Jalandhar, Amritsar, Nangal etc.
<br>
            <b>*</b>
            It carries out the monitoring of the quality of ambient air of Ludhiana, Jalandhar, Amritsar, Patiala, Mandi Gobindgarh & Nangal through 22 permanent air monitoring stations.
<br>
            <b>*</b>
            The Board advices, guides, encourages, persuades & helps the industry in putting up effluent treatment plants and air pollution control devices to control pollution and in taking other measures to prevent or reduce pollution.
<br>
            <b>*</b>
            The Board issues NOCs to the new units on submission of a proper scheme for pollution control and issues consent under Water & Air Acts, after the unit takes adequate pollution control measures. It also issues authorizations to Hazardous Waste generating units on their making proper arrangement for storage of such wastes. The Board performs its regulatory function through consent mechanism. The Board issues consents ranging from one year to five years in the case of highly polluting industries and for 15 years, for green category industries.
<br>
            <b>*</b>
            The Board launches prosecutions against the units which do not take steps to control pollution inspite of repeated requests & warnings. It also orders closure of units when all other methods fail under the provisions of the Water Act, 1974 and the Air Act, 1981 etc. 
<br>
            <b>*</b>
            The Board makes available cost effective technologies & sets up model as demonstration plants for control of pollution in small scale units such as cupola furnaces, rice shellers and induction furnaces etc. with the help of Punjab State Council for Science & Technology, Chandigarh.
<br>
            <b>*</b>
            It monitors the noise level in the cities generated due to industrial, domestic and other public activities. These studies help the Board in assessing the pollution in the state.
<br>
            <b>*</b>
            It monitors the effects on soil due to the discharge of liquid effluents on to land.
<br>
            <b>*</b>
            It keeps checks on the disposal of hazardous waste, bio-medical waste and Municipal Solid waste under the provisions of the Hazardous Waste (Management & Handling) Rules, 1989 as amended to date, Bio-Medical Waste (Management & handling) Rules and Municipal Solid Waste (Management & Handling) Rules, respectively.
		
 
		
		</td></tr>
		
    -->
						
				<!-- content change  END	-->	
						
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


