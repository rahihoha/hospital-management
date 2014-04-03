<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>




<calendar:resources lang="en" theme="aqua"/>
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'calendar.css')}" />

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>New Registration</title>
<link rel="stylesheet" type="text/css"
	href="${createLinkTo(dir:'css',file:'main.css')}" />
<link rel="stylesheet" type="text/css"
	href="${createLinkTo(dir:'css',file:'anylinkmenu.css')}" />
<link rel="stylesheet" type="text/css"
	href="${createLinkTo(dir:'css',file:'tabcontent.css')}" />
<link rel="stylesheet" type="text/css"
	href="${createLinkTo(dir:'css',file:'stylesheet.css')}" />
<link rel="stylesheet" type="text/css"
	href="${createLinkTo(dir:'css',file:'style.css')}" />
<script type="text/javascript"
	src="${createLinkTo(dir:'js',file:'menucontents.js')}"></script>
<script type="text/javascript"
	src="${createLinkTo(dir:'js',file:'anylinkmenu.js')}"></script>
<script type="text/javascript"
	src="${createLinkTo(dir:'js',file:'tabcontent.js')}"></script>
<script type="text/javascript"
	src="${createLinkTo(dir:'js',file:'gen_validatorv31.js')}"></script>
<script type="text/javascript"
	src="${createLinkTo(dir:'js',file:'md5.js')}"></script>
<link rel="stylesheet" type="text/css"
	href="${createLinkTo(dir:'css',file:'design.css')}" />
<script type="text/javascript"
	src="${createLinkTo(dir:'js',file:'tabs.js')}"></script>

<g:javascript library="prototype" />
<g:javascript>
function duplicate()
 {
 <%
 
  
  
 for(int x=0;x<userList.size();x++){ %>

var a = "<%=userList[x]%>";
var j = a.toUpperCase();

var b = document.getElementById('userName').value;
var t = b.toUpperCase();


if(j==t){
alert("this user name already exits");
document.getElementById('userName').value ="";
}
  
<%} %>
}
</g:javascript>

<g:javascript>
function duplicateId()
 {
 <%
 
  
  
 for(int x=0;x<empIdList.size();x++){ %>

var j = "<%=empIdList[x]%>";

var b = document.getElementById('empId').value;
if(j==b){
alert("this employee id already has an account");
document.getElementById('empId').value ="";
}
  
<%} %>
}
</g:javascript>

<script type="text/javascript" src="js/tabcontent.js"></script>
<script type="text/javascript">
anylinkmenu.init("menuanchorclass")
</script>

<script language="javascript" type="text/javascript">
<!--
function popitup(url) {
	newwindow=window.open(url,'name','height=200px,width=500px');
	if (window.focus) {newwindow.focus()
	}
	return false;
}
-->
</script>


</head>

