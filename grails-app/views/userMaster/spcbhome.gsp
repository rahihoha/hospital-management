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
		<!-- code for menuSpcbUserHorizontal-->
		<g:include controller="userMaster" action="showSpcbUserMenuHorizontal"/>
		</td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="1003" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="224" align="left" valign="top" bgcolor="#DEEED0">
			<!-- code for menuSpcbUser-->
			<g:include controller="userMaster" action="showSpcbUserMenu"/>
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
                            <td width="33" align="left" valign="top">&nbsp;</td>
                            <td width="706" align="left" valign="top"><div style="padding:0px 0px 0px 0px;" >
	  
        
				 
    <br/>
     <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0"  >
				<tr valign="middle">
                  <td  align="left" class= "headngblue" >
				  	<% String cont=request.getContextPath(); %>
					<input type="radio" id="recent" name="recent"   value="" onclick=window.location="<%=cont%>/userMaster/recentAppl" > Recent Applications 
				&nbsp;&nbsp;	<input type="radio" id="app" name="app"  value="" checked > All Applications
				  </td>
				</tr>		
	    </table>
	     <br/>
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
		 
		 
		 
		 
		<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0"  >
				<tr valign="middle">
                  <td  width="100%" align="center" >
				  	
					<ol id="toc">
						<li><a href="#country1"><span>Pending Application</span></a></li>
						<li><a href="#country3"><span>Completed Application</span></a></li>
					</ol>
				  </td>
				</tr>		
	    </table>

		
		
		
		
		
		
		
		
          <div class="content" id="country1" >
  			<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#A5CAF4">
				                      
                      <tr>
                        <td valign="top" bgcolor="#FFFFFF"><table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#cbcbcd" class="tab-txt" style="border-collapse:collapse;">
			
			<thead>
                        <tr height="20" bgcolor="#A8DAF3">
                        
                   	        <!--<g:sortableColumn property="id" title="Application No" />
                        
                   	        <g:sortableColumn property="applicationDate" title="Application Date" />
                        
                   	        <g:sortableColumn property="applicationFor" title="Application For" />
                        
                   	        <g:sortableColumn property="applicationName" title="Application Name" />-->
                        
                   	        <th class="headngblue" align="center">Application No</th>
							<th class="headngblue" align="center">Application Date</th>
							<th class="headngblue" align="center">Application For</th>
							<th class="headngblue" align="center">Application Name</th>
							<th class="headngblue" align="center">Type</th> 
                   	        <th class="headngblue" align="center">Certificate For</th>
                   	     
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <%if(newIndApplicationDetailsInstanceList.size()==0){ %><tr><td colspan="6" height="25" align="center" class="txt4">List Is Empty</td></tr><%} %>
                    <g:each in="${newIndApplicationDetailsInstanceList}" status="i" var="indApplicationDetailsInstance">
                        <% 
                       
                       
                        SimpleDateFormat sdfDestination = new SimpleDateFormat("dd-MM-yyyy hh:mm");
   
                        String strDate = sdfDestination.format(indApplicationDetailsInstance.actualApplicationDate );
                        %>
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td align="center" height="25" class="txt4" ><u><g:link action="appProcessing" controller="applicationProcessingDetails" id="${indApplicationDetailsInstance.id}">${fieldValue(bean:indApplicationDetailsInstance, field:'id')}</g:link></u></td>
                            <td align="center" height="25"  class="txt4"><font face="Verdana" color="red"><%=strDate%></font></td>
                            <td align="center" height="25" class="txt4"><font face="Verdana" color="red">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationFor')}</font></td>
                            <td align="center" height="25" class="txt4"><font face="Verdana" color="red">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationName')}</font></td>
                            <td align="center" height="25" class="txt4"><font face="Verdana" color="red">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationType')}</font></td>
                            <td align="center" height="25" class="txt4"><font face="Verdana" color="red">${fieldValue(bean:indApplicationDetailsInstance, field:'certificateFor')}</font></td>
                        		
                        	<%if(indApplicationDetailsInstance.clarification){ %>
                        	                      	
                        	<td align="center" height="25" class="txt4"><a href="#" onclick="window.open('<%=request.getContextPath()%>/applicationProcessingDetails/viewClarification/${indApplicationDetailsInstance.id}', 'clarification', 'WIDTH=400,HEIGHT=250,scrollbars=1');"><img src="${createLinkTo(dir:'images',file:'Clarification.gif')}" border="0" align="center" alt="ADD OFFICE" ></img></a></td> 
                        	<%
                        	String strDate1
                        	Date newDate
                       		def isTruee = ApplicationProcessingDetails.findAll("from ApplicationProcessingDetails apd where apd.application=?  ",[indApplicationDetailsInstance])
                      		
							def  noOfClarificationDays = isTruee.clarificationDays
                      		System.out.println("-----------------"+isTruee)
                       		System.out.println("-----------------"+noOfClarificationDays)
                       		def appDate


							for(int iii =0;iii<isTruee.size();iii++){
							System.out.println("-----------------"+isTruee.get(iii).clarificationDays)
                       		if((!(isTruee.get(iii).clarificationDays==""))&&(!(isTruee.get(iii).clarificationDays==null))){
                       		System.out.println("----------66666666666-------"+isTruee.get(iii).clarificationDays)
                       		
                       		Calendar c = Calendar.getInstance();
									c.setTime(isTruee.get(iii).dateCreated);
									c.add(Calendar.DATE, (isTruee.get(iii).clarificationDays).toInteger());
									 newDate = c.getTime();
                       		
                       		System.out.println("bpdate--------------------------"+newDate)
                       		
                       		
                       		
                       		 SimpleDateFormat sdfDestination1 = new SimpleDateFormat("dd-MM-yyyy");
   
                        	 strDate1 = sdfDestination1.format(newDate );
                        	 
                        	 
                        	  SimpleDateFormat sdfDestination11 = new SimpleDateFormat("dd-MM-yyyy");
   
                        	 strDate11 = sdfDestination11.format(new Date());
                        	
                        	System.out.println("bpdate--------------------------"+strDate1)
                        	
                        	}
                        	}
                        	
                        	Date currentDate = new Date()
                        	
                        	if(strDate11>=strDate1){
                        	%>
                        	
                        	<td align="center" height="25" class="txt4"><a href="#" onclick="window.open('<%=request.getContextPath()%>/applicationProcessingDetails/viewReminder/${indApplicationDetailsInstance.id}', 'clarification', 'WIDTH=400,HEIGHT=250,scrollbars=1');"><b>Reminder</b></a></td> 
                        	<%}%>
                        	
                        	
                        	
                        	
                        	
                        	<%}else{ 
                        	
                        	
                        	def isTrue = ApplicationProcessingDetails.findAll("from ApplicationProcessingDetails apd where apd.application=?  ",[indApplicationDetailsInstance])
                      		
                        	
                        	if(isTrue.clarification.contains(true)&& !(isTrue.approve==false) && !(isTrue.reject==false)){
                        	%>
                       
                        	  <td align="center" height="25" class="txt4"><img src="${createLinkTo(dir:'images',file:'ClarificationReply.gif')}" border="0" align="center" alt="SUBMIT CLARIFICATION"></img></a></td> 
                     
                        	
                        	
                        	
                        	
                        	<%}
                        	}%>
                        	
                        	
                        	
                        	<%if(indApplicationDetailsInstance.inspection){ %>
                        	<td align="center" height="25" class="txt4"><a href="#" onclick="window.open('<%=request.getContextPath()%>/applicationProcessingDetails/viewInspection/${indApplicationDetailsInstance.id}', 'inspection', 'WIDTH=400,HEIGHT=250,scrollbars=1');"><img src="${createLinkTo(dir:'images',file:'Inspection.gif')}" border="0" align="center" alt="VIEW INSPECTION" ></img></a></td> 
                        	<%}%>
                        </tr>
                    </g:each>
                    <tr><td><g:paginate 
						 controller="userMaster"
						action="openSpcbHome" total="${totalPend}" /></td></tr>
                    </tbody>
      </table></td>
                      </tr>	
                      
                        
	  </table>
	  				<table width="95%">
