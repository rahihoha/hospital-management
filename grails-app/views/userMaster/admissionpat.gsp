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
	   
      <g:if test="${flash.message}">
											<div class="message">${flash.message}</div>
											</g:if>
							</div>  
				 
    <br/>
       
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
<g:form action="savepat" name="myform" method="post" >
		
		<table id="countrytabs" >

<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
     <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
     <tr>
              <br>
               <td width="95%" align="center" class="headngbig" bgcolor="#1F6FB7"><u></b><span style="color:white">ENTER DETAILS OF PATIENT :</b></u></span></td></tr>
             <tr></tr>
             <tr></tr><tr></tr><tr></tr><tr></tr></table>
             <table>
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
             <table  class="tblbdr">
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

             
             													<td align="left" bgcolor="#A8DAF3" class="headngblue">
																PATIENT NAME<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="patName" id="patName" value="">
													</td>	</tr>
            
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																AGE<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="patAge" id="patAge" value="">
													</td>	</tr>
            
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																SEX<span style="color:red">*</span>:</td>
													<td>	<input type="radio" name="patSex" id="patSex" value="male" checked>Male
													<input type="radio" name="patSex" id="patSex" value="female">Female
												</td>	</tr>
                         <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
															DATE OF ADMISSION<span style="color:red">*</span>:</td>
														<td>	<input type="date" name="patDate" id="patDate" value="">
													</td>	</tr>
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
															DOCTOR ASSIGNED<span style="color:red">*</span>:</td>
												<td>	<input type="text" name="patDoc" id="patDoc" value="">
													
						
													</td>	</tr>
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
															ROOM TYPE<span style="color:red">*</span>:</td>
												<td>	<input type="text" name="patRoomT" id="patRoomT" value="">
													
												
													</td>	</tr>
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
														ROOM NO.<span style="color:red">*</span>:</td>
												
												<td>	<input type="text" name="patRoom" id="patRoom" value="">
													
						
													</td>	</tr>
            
            
            
            
            
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																ADDRESS<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="patAdd" id="patAdd" value="">
													</td>	</tr>
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																MOBILE<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="patMob" id="patMob" value="">
													</td>	</tr>
													<tr>
            <td></td>
            <td>
            <input type="submit" name="save" id="save" value="SAVE" class="actionbutton">
            </td>
            </tr>
             </table>
           </table>
     </table>
  	</table></td></tr>
</table>           			</g:form>
            <br />
            <br />

          </div>
		  

		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          </div>
	  
<script language="JavaScript" type="text/javascript">
 var frmvalidator  = new Validator("myform");
    frmvalidator.EnableFocusOnError(false); 
    frmvalidator.EnableMsgsTogether();  

 
	
 frmvalidator.addValidation("patName","req","Please enter Patient Name");
 frmvalidator.addValidation("patDoc","req","Please enter Doctor");
  frmvalidator.addValidation("patRoomT","req","Please enter RoomType");
 frmvalidator.addValidation("patMob","req","Please enter Mobile no");
 frmvalidator.addValidation("patAdd","req","Please enter Address");
 frmvalidator.addValidation("patDate","req","Please enter Date of admission");
 frmvalidator.addValidation("patMob","numeric","mob no should be numeric");
 frmvalidator.addValidation("patDate","req","Please enter Date of admission");
 
 frmvalidator.addValidation("patRoom","numeric","RoomNo must be numeric"); 
 
 frmvalidator.addValidation("patSex","req","Please enter Sex");
 frmvalidator.addValidation("patAge","numeric","age must be numeric"); 
 frmvalidator.addValidation("patAge","req","enter age"); 
 
  </script>
      </div></td>
                            <td width="132" align="left" valign="top">&nbsp;</td>
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

</body>
<HEAD> 
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE"> 
<META HTTP-EQUIV="Expires" CONTENT="-1">
</HEAD>
</html>


