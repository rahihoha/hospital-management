<head>
<% String cont=request.getContextPath()%>
<script type="text/javascript">

var consentManagement={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
consentManagement.items=[
	["Apply For Concent", "#"]
]

var labManagement={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 


var user_management_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
user_management_link.items=[
	["User Profile Manage", "<%=cont%>/userProfile/create"],
	["Role Management", "<%=cont%>/roleMaster/create"],
	["Search SPCB User", "#"]
]

var master_data_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
master_data_link.items=[
	["Office Administration", "<%=cont%>/officeMaster/create"],                    
	["District Administration", "<%=cont%>/districtMaster/create"],
	["Tehsil Administration", "<%=cont%>/tehsilMaster/create"],
	["Group Administration", "<%=cont%>/groupMaster/create"],
	["Attach/Remove District from Group", "<%=cont%>/groupDistrictMaster/testOm"]
]

var manage_industry_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
manage_industry_link.items=[
	["Industry Registration", "<%=cont%>/industryRegMaster/create"],                    
	["Industry Profile", "<%=cont%>/industryRegMaster/list"]	 
] 

var change_password_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
change_password_link.items=[
	["SPCB User", "<%=cont%>/userMaster/changePassword"],                    
	["Industry User", "<%=cont%>/industryRegMaster/changePassword"]	 
]

var manage_cess_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
manage_cess_link.items=[
	["Apply Cess return", "<%=cont%>/cessReturn/createSingle"],                    
	["Cess Return Filled List", "<%=cont%>/cessReturn/cessIndustryCompletedList"],	
	["Cess Return Notices", "<%=cont%>/cessReturn/cessNotices"] 
] 

</script>
</head>



<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="31" valign="top"><table width="224" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="6" align="left" valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'left_nav.gif')}" width="6" height="31" /></td>
                    <td width="218" height="31" align="left" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'left_midlle.gif')}"><table width="218" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="11" align="left" valign="middle"><img src="${createLinkTo(dir:'images2/gif',file:'bullet.gif')}" width="11" height="10" /></td>
                        <td><!--<a href="#" ><span class="leftlink">Apply For Concent</span></a>-->			
                        <!--<g:link controller="indApplicationDetails" action="doEdit"><span class="leftlink">Apply For Consent</span></g:link>-->
                             <g:link controller="indApplicationDetails" action="applyConsent"><span class="leftlink">Apply For Consent</span></g:link>
						</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
         	   <tr>
                <td height="3" valign="top"></td>
              </tr>
			  
			  
              <tr>
                <td valign="top"><table width="224" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="6" align="left" valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'left_nav.gif')}" width="6" height="31" /></td>
                    <td width="218" height="31" align="left" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'left_midlle.gif')}" ><table width="218" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="11" align="left" valign="middle"><img src="${createLinkTo(dir:'images2/gif',file:'bullet.gif')}" width="11" height="10" /></td>
                        <td>
						<!--<a href="#" ><span class="leftlink">Industry Profile</span></a>-->
						<g:link controller="industryRegMaster" action="showForIndustry"><span class="leftlink">Industry Profile</span></g:link>
						
						</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
			  
			  <tr>
                <td height="3" valign="top"></td>
              </tr>
			  
			  
              <tr>
                <td valign="top"><table width="224" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="6" align="left" valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'left_nav.gif')}" width="6" height="31" /></td>
                    <td width="218" height="31" align="left" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'left_midlle.gif')}" ><table width="218" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="11" align="left" valign="middle"><img src="${createLinkTo(dir:'images2/gif',file:'bullet.gif')}" width="11" height="10" /></td>
                        <td><!--<a href="#" ><span class="leftlink">Change Password</span></a>-->
                        <g:link controller="industryRegMaster" action="changePassword"><span class="leftlink">Change Password</span></g:link>
						</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
				  
              <tr>
                <td height="3" valign="top"></td>
              </tr>
				  
              <tr>
                <td valign="top"><table width="224" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="6" align="left" valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'left_nav.gif')}" width="6" height="31" /></td>
                    <td width="218" height="31" align="left" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'left_midlle.gif')}" ><table width="218" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                     <!--      <td width="11" align="left" valign="middle"><img src="${createLinkTo(dir:'images2/gif',file:'bullet.gif')}" width="11" height="10" /></td> -->
                        <td><!--<a href="#" class="leftlink">Fee Calculator</a>-->
                     <!--   	<g:link controller="roleProfileAssignment" action="feeCalculator"><span class="leftlink">Fee Calculator</span></g:link> -->
                        </td>
                      </tr>
					  
					  <tr>
               			 <td height="3" valign="top"></td>
             		 </tr>
                    </table></td>
                  </tr>
				  
                </table></td>
              </tr>

			  <!--<tr>
                <td height="150" align="left" valign="middle" bgcolor="#E8F1F3" class="pollution">The Pollution Control Board has<br />
                  been established as a regulatory
                  authority for implementing variious pollution
                  control laws. <span class="pollution2">The board is committed to provide polloution free environment to the people of state. The Board has undertaken various studies of underground water, solil and air to take remedial steps to control pollution.</span></td>
              </tr>-->

              <tr>
                <td valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'feedback.gif')}" width="224" height="64" /></td>
              </tr>
              <tr>
                <td height="1" valign="top"></td>
              </tr>
              <tr>
                <td valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'query.gif')}" width="224" height="64" /></td>
              </tr>
              <tr>
                <td valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'grad.gif')}" width="224" height="296" /></td>
              </tr>
            </table>

</body>