<head>
<% String cont=request.getContextPath();%>
<script type="text/javascript">

var master_data_link={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
master_data_link.items=[
	["Genarate Cess Defaulter Notice", "<%=cont%>/cessPendingDetails/cessDefaulter"],
	["View Cess Defaulter Notice", "<%=cont%>/cessPendingDetails/viewCessDefaulterPage"]
]

var consentManagement={divclass:'anylinkmenu', inlinestyle:'', linktarget:''} 
consentManagement.items=[
	["Apply For Concent", "#"]
]

</script>
</head>



<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top"><table width="224" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="6" align="left" valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'left_nav.gif')}" width="6" height="31" /></td>
                    <td width="218" height="31" align="left" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'left_midlle.gif')}" ><table width="218" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="11" align="left" valign="middle"><img src="${createLinkTo(dir:'images2/gif',file:'bullet.gif')}" width="11" height="10" /></td>
                        <td><g:link controller="cessPendingDetails" action="cessPendingReturn"><span class="leftlink">Cess Management Applications</span></g:link></td>
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
                        <td><a href="#" class="menuanchorclass" rel="master_data_link"><span class="leftlink">Cess Defaulter</span></a></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              
              <tr>
                <td valign="top"><table width="224" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="6" align="left" valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'left_nav.gif')}" width="6" height="31" /></td>
                    <td width="218" height="31" align="left" valign="middle" background="${createLinkTo(dir:'images2/gif',file:'left_midlle.gif')}" ><table width="218" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="11" align="left" valign="middle"><img src="${createLinkTo(dir:'images2/gif',file:'bullet.gif')}" width="11" height="10" /></td>
                        <td><g:link controller="cessReturnDetails" action="searchUtility"><span class="leftlink">Cess Application Search</span></g:link></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
			  
		 

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