<body>
<form action="set" method="get" id="myform" name="myform">
<table width="1003" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
	
		<td align="left" valign="top">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="91" align="left" valign="top" class="bgtop"><!-- code for spcbHeader  -->
				<g:include controller="userMaster" action="showSpcbHeader" /></td>
			</tr>
			<tr>
				<td height="32" align="left" valign="top"
					background="${createLinkTo(dir:'images2/gif',file:'button_BG.gif')}">
	<g:include controller="userMaster" action="showMenu" />
				
			</tr>
			<tr>
							<td align="left" valign="top">
				<table width="1003" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="224" align="left" valign="top" bgcolor="#DEEED0">
							 <g:include
							controller="userMaster" action="showIndexMenu" />
						</td>
						<td width="1" align="left" valign="top" bgcolor="#ADBFCB"></td>
						<td width="778" align="left" valign="top">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="1" valign="top"></td>
							</tr>
							<tr>
								<td><imgsrc="${createLinkTo(dir:'images2',file:'img.jpg')}" width="778"
									height="134" /></td>
							</tr>
									<tr>
										<td height="0" align="left" valign="top">
										<table width="778" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="82" align="left" valign="top">&nbsp;</td>
												<td align="left" valign="top">
												<div style="padding: 0px 0px 0px 0px;"><br />
												<div style="" :1px solidgray; width:720px; margin-bottom: 1em; padding: 10px" >
																	<table width="105%" border="0" align="center" cellpadding="0"
													cellspacing="1" bgcolor="#A5CAF4">

													<tr>
 	 <td valign="top" bgcolor="#FFFFFF">
 	 <table width="100%" border="0" align="left"
 	 cellpadding="2" cellspacing="1" class="tblbdr">
 	 <tr align="center" bgcolor="#F4F7FB">
 	 <td width="30%" align="right" valign="middle"
 	 bgcolor="#A8DAF" class="headngblue">User
 	 Name<span style="color:red">*</span>:</td>
 	 <td width="70%" align="left" bgcolor="#E8F6F9"> 
 	 <input name="userName" id="userName" type="text" class="txt4"
 	  value="${fieldValue(bean:newRegInstance,field:'userName')}"
 	 size="25" /> 
 	
	<%System.out.println("a"+params.userName);%>
 	 </td>
 	 </tr>
 	 <tr align="center" bgcolor="#F4F7FB">
 	 <td width="30%" align="right" valign="middle" bgcolor="#A8DAF" class="headngblue">Employee Id
 	 <span style="color:red">*</span>:</td>
 	 <td width="70%" align="left" bgcolor="#E8F6F9"> 
 	 <input type="text" name="empId" id="empId" class="txt4"
 	 value="${fieldValue(bean:newRegInstance,field:'empId')}"
 	 size="25" /> 
															
																	
																	
																													
																
																	
																	</td>
															</tr>
	<tr align="center" bgcolor="#F4F7FB">
 	 <td width="30%" align="right" valign="middle"
 	 bgcolor="#A8DAF" class="headngblue">Password<span style="color:red">*</span>:</td>
 	 <td width="70%" align="left" bgcolor="#E8F6F9" >
 	 <input name="password" id="password" type="password" class="txt4"
 	  value="${fieldValue(bean:newRegInstance,field:'password')}"
 	 size="25" /> 
 	
							
																	</td>
															</tr>
	<tr align="center" bgcolor="#F4F7FB">
 	 <td width="30%" align="right" valign="middle"
 	 bgcolor="#A8DAF" class="headngblue">Confirm Password<span style="color:red">*</span>:</td>
 	 <td width="70%" align="left" bgcolor="#E8F6F9"> 
 	 <input name="confirmPass" id="confirmPass" type="password" class="txt4"
 	  value="${fieldValue(bean:newRegInstance,field:'confirmPass')}"
 	 size="25" /> 
							
																	</td>
															</tr>
	<tr align="center" bgcolor="#F4F7FB">
 	 <td width="30%" align="right" valign="middle"
 	 bgcolor="#A8DAF" class="headngblue">Security Question :</td>
 	 <td width="70%" align="left" bgcolor="#E8F6F9"> 
 	 <input name="securityQues" id="securityQues" type="text" class="txt4"
 	  value="${fieldValue(bean:newRegInstance,field:'securityQues')}"
 	 size="25" /> 
 	 </td>
 	 </tr>
 	 <tr align="center" bgcolor="#F4F7FB">
 	 <td width="30%" align="right" valign="middle"
 	 bgcolor="#A8DAF" class="headngblue">Security Answer :</td>
 	 <td width="70%" align="left" bgcolor="#E8F6F9"> 
 	 <input name="securityAns" id="securityAns" type="text" class="txt4"
 	  value="${fieldValue(bean:newRegInstance,field:'securityAns')}"
 	 size="25" /> 
 	 </td>
 	 </tr>
 	 																														
															
														</table>
														
														</td>
													</tr>




												</table>

 											<table width="95%"> 
 											<tr>
													<td width="15%">&nbsp;</td>
														<td colspan="4" align="left" class="txtR">Fields marked <span style="color:red">*</span> are mandatory</td>
													</tr>
													</table>

												<table width="95%">
												
													
													<tr>
														<td  align="right"><input type="submit" name="save"
															value="Save" class="actionbutton"></td>
														<td align="left"></td>
													</tr>
												</table>







											</div>
												</td>
												<td width="132" align="left" valign="top">&nbsp;</td>
											
										</td>
									</tr>

								</table>
								</td>
							</tr>

						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
			</table>
		</td>
	</tr>
</table>
</form>

<script language="JavaScript" type="text/javascript">
 var frmvalidator  = new Validator("myform");
    frmvalidator.EnableFocusOnError(false); 
    frmvalidator.EnableMsgsTogether();  

 
	
 frmvalidator.addValidation("userName","req","Please enter User Name");
 frmvalidator.addValidation("empId","req","Please enter Emlpoyee Id");
  frmvalidator.addValidation("password","req","Please enter Password Name");
 
 frmvalidator.addValidation("confirmPass","req","Please Confirm Password");
 frmvalidator.addValidation("empId","numeric","employee id must be numeric"); 
 
  </script>



</body>
<HEAD>
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<META HTTP-EQUIV="Expires" CONTENT="-1">
</HEAD>
</html>


