<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", -1);
%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>MAIN PAGE</title>


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
						 <tr height="10px" width="100%">Welcome,${session.newReg}

						 	<td></td>
						 	<td class="top-lnks" align="right"> <a href="logout">Logout</a> </td>
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
       
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
		<g:form action="save" name="myform" method="post" >
		
		<table id="countrytabs" >
       
 <tr>
          
              
              
                <td align="center" style="height: 30px;" style="width: 100%" bgcolor="">

     <% System.out.println("user"+userName);%>
                        <span id="span10" style="font: larger px verdana; color: #1F6FB7;align="left"><u><b>
WELCOME</u></b></span> </td>
          </tr>
            <tr></tr>
   <tr></tr>
   <tr></tr>
   <tr></tr>
   <tr></tr>
   <tr></tr>
   <tr></tr>
    <tr></tr>
   <tr></tr>
   <tr></tr>
     

 <tr>
          
              
              
                <td align="center" style="height: 30px;" style="width: 100%" bgcolor="#1F6FB7">

      
                        <a href="<%=cont%>doctorsearch.gsp"><span id="span10" style="font: normal px verdana; color: white;align="left"><u><b>
DOCTOR SEARCH</u></b></span> </td>
          </tr>
                  
           
                <td align="left" style="height: 20px;" style="width: 100%">
	                        <span id="span10" style="font: normal px verdana; color:;align="left">
         SEARCH INFORMATION FOR DOCTORS IN THE HOSPITAL.      
              
               </span> </td>
          </tr>
          <tr></tr>
          
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          
     
     
       
            <tr>
          
              
              
                <td align="center" style="height: 30px;" style="width: 100%" bgcolor="#1F6FB7">

      
                        <a href="<%=cont%>patientsearch.gsp"><span id="span10" style="font: normal px verdana; color: white;align="left"><u><b>
                        PATIENT SEARCH</u></b></span> </td>
          </tr>
                  
           <tr>
           
                <td align="left" style="height: 20px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
     SEARCH INFORMATION OF PATIENTS ADMITTED IN THE HOSPITAL.
                             </span> </td>
          </tr>
          
               <tr></tr>
          
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          
     
             <tr>
          
              
              
                <td align="center" style="height: 20px;" style="width: 100%" bgcolor="#1F6FB7">

      
                        <a href="<%=cont%>consultingpat.gsp"><span id="span10" style="font: normal px verdana; color: white;align="left"><b><u>
                        CONSULTING PATIENT</u></b></span> </td>
          </tr>
                         <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                       MANAGE INFORMATION OF CONSULTING PATIENTS.
                                 </tr>
               <tr></tr>
          
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          
          
                             </tr>
              
 
          
     
      <tr>
          
              
              
                <td align="center" style="height: 30px;" style="width: 100%" bgcolor="#1F6FB7">

      
                        <a href="<%=cont%>DoctorReg.gsp"><span id="span10" style="font: normal px verdana; color: white;align="left"><u><b>
                        DOCTOR REGISTRATION</u></b></span> </td>
          </tr>
                  
           <tr>
           
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                                 ADD NEW DOCTORS </span> </td>
          </tr>
     
          
      <tr>
          
              
              
                <td align="center" style="height: 30px;" style="width: 100%" bgcolor="#1F6FB7">

      
                        <a href="<%=cont%>admissionpat.gsp"><span id="span10" style="font: normal px verdana; color: white;align="left"><u><b>
                        ADMISSION OF PATIENTS</u></b></span> </td>
          </tr>
                  
           <tr>
           
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                    MANAGE INFORMATION OF PATIENTS TO BE ADMITTED. </span> </td>
          </tr>
          
               <tr></tr>
          
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          
     
<tr>              
              
                <td align="center" style="height: 30px;" style="width: 100%" bgcolor="#1F6FB7">

      
                  <a href="<%=cont%>discharge.gsp"><span id="span10" style="font: normal px verdana; color: white;align="left"><u><b>
               DISCHARGE</u></b></span> </td>
          </tr>
  	      <tr>
           
                <td align="left" style="height: 20px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                    MANAGE DISCHARGE OF PATIENTS. </span> </td>
          </tr>
          
	 	
  			</g:form>
            <br />
            <br />

          </div>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          </div>
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


