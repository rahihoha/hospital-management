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
<table width="100%" border="0" >
						 <tr height="10px" width="100%">
	<a href="home"><span id="span10" style="font: normal px verdana; color: white;align="left"><u><b>
HOME</u></b></span> </td>					 
						 
		
						 	<td></td>
						 	<td class="top-lnks" align="right">  </td>
						 </tr>
					 </table>
						
			</tr>
			<tr>
							<td align="left" valign="top">
				<table width="1003" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="224" align="left" valign="top" bgcolor="#DEEED0">
			</td>
            <td width="1" align="left" valign="top" bgcolor="#ADBFCB"></td>
            <td width="778" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="1" valign="top"></td>
              </tr>
              <tr>
                <td><img src="${createLinkTo(dir:'images2',file:'abc.jpg')}" width="778" /></td>
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
							
							<td width="80%">&nbsp;</td>
					   </tr></table>
				</td>
              </tr>
             
                
                   
                    
                    <tr>
                
                    <tr>
                      <td height="0" align="left" valign="top"><table width="778" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="82" align="left" valign="top">&nbsp;</td>
                            <td align="left" valign="top"><div style="padding:0px 0px 0px 0px;" >
	  
        
				 <div id="t" align="center" >
										
					
											<g:if test="${flash.message}">
												<div class="style1"> 
													<span class="error">${flash.message}</span><br/>
												</div>
											</g:if>
					
											</div>
    <br/>

<table class="tblbdr" width="34%">
<tr bgcolor="#D1D1D1">
			<td   align="center" valign="middle"  class="headngblue">ADD USER</td>
		</tr> 
		<div align="left" style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
 <table width="90%"  border="0" align="left" cellpadding="0" cellspacing="0" >
 					
 				<tr></tr>
 <tr bgcolor="#A8DAF3">
                        <td width="150px" align="center" class="headngblue" ><div  class="style3">Employee Id</div></td>
                        <td width="250px" align="center" class="headngblue" ><div  class="style3">User Name</div></td>
                        <td width="150px" align="center" class="headngblue" ><div  class="style3">Password</div></td>
                    </tr>

 <g:each in="${userList}" status="i" var="newRegInstance">
  <tr align="center" >
  						<td bgcolor="#E8F6F9"><span class="txt style6">${newRegInstance.empId}
                        </span></td>
                        <td bgcolor="#E8F6F9"><span class="txt style6"> ${newRegInstance.userName}
                        </span></td>
                        <td bgcolor="#E8F6F9"><span class="txt style6"> ${newRegInstance.password}
                        </span></td> <td> 
                              <form method="post" action="saveUser">
                              <input type="hidden" name="id" value=${newRegInstance.id}>
                              <input type="submit" value="add" class="actionbutton">
                              </form></td> 
        </tr>		
      </g:each>		
	  
  		</div>
				
			
				</td>
				</tr>
</table>
</div>

 
 </script>   
 
</body>