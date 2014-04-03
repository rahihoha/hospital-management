<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<META NAME="Author" CONTENT="Designed by Infogain">
<title>Hospital Management System</title>
<style type="text/css">
A {
	 TEXT-DECORATION: none
}

</style>
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'back.js')}"></script>
<link href="css/stylessheet.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${createLinkTo(dir:'css',file:'main.css')}" />
<script type="text/javascript" src="${createLinkTo(dir:'js',file:'md5.js')}"></script>
<script type="text/JavaScript">

function validateForm()
{
	// check user id
	if (document.form1.elements[0].value == "")
	{
		alert ("Please enter User Id!");
		return false;
	}
	// check password
	if (document.form1.elements[1].value == "")
	{
		alert ("Please enter Password!");
		return false;
	}
	if(document.getElementById('captchaCode').value=="")
	{
	 alert ("Please enter Captcha Code");
	 return false;
	}
	document.getElementById('form1').submit(); 
return true;
}


</script>

    

</head>
<body onload="MM_preloadImages('images/hazardous_waste_over.JPG','images/hazardous_waste.jpg','images/water_pollution.jpg','images/bio_waste.jpg','images/globe.jpg')" onkeydown="funcDisBack()" AUTOCOMPLETE=OFF>
<table width="1000px" border="0" bordercolor="" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">

<!-- header -->
		<tr>
			<td bgcolor="#E5E5E5"><img width="1000" src="images/head1.jpg"> </td>
		</tr>
		<tr>
   	<!-- horizontal menu -->
   	
    	<td height="32" align="left" valign="top" background="${createLinkTo(dir:'images2/gif',file:'button_BG.gif')}" >
						
				<span >		<g:include controller="userMaster" action="showMenu"/></span>	</td>	
						</tr>
 
  	<tr>
    	<td  valign="top" >
			<table width="100%" border="0" bordercolor="green" cellspacing="0" cellpadding="0">
				<tr>
					<!-- Start of TD 1 -->
					<td valign="top" width="80%" align="center">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="100%" valign="bottom" bgcolor="#E6E6DC">

									<img src="images/h.gif" />
								</td>
							</tr>
			  
							<tr>
								<td valign="top" width="96%" background="images/bg_text.gif" >
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="5%" valign="top" >
												<a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image27','','images/globe.jpg',1)">
												<img src="images/globe_over.JPG" style="float:left; padding-right:12px; padding-top:18px; padding-left:20px; name="Image27" width="59" height="55" border="0" id="Image27" />
												</a>
											</td><% String cont=request.getContextPath(); %>
											<td width="25%" valign="top" class="maintext3">
												<div align="justify">
													<img src="images/about1.gif" alt="MAY I HELP YOU.... :" hspace="12" width="112" height="27"  style="padding-top:18px;" /><br />
													<strong>This system aims to manage and control the database which stores all the important information about Batra's Clinic. </strong>
													&nbsp;&nbsp;<% String cont1=request.getContextPath(); %>
													
													<br />
												</div>
											</td>
											<td width="5%" valign="bottom" >
											</td>
											<td width="35%" valign="top" align="left" class="bulletinside">
											</td>
											<td width="1%" valign="bottom">
											</td>
											<td width="45%" valign="top" align="left" class="bulletinside">
											</td> 
										</tr>
									</table>
								</td>
							</tr>
						
									
							<tr>
								<td height="100%" align="left" valign="top" bgcolor="#EEEEEE"  >
									<table width="100%"  border="0" bordercolor="blue" cellpadding="0" cellspacing="0">
										<tr>
											<td width="10%">
												<img src="images/latest.gif" alt="Latest Updates" width="146" height="22" hspace="15" vspace="2" />
												
											</td>
											
											<td valign="top" background="images/lineh.gif" style="background-repeat:repeat-x;">
											<b><MARQUEE WIDTH=100% BEHAVIOR=left onmouseover = "this.stop()" onmouseout = "this.start()">
											<FONT SIZE="3" FACE="bodonimt" COLOR=purple>खून की बूंद इंसान की जाति,  धर्म एवं  वर्ग नही देखती, क्योंकी वही जीवनदायिनी है और सृष्टि  मे इसका कोई विकलप भी नही है। </font> &nbsp;&nbsp;&nbsp;
											
											&nbsp;&nbsp;&nbsp;
											
											
											</MARQUEE></b>
											
											</td>
										</tr>
										</table>
										<table width="100%"  border="0" bordercolor="blue" cellpadding="0" cellspacing="0">
										
										<tr >
										 	<td  valign="top" height="40px" background="images/bg_filler.gif" style="background-repeat:repeat-x;"></td>
										</tr>
										
									</table>
								</td>
							</tr>
						</table>
					</td> <!-- End of TD 1 -->
					
					<!-- Start of TD 2 -->
					<td width="20%" valign="top">
						<span >	<g:include controller="userMaster" action="userLogin"/></span>	
								</td> <!-- End of TD 2 -->				
				</tr>
			</table>    		
      	</td>
  	</tr>
</table> 
<div align="center">
</div>
</body>
</html>


