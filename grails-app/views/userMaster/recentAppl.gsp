<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'design.css')}" />
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'tabs.js')}"></script>

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

<% 

      String contVar=request.getContextPath()

      if( (!(IndUser)session.getAttribute("indUser") ) && (! (UserMaster)session.getAttribute("userMaster") )  )   {

      response.sendRedirect(contVar+"/index.gsp")  ;     

      } %>

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

                                    <%} %>

                                                      

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

                                          <g:include controller="userMaster" action="showIndexMenuHorizontal"/>        

                                    <% } %>

		</td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="1003" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="224" align="left" valign="top" bgcolor="#DEEED0">
			<!-- code for menuAdmin-->
			<%

						if(  (IndUser)session.getAttribute("indUser")  )
										
										{ %>

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

                                                                  

                                                <% if( (!(IndUser)session.getAttribute("indUser") ) && (! (UserMaster)session.getAttribute("userMaster") )  )   {%>

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
           

  <%
              UserMaster um=(UserMaster)session.getAttribute("userMaster");
              UserProfile aa=(UserProfile)session.getAttribute("userprof");
              String firstname=aa.employeeFirstName;
              String lastName=aa.employeeLastName;
              String access=um.accessLevel;
              java.util.Date dateSCR = new java.util.Date();
             	int  year=dateSCR.getYear();
             	 if (year < 1000)
                     year+=1900;
               	int date=dateSCR.getDate();
                int month=(dateSCR.getMonth()) + 1;
               

              %>

              <tr>
                <td height="24" bgcolor="#EEEEF3">
					<table width="100%"> 
						
<tr bgcolor="#4C8BC0">
				<td  class="top-lnks" >
					<table width="100%" >
						 <tr height="10px">
						 	<td>Welcome <%=firstname %><%=lastName %>(<%=access %>)</td>
						 	<td class="top-lnks" align="right"> Date :&nbsp;<%=date %>-<%=month %>-<%=year %> </td>
						 </tr>
					 </table>
					 </td></tr>
					</table>
				</td>
              </tr>
         <!--     <tr><td>
<FONT SIZE="4" FACE="courier" COLOR=red><MARQUEE WIDTH=100% BEHAVIOR=left onmouseover = "this.stop()" onmouseout = "this.start()">Any applicant knowingly giving incorrect information or suppressing information pertaining to any of the items of the application shall be liable for punishment as per provisions under the relevent Act.</MARQUEE></FONT>

</td></tr>-->
              <tr>
                <td height="0" align="left" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr><!-- Div area for errors-->
                      <td align="center" valign="top"><div style="width:400px; height:20px; vertical-align:middle">&nbsp;</div></td>
                    </tr>
                    <!--<tr>        
                      <td align="center" valign="top">Row for Page Heading</td>
                    </tr>-->
                    <tr>
                      <td height="0" align="left" valign="top"><table width="778" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="34" align="left" valign="top">&nbsp;</td>
                            <td width="685" align="left" valign="top"><div style="padding:0px 0px 0px 0px;" >
	  
        
				 
    <br/>
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
         
		<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0"  >
				<tr valign="middle" >
                  <td  align="left" class= "headngblue" >
				  	<% String cont=request.getContextPath() %>
					<input type="radio" id="recent" name="recent"   value="" checked> Recent Applications  &nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" id="app" name="app" onclick=window.location="<%=cont%>/userMaster/openSpcbHome" value="" > All Applications
				  </td>
				</tr>		
	    </table>
		
		<br/>
		
         
		  
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#A5CAF4" class="tab-txt" style="border-collapse:collapse;">
   
		  <tr>
		    <td bgcolor="#FFFFFF"><table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#cbcbcd" class="tab-txt" style="border-collapse:collapse;">
        			<thead>
                        <tr height="20" bgcolor="#A8DAF3">
                        
                   	        <!--<g:sortableColumn property="id" title="Application No" />                        
                   	        <g:sortableColumn property="applicationDate" title="Application Date" />                        
                   	        <g:sortableColumn property="applicationFor" title="Application For" />                       
                   	        <g:sortableColumn property="applicationName" title="Application Name" />                     
                   	        <th>Application Type</th>
                   	        <th>Category</th>-->
							
							<th class="headngblue" align="center">Application No</th>
							<th class="headngblue" align="center">Update Date</th>
							<th class="headngblue" align="center">Application For</th>
							<th class="headngblue" align="center">Application Name</th>
							<th class="headngblue" align="center">Type</th>
                   	        <th class="headngblue" align="center">Certificate For</th>
                   	        <th class="headngblue" align="center">Process within</th>
                   	   	 	</tr>
                    </thead>
                    <tbody>
                     
                   <%
                   
                   if(listFinalIND.size()==0){ %><tr><td colspan="7" height="25" align="center" class="txt4">List Is Empty</td></tr><%} %>
                    <g:each in="${listFinalIND}" status="i" var="indApplicationDetailsInstance">
                        <% def a;
                       
                       def role = ApplicationPendingDetails.find("from ApplicationPendingDetails apd where apd.application=?",[indApplicationDetailsInstance]) 
                       def days = role.role.noOfDays
                       System.out.print(days)
                       System.out.print("asa")  
                       
                        SimpleDateFormat sdfDestination = new SimpleDateFormat("dd-MM-yyyy hh:mm");
   
                        String strDate = sdfDestination.format(listFinalDate[i] );
                        
                        String classToPick="#1F6FB7";
                        
                        
                        if(indApplicationDetailsInstance.clarification && indApplicationDetailsInstance.inspection)
                        {
                        	classToPick="#CD5B45";
                        }else
                        {
                        
                        if(indApplicationDetailsInstance.clarification)
                        {
                        	classToPick="#CD5B45";
                        }
                        if(indApplicationDetailsInstance.inspection)
                        {
                        	classToPick="#CD5B45";
                        }
                       
                        	
                       
                        }
                        a = listFinalDate[i] + days;
                        	
                        	def b = a - dateSCR
                        	//println(b)
                        	//classToPick="#F660AB";
                        	
                        	if(b<=0)
                        {
                        	classToPick="#F660AB";
                        }
                        %>
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td height="25" align="center" class="txt4"><b><g:link action="appProcessing" controller="applicationProcessingDetails" id="${indApplicationDetailsInstance.id}"><u>${fieldValue(bean:indApplicationDetailsInstance, field:'id')}</u></g:link></b></td>
                            <td height="25" align="center" class="txt4"><% if((indApplicationDetailsInstance.clarification) || (indApplicationDetailsInstance.inspection) || (b<=0)) {%><marquee BEHAVIOR=alternate /><% } %><b><font face="Verdana" color="<%=classToPick%>"><%=strDate%></b></font></td>
                            <td height="25" align="center" class="txt4"><b><font face="Verdana" color="<%=classToPick%>">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationFor')}</font></b></td>
                            <td height="25" align="center" class="txt4"><b><font face="Verdana" color="<%=classToPick%>">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationName')}</font></b></td>
                            <td height="25" align="center" class="txt4"><b><font face="Verdana" color="<%=classToPick%>">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationType')}</font></b></td>
                            <td height="25" align="center" class="txt4"><b><font face="Verdana" color="<%=classToPick%>">${fieldValue(bean:indApplicationDetailsInstance, field:'certificateFor')}</font></b></td>
                            <td height="25" align="center" class="txt4"><b><font face="Verdana" color="<%=classToPick%>">${b} Days</font></b></td>
                        </tr>
                    </g:each>
                    </tbody>
      </table></td>
		  </tr>
		  <tr><td class="txt4"></td></tr>
		  
		  
		  </table>
		  <table width="95%">
		  <tr><td>&nbsp;</td></tr>
		  
		  <tr><td width="8px"  bgcolor="#CD5B45"></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Observation / Show Cause Notice or Inspection is raised on these applications.</font></td></tr>
         <!-- <tr height="2px"><td>&nbsp;</td></tr> -->
          <tr><td width="8px"  bgcolor="#1F6FB7"></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;New and Updated applications.</font></td></tr>
          <tr><td width="8px"  bgcolor="#F660AB"></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Process these Applications first on priority because application processing period assigned was over.</font></td></tr>
          
          <table>
            <br />
            <br />
          
          </div>
		
      </div></td>
                            <td width="59" align="left" valign="top">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
      </tr>
     
    </table></td>
  </tr>
</table>
 <!-- code for spcb Footer -->
	  <g:include controller="userMaster" action="showSpcbFooter"/>
</body>
</html>

