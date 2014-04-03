<head>
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'gen_validatorv31.js')}"></script>
<g:javascript library="prototype" />

<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'main.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'anylinkmenu.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'tabcontent.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'stylesheet.css')}" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'style.css')}" />
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'menucontents.js')}" ></script>
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'anylinkmenu.js')}" ></script>
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'tabcontent.js')}" ></script>

</head>
<body>
<g:form name="billing" method="post" action="addToBill" >
<div align="center" style="border":1px solid gray;  margin-bottom: 1em; padding: 10px">
<table class="tblbdr">
<tr bgcolor="#D1D1D1">
			<td   align="center" valign="middle"  class="headngblue">BILLING SYSTEM</td>
		</tr> 
			<tr><td>

</td></tr>	
			<tr><td>
				<table width="90%"  border="0" cellpadding="1" cellspacing="1" class="tblbdr">
					<tr>
						<td bgcolor="#E8F6F9" align="center" class="headngblue">
							<g:select optionKey="id" from="${Fee.list()}" name="testN" class="txt4" ></g:select>
						<input type="hidden" name="appId" value="${app.id}">
						
						</td>
						
					</tr>
					<tr>
					<td colspan="5" align="center"><input type="submit" name="Add" value="Add" class="actionbutton"></td>
					</tr>
				<span class="txt" style="color: navy"><b>Click Add button to enter multiple details</b></span>
					
						
					
			  	</table>
				
				
 				<tr align="left">
				<td align="left"><span class="txt" style="color: navy"><b>List of Test Details added.</b></span>
			
				
				<div align="left" style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
 <table width="90%"  border="0" align="left" cellpadding="0" cellspacing="0" class="tblbdr" >
 					
 					<tr><td><table  class="tblbdr">

 <tr bgcolor="#A8DAF3">
                        <td width="250px" align="center" class="headngblue" ><div  class="style3">Test Name</div></td>
                        <td width="150px" align="center" class="headngblue" ><div  class="style3">Test Cost</div></td>
                    </tr>
</g:form>

 <g:each in="${billList}" status="i" var="billInstance">
  <tr align="center" >
  						<td bgcolor="#E8F6F9"><span class="txt style6">${billInstance.fee.testName}
                        </span></td>
                        <td bgcolor="#E8F6F9"><span class="txt style6">${billInstance.fee.testFee}
                        </span></td>
                    
                              
        </tr>		
      </g:each>		
 					</table></td></tr>
						
				
<tr>
<td><form action="/hospital/userMaster/billTotal" method="post">
<input type="hidden" name="appId" value="${app.id}">
<input type="submit" class="actionbutton" id="submit" value="Total Bill">					  
</form>
<td>
</tr>
  </table>
	  
  		</div>
				
			
				</td>
				</tr>
</table>
</div>

 
 <!--
 <script language="JavaScript" type="text/javascript">
  // var frmvalidator  = new Validator("waterSolidWasteGen");
  // frmvalidator.EnableFocusOnError(false); 
  // frmvalidator.EnableMsgsTogether();  
  // frmvalidator.addValidation("description","req","please enter Description");
  // frmvalidator.addValidation("quantity","numeric","Quantity should be numeric");
  // frmvalidator.addValidation("methodCollection","req","please enter Method of Collection");
  // frmvalidator.addValidation("methodDisposal","req","please enter Mode of Disposal");
 -->
  
 </script>   
 
</body>