<tr><td>&nbsp;</td></tr>

<tr><td width="8px" bgcolor="red"></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Applications Still in progress.</font></td></tr>

<tr><td width="8px" bgcolor="green"></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Completed Applications.</font></td></tr>

<tr><td width="8px"> <img src="${createLinkTo(dir:'images',file:'Clarification.gif')}" border="0" align="center" alt="ADD OFFICE" ></img></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Observation raised on this application.</font></td></tr>
<tr><td> <img src="${createLinkTo(dir:'images',file:'ClarificationReply.gif')}" border="0" align="center" alt="ADD OFFICE" ></img></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Reply to Observation raised on this application has been made.</font></td></tr>
<tr><td width="8px"> <img src="${createLinkTo(dir:'images',file:'Inspection.gif')}" border="0" align="center" alt="ADD OFFICE" ></img></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Inspection raised on this application.</font></td></tr>



</table>

            <br />
            <br />
          </div>
		  
		  
		  
		  <!--  
          <div id="country2">
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#A5CAF4" class="tab-txt" style="border-collapse:collapse;">
   
		  <tr>
		    <td bgcolor="#FFFFFF"><table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#cbcbcd" class="tab-txt" style="border-collapse:collapse;">
        			<thead>
                        <tr height="20" bgcolor="#A8DAF3">
                        
                   	       
							
							<th class="headngblue" align="center">Application No</th>
							<th class="headngblue" align="center">Application Date</th>
							<th class="headngblue" align="center">Application For</th>
							<th class="headngblue" align="center">Application Name</th>
							<th class="headngblue" align="center">Type</th>
                   	        <th class="headngblue" align="center">Certificate For</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <%if(pendingIndApplicationDetailsInstanceList.size()==0){ %><tr><td colspan="6" height="25" align="center" class="txt4">List Is Empty</td></tr><%} %>
                    <g:each in="${pendingIndApplicationDetailsInstanceList}" status="i" var="indApplicationDetailsInstance">
                       <% 
                        SimpleDateFormat sdfDestination = new SimpleDateFormat("dd-MM-yyyy hh:mm");
   
                        String strDate = sdfDestination.format(indApplicationDetailsInstance.actualApplicationDate );
                        %>
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td height="25" align="center" class="txt4"><g:link action="doGetShow" controller="indApplicationDetails" id="${indApplicationDetailsInstance.id}">${fieldValue(bean:indApplicationDetailsInstance, field:'id')}</g:link></td>
                        
                            <td height="25" align="center" class="txt4"><%=strDate%></td>
                        
                            <td height="25" align="center" class="txt4">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationFor')}</td>
                        
                            <td height="25" align="center" class="txt4">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationName')}</td>
                        
                            <td height="25" align="center" class="txt4">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationType')}</td>
                        
                            <td height="25" align="center" class="txt4">${fieldValue(bean:indApplicationDetailsInstance, field:'certificateFor')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
      </table></td>
		  </tr></table>
		  
            <br />
            <br />
          </div>
		  -->
		  
		  
		  
		  
		  
		  <div class="content" id="country3">
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
							
							<th align="center" class="headngblue" >Application No</th>
							<th align="center" class="headngblue" >Application Date</th>
							<th align="center" class="headngblue" >Application For</th>
							<th align="center" class="headngblue" >Application Name</th>
							<th align="center" class="headngblue" >Type</th>
                   	        <th align="center" class="headngblue" >Certificate For</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <%if(completedIndApplicationDetailsInstanceList.size()==0){ %><tr><td colspan="6" height="25" align="center" class="txt4">List Is Empty</td></tr><%} %>
                    <g:each in="${completedIndApplicationDetailsInstanceList}" status="i" var="indApplicationDetailsInstance">
                        <% 
                        SimpleDateFormat sdfDestination = new SimpleDateFormat("dd-MM-yyyy hh:mm");
   
                        String strDate = sdfDestination.format(indApplicationDetailsInstance.actualApplicationDate );
                        %>
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td height="25" align="center" class="txt4" ><u><g:link action="doGetShow" controller="indApplicationDetails" id="${indApplicationDetailsInstance.id}">${fieldValue(bean:indApplicationDetailsInstance, field:'id')}</g:link></u></td>
                            <td height="25" align="center" class="txt4" ><font face="Verdana" color="green"><%=strDate%></font></td>
                            <td height="25" align="center" class="txt4" ><font face="Verdana" color="green">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationFor')}</font></td>
                            <td height="25" align="center" class="txt4" ><font face="Verdana" color="green">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationName')}</font></td>
                            <td height="25" align="center" class="txt4" ><font face="Verdana" color="green">${fieldValue(bean:indApplicationDetailsInstance, field:'applicationType')}</font></td>
                            <td height="25" align="center" class="txt4" ><font face="Verdana" color="green">${fieldValue(bean:indApplicationDetailsInstance, field:'certificateFor')}</font></td>
                        </tr>
                    </g:each>
                     <tr><td><g:paginate 
						 controller="userMaster"
						action="openSpcbHome" total="${totalComp}" /></td></tr>
                    </tbody>
      </table></td>
		  </tr></table>
		  <table width="95%">
<tr><td>&nbsp;</td></tr>

<tr><td width="8px" bgcolor="red"></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Applications Still in progress.</font></td></tr>

<tr><td width="8px" bgcolor="green"></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Completed Applications.</font></td></tr>

<tr><td> <img src="${createLinkTo(dir:'images',file:'Clarification.gif')}" border="0" align="center" alt="ADD OFFICE" ></img></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Observation raised on this application.</font></td></tr>
<tr><td> <img src="${createLinkTo(dir:'images',file:'ClarificationReply.gif')}" border="0" align="center" alt="ADD OFFICE" ></img></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Reply to Observation raised on this application has been made.</font></td></tr>
<tr><td> <img src="${createLinkTo(dir:'images',file:'Inspection.gif')}" border="0" align="center" alt="ADD OFFICE" ></img></td><td><font face="Verdana" class="txt4">&nbsp;&nbsp;&nbsp;Inspection raised on this application.</font></td></tr>



</table>

            <br />
            <br />
          </div>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          </div>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  

      </div></td>
                            <td width="39" align="left" valign="top">&nbsp;</td>
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
</html>

