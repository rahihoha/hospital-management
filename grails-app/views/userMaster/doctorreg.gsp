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
				</td>
      </tr>
    
           <tr>
        <td align="left" valign="top"><table width="1003" border="0" cellspacing="0" cellpadding="0">
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
	<a href="home"><span id="span10" style="font: normal px verdana; color: white;align="left"><u><b>
HOME</u></b></span> </td>					 
						 
		
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
                      <td height="0" align="left" valign="top"><table width="778" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="82" align="left" valign="top">&nbsp;</td>
                            <td align="left" valign="top"><div style="padding:0px 0px 0px 0px;" >
	  
        
				 
    <br/>
        	<g:if test="${flash.message}">
												<div class="style1"> 
													<span class="error">${flash.message}</span><br/>
												</div>
											</g:if>
					
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
		<g:form action="savedoc" name="myform" method="post" >
		
		<table id="countrytabs" >

<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
    
         <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
     <tr>
              <br>
 <tr></tr>
 
               <td width="95%" align="center" class="headngbig" bgcolor="#1F6FB7"><u></b><span style="color:white">ENTER DETAILS OF PATIENT :</b></u></span></td></tr>
             <tr></tr>
             <tr></tr><tr></tr><tr></tr><tr></tr></table>
             <table>
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
             <table  class="tblbdr">
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

             
             													<td align="left" bgcolor="#A8DAF3" class="headngblue">
																Doctor's Name<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="docName" id="docName" value="">
													</td>	</tr>
            
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																Doctor's Age<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="docAge" id="docAge" value="">
													</td>	</tr>
            
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																Doctor's Sex<span style="color:red">*</span>:</td>
													<td>	<input type="radio" name="docSex" id="docSex" value="male" checked>Male
													<input type="radio" name="docSex" id="docSex" value="female">Female
													</td>	</tr>
                         <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
															Doctor's Department<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="docDept" id="docDept" value="">
													</td>	</tr>
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
															Doctors Contact no. <span style="color:red">*</span>:</td>
<td>	<input type="text" name="docNo" id="docNo" value="">
													</td>	</tr>
           <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																Doctor's Timings<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="docTime" id="docTime" value="">
													</td>	</tr>
           
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																Doctor's Email<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="docEmail" id="docEmail" value="">
													</td>	</tr>
             <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																Doctor's Qualification<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="docQual" id="docQual" value="">
													</td>	</tr>
            
  <tr>
																<td align="left" bgcolor="#A8DAF3" class="headngblue">
																Doctor's Address<span style="color:red">*</span>:</td>
													<td>	<input type="text" name="docAdd" id="docAdd" value="">
													</td>	</tr>
            
<tr></tr>
    
<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
    <tr>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    <tr></tr><br>
  <td>    
                        <input type="submit" id="save" name="save" class="actionbutton" value="SAVE"> </td>
          </tr>
 			 
	</table>        
            
             </table>
           </table>
     </table>
  	</table></td></tr>
</table>           			</g:form>
            <br />
            <br />

          </div>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          </div>
	  
<script type="text/javascript">
 var frmvalidator  = new Validator("myform");
    frmvalidator.EnableFocusOnError(false); 
    frmvalidator.EnableMsgsTogether();  

 
	
 frmvalidator.addValidation("docName","req","Please enter Doctor Name");

 frmvalidator.addValidation("docNo","req","Please enter Mobile no");
 frmvalidator.addValidation("docAdd","req","Please enter Address");
 frmvalidator.addValidation("docDept","req","Please enter Department");
 frmvalidator.addValidation("docNo","numeric","mob no should be numeric");
 frmvalidator.addValidation("docEmail","email","enter valid email");
 frmvalidator.addValidation("docEmail","req","enter email");
 frmvalidator.addValidation("docQual","req","enter qualification");
 frmvalidator.addValidation("docTime","req","enter time");
 
 frmvalidator.addValidation("docSex","req","Please enter Sex");
 frmvalidator.addValidation("docAge","numeric","age must be numeric"); 
 frmvalidator.addValidation("docAge","req","enter age"); 


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


