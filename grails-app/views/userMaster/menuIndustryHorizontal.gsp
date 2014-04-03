<table width="1003" border="0" cellspacing="0" cellpadding="0">
          <tr>
          <% String cont=request.getContextPath(); %>
        <td height="32" align="center" valign="middle" ><g:link controller="indUser" action="openIndustryHome"><span class="top-lnks">Home</span></g:link></td>
            
		<td width="2" align="left" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
        <td align="center" valign="middle">
        <g:link controller="indUser" action="openIndustryHome"><span class="top-lnks">Consent Management</span></g:link>
        <!--<a href="#" class="menuanchorclass" rel="consentManagement"><span class="top-lnks">Consent Management</span></a>-->
        </td>    
		<td width="1" align="left" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
		<td align="center" valign="middle" ><span class="top-lnks">Laboratory Management</span></td>
           
	   <td width="1" align="center" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
		<td align="center" valign="middle" ><g:link controller="hazardeousWasteAuthApp" action="list"><span class="top-lnks">Waste Management</span></g:link></td>
          
	    <td width="1" align="center" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
		<td align="center" valign="middle" ><g:link controller="cessReturn" action="cessIndustryCompletedList"><span class="top-lnks">CESS Management</span></g:link></td>
         
	   <td width="2" align="center" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
		<td align="center" valign="middle" ><!--
		<a href="<%=cont%>/userMaster/knowledgeBase.gsp" >-->
		<span class="top-lnks">Knowledge Base</span></a></td>
           
	   <!--<td width="2" align="center" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
		<td align="center" valign="middle" ><a href="#" class="menuanchorclass" rel="anylinkmenu10"><span class="top-lnks"><span class="top-lnks">Change Password</span></a></td>
        
	   <td width="2" align="center" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
		<td align="center" valign="middle" ><a href="#"><span class="top-lnks">Feedback/Query</span></a></td>
        
	<td width="2" align="center" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
            <td align="center" valign="middle" ><a href="#"><span class="top-lnks">Public Grievance</span></a></td>-->
        
		<td width="2" align="center" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
        <td align="center" valign="middle" ><g:link controller="userMaster" action="logout"><span class="top-lnks">Logout</span></g:link></td>
		<td width="2" align="center" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'button_spacer.gif')}"></td>
        
		  </tr>
        </table>
