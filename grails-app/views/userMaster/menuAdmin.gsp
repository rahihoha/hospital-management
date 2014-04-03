<head>
<% String cont=request.getContextPath();%>
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
	["Approval Rights Management", "<%=cont%>/consentApprovalRights/create"],
	["Search SPCB User", "<%=cont%>/userProfile/list"]
]

var cess_links={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
cess_links.items=[
	["Cess Pending Application", "<%=cont%>/cessPendingDetails/cessPendingReturn"],
	["Cess Unattended Application", "<%=cont%>/cessPendingDetails/cessUnattendedApplications"],
	["Cess Defaulters", "<%=cont%>/cessPendingDetails/cessDefaulter"]
	
]

var master_data_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
master_data_link.items=[
	["Office Administration", "<%=cont%>/officeMaster/create"],                    
	["District Administration", "<%=cont%>/districtMaster/create"],
	["Tehsil Administration", "<%=cont%>/tehsilMaster/create"],
	["Group Administration", "<%=cont%>/groupMaster/create"],
	["Attach/Remove District in Consent Group", "<%=cont%>/groupDistrictMaster/grpDist"],
	["Attach/Remove District in Cess Group", "<%=cont%>/cessGroupDistrictMaster/grpDist"],
	["Attach/Remove District in MSW Group", "<%=cont%>/municipalGroupDistrictMaster/grpDist"],
	["Manage Department", "<%=cont%>/departmentMaster/create"],
	["Manage Designation", "<%=cont%>/designationMaster/create"]
]

var consent_master_data_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
consent_master_data_link.items=[
	["Air Emission Pollution Control Equipment", "<%=cont%>/airEmiControlMeasureMaster/create"],
	["Ambient Air Quality Standard Master", "<%=cont%>/ambientAirQualityStandardMaster/create"],
		
	["Unit Name Administration", "<%=cont%>/unitMaster/create"],
		
	["Water Source Administration", "<%=cont%>/waterSourceMaster/create"],
	["Water Consumption Administration", "<%=cont%>/waterUsesMaster/create"],
	["Water Mode Uses", "<%=cont%>/waterModeUseMaster/create"],
	["Water Disposal Mode", "<%=cont%>/waterDisposalModeMaster/create"],
	["Water Waste Treatment Category", "<%=cont%>/waterWasteTreatmentCategoryMaster/create"],
	["Water Treatment Status", "<%=cont%>/waterTreatmentStatusMaster/create"],
	["Waste Water Effluent Quality Parameter", "<%=cont%>/waterTreatedEffluentQualityMaster/create"],
	["Flue Gas Emission Quality Parameter", "<%=cont%>/flueGasEmissionQualityParameterMaster/create"],
	["Process Emission Quality Parameter", "<%=cont%>/processEmissionQualityParameterMaster/create"],
	["Hazardous Source Gen Master", "<%=cont%>/hazardousSourceGenMaster/createx"],
	["Hazardous Category Master", "<%=cont%>/hazardousSourceGenMaster/create"],
	["Document list Master", "<%=cont%>/documentChecklistMaster/create"]	
]

var waste_master_data_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
waste_master_data_link.items=[
	["Hazardeous Waste Type", "<%=cont%>/typeOfHazardeousWaste/create"],
	["Hazardeous Waste Source", "<%=cont%>/sourcesOfHazardeousWaste/create1"],
	["Hazardeous Waste Storage Mode", "<%=cont%>/modeOfStorageDisposalDetails/create"],
	["Hazardeous Waste Characteristics", "<%=cont%>/characteristicsOfHazardeousWaste/create"],
	["Hazardeous Waste Disposal Method", "<%=cont%>/methodsOfHazardeousDisposalDetails/create"]
]

var manage_industry_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
manage_industry_link.items=[
	<!--["Industry Registration", "<%=cont%>/industryRegMaster/create"],  -->              
	["Industry Profile", "<%=cont%>/industryRegMaster/list"],	
	["Manage Industry Type", "<%=cont%>/industryTypeMaster/create"],
	["Manage Surrounding Master", "<%=cont%>/surroundingMaster/create"],
	["Industry Ownership Master", "<%=cont%>/indOwnerMaster/create"]
	
] 

var change_password_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
change_password_link.items=[
	["SPCB User", "<%=cont%>/userMaster/changePassword"],                    
	["Industry User", "<%=cont%>/industryRegMaster/changePassword"]	 
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
                        <td><!--<g:link controller="userProfile" action="index"><span class="leftlink">User Management</span></g:link>-->		
                        	<a href="#" class="menuanchorclass" rel="user_management_link"><span class="leftlink">User Management</span></a>
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
                        <td><g:link controller="workFlowMaster" action="create"><span class="leftlink">Workflow Administration</span></g:link></td>
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
                        <td><a href="#" class="menuanchorclass" rel="master_data_link"><span class="leftlink">Data Administration</span></a></td>
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
                        <td><a href="#" class="menuanchorclass" rel="consent_master_data_link"><span class="leftlink">Consent Data Administration</span></a></td>
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
                        <td><a href="#" class="menuanchorclass" rel="waste_master_data_link"><span class="leftlink">Waste Data Administration</span></a></td>
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
                        <td><a href="#" class="menuanchorclass" rel="manage_industry_link"><span class="leftlink">Manage Industry</span></a></td>
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
                        <td><g:link controller="groupMaster" action="searchUtility"><span class="leftlink">Consent Application Search</span></g:link></td>
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
                        <td><g:link controller="roleProfileAssignment" action="searchUtility"><span class="leftlink">Consent Application Summary</span></g:link></td>
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
                        <td><a href="#" class="menuanchorclass" rel="change_password_link"><span class="leftlink">Change Password</span></a></td>
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
                <td valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'grad.gif')}" width="224" height="70" /></td>
              </tr>
            </table>
</body>