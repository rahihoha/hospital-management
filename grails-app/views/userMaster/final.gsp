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
<table class="tblbdr" width="34%">
<tr bgcolor="#D1D1D1">
			<td   align="center" valign="middle"  class="headngblue">BILLING SYSTEM</td>
		</tr> 
		<div align="left" style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
 <table width="90%"  border="0" align="left" cellpadding="0" cellspacing="0" >
 					
 				<tr></tr><tr>	
<td width="250px" class="headngblue" ><div  class="style3">Patient name: ${app.patName}</div></td>
                        <tr><td><table  class="tblbdr">

 <tr bgcolor="#A8DAF3">
                        <td width="250px" align="center" class="headngblue" ><div  class="style3">Test Name</div></td>
                        <td width="150px" align="center" class="headngblue" ><div  class="style3">Test Cost</div></td>
                    </tr>

 <g:each in="${billList}" status="i" var="billInstance">
  <tr align="center" >
  						<td bgcolor="#E8F6F9"><span class="txt style6">${billInstance.fee.testName}
                        </span></td>
                        <td bgcolor="#E8F6F9"><span class="txt style6">Rs. ${billInstance.fee.testFee}
                        </span></td>
                    
                              
        </tr>		
      </g:each>		
 			<tr>
<td bgcolor="#E8F6F9" align="center"><span class="actionbutton">TOTAL BILL
                        </span></td>
                    
<td bgcolor="#E8F6F9" align="center"><span class="txt style6">Rs. ${total}
                        </span></td>
                </tr><tr>
<td bgcolor="#E8F6F9" align="center">
<form action="discharge" method="post">
<input type="hidden" value="${app.id}" name="patName">
<input type="submit" value="back" >
<form>
<td bgcolor="#E8F6F9" align="center">
</td>				
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