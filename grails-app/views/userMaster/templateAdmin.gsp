<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style3 {color: #186DB5}
.style5 {color: #0099FF}
.style6 {color: #33FF66; }
a:link {
	text-decoration: none;
	color: #1E6BBD;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}

.qwe123{
background-image: url('${createLinkTo(dir:'images2/gif',file:'blue_bg.gif')}');
padding-left:23px;
padding-right:20px;
padding-top:5px;
padding-bottom:5px;

}

.qwe123:hover{
background-image: url('${createLinkTo(dir:'images2/gif',file:'gray_bg.gif')}');
}

.blue{
background-image: url('${createLinkTo(dir:'images2/gif',file:'button_gray.gif')}');
padding-left:30px;
padding-right:27px;
padding-top:5px;
padding-bottom:7px;
}
.blue:hover{
background-image: url('${createLinkTo(dir:'images2/gif',file:'button_blue.gif')}');
}
-->
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
		<!-- code for menuAdminHorizontal-->
		<g:include controller="userMaster" action="showAdminMenuHorizontal"/>
		</td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="1003" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="224" align="left" valign="top" bgcolor="#DEEED0">
			<!-- code for menuAdmin-->
			<g:include controller="userMaster" action="showAdminMenu"/>
			</td>
            <td width="1" align="left" valign="top" bgcolor="#ADBFCB"></td>
            <td width="778" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="1" valign="top"></td>
              </tr>
              <tr>
                <td><img src="${createLinkTo(dir:'images2',file:'img.jpg')}" width="778" height="134" /></td>
              </tr>
              <tr>
                <td height="24" bgcolor="#EEEEF3">
					<table width="100%"> <tr>
							<td width="5%" align="left"><a href="#" class="leftlink">LIST</a></td>
							<td width="5%" align="left"><a href="#" class="leftlink">ADD</a></td>
							<td width="8%" align="left"><a href="#" class="leftlink">UPDATE</a></td>
							<td width="8%" align="left"><a href="#" class="leftlink">DELETE</a></td>
							<td width="74%">&nbsp;</td>
					   </tr></table>
				</td>
              </tr>
              <tr>
                <td height="0" align="left" valign="top" class="middlespacer"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr><!-- Div area for errors-->
                      <td align="center" valign="top"><div style="width:400px; height:20px; vertical-align:middle"><span class="error">Error Show Here</span></div></td>
                    </tr>
                    <!--<tr>        
                      <td align="center" valign="top">Row for Page Heading</td>
                    </tr>-->
                    <tr>
                      <td height="0" align="left" valign="top"><table width="778" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="82" align="left" valign="top">&nbsp;</td>
                            <td align="left" valign="top"><div style="padding:0px 0px 0px 0px;" >
	  
        
				 
    <br/>
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
		<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
                            <tr>
                              <td width="11"><img src="${createLinkTo(dir:'images2/gif',file:'industry_details_left.gif')}" width="11" height="27" /></td>
                              <td width="147" align="center" background="${createLinkTo(dir:'images2/gif',file:'industry_details_middle.gif')}" class="top-lnks"><a href="#" rel="country1">Industry Details </a></td>
                              <td width="11" valign="bottom"><img src="${createLinkTo(dir:'images2/gif',file:'industry_details_right.gif')}" width="11" height="27" /></td>
							  <td width="1"></td>
							  <td width="11" bgcolor="#5A89D9"><img src="${createLinkTo(dir:'images2/gif',file:'industry_details_left.gif')}" width="11" height="27" /></td>
                              <td width="110" align="center" background="${createLinkTo(dir:'images2/gif',file:'industry_details_middle.gif')}" class="top-lnks"><a href="#" rel="country2">Product</a></td>
                              <td width="11" valign="bottom"><img src="${createLinkTo(dir:'images2/gif',file:'industry_details_right.gif')}" width="11" height="27" /></td>
							  
							  <td width="299">&nbsp;</td>
							</tr>
	    </table>
          <div id="country1" >
  			<table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#A5CAF4">
				                      
                      <tr>
                        <td valign="top" bgcolor="#FFFFFF"><table width="100%"  border="0" align="left" cellpadding="2" cellspacing="1" class="tblbdr">
                          <tr align="center" bgcolor="#F4F7FB">
                            <td width="30%" align="right" valign="middle" bgcolor="#A8DAF3" class="headngblue">Industry Name*:</td>
                            <td width="70%" align="left" bgcolor="#E8F6F9"  class="txt"><input name="textfield2" type="text" class="txt4" size="25" /></td>
                          </tr>
                          <tr >
                            <td align="right" bgcolor="#A8DAF3" class="headngblue">Type:</td>
                            <td width="70%" align="left" bgcolor="#E8F6F9" class="txt"><span class="txt style6">
                                  <select name="select9" class="txt4">
                                    <option selected="selected">Select Product Name</option>
                                  </select>
                                                        </span></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3" class="headngblue">Category:</td>
                            <td width="70%" align="left" bgcolor="#E8F6F9" class="txt"><span class="style3"><span class="style5"><span class="style6"><span class="txt style6">
                                  <select name="select10" class="txt4">
                                    <option selected="selected">Select Product Name</option>
                                  </select>
                            </span></span></span></span></td>
                          </tr>
                          <tr>
                            <td align="right" bgcolor="#A8DAF3" class="headngblue"> Status:</td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt"><span class="txt style6">
                                  <select name="select11" class="txt4">
                                    <option selected="selected">Select Product Name</option>
                                  </select>
                                                        </span></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue">Commisioning Year: </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><input name="textfield3" type="text" class="txt4" /></td>
                          </tr>
                          <tr >
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue">Registeration/License No.:</td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><input name="textfield4" type="text" class="txt4" /></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> Capital Investment*: </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><input name="textfield5" type="text" class="txt4" /></td>
                          </tr>
                          <tr >
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> Address*: </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><textarea name="textarea" cols="40" class="txt4"></textarea></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> Industrial area*: </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><select name="select4" class="txt4">
                                <option selected="selected">Select Area</option>
                            </select></td>
                          </tr>
                          <tr >
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> City: </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><input name="textfield7" type="text" class="txt4" /></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> Tehsil :* </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><select name="select4" class="txt4">
                                <option selected="selected">Select Tehsil</option>
                            </select></td>
                          </tr>
                          <tr >
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> District: * </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><select name="select4" class="txt4">
                                <option selected="selected">Select District</option>
                            </select></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> Pin: </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><input name="textfield8" type="text" class="txt4" /></td>
                          </tr>
                          <tr >
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> Phone No. With Code :* </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><select name="select12" class="txt4">
                                <option selected="selected">Select Area</option>
                              </select>
                                <input name="textfield9" type="text" class="txt4" /></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> Fax No. With Code : </td>
                            <td align="left" bgcolor="#E8F6F9"  class="txt style6"><select name="select13" class="txt4">
                                <option selected="selected">Select Area</option>
                              </select>
                                <input name="textfield92" type="text" class="txt4" /></td>
                          </tr>
                          <tr bgcolor="#F4F7FB">
                            <td align="right" bgcolor="#A8DAF3"  class="headngblue"> E-Mail Address: </td>
                            <td width="70%" align="left" bgcolor="#E8F6F9"  class="txt">                                <input name="textfield11" type="text" class="txt4" size="20" />                            </td>
                          </tr>
						  
                        </table></td>
                      </tr>
	  </table>
	  		<table width="95%"  align="center">
				  <tr ><td colspan="2">&nbsp;</td></tr>
					  <tr >
						<td align="center"><input type="submit" name="save" value="Save" class="actionbutton"></td>
						<td align="center"><input type="submit" name="cancel" value="Cancel" class="actionbutton"></td>
					  </tr>
				</table>
	  		
            <br />
            <br />
          </div>
          <div id="country2">
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#A5CAF4" class="tab-txt" style="border-collapse:collapse;">
   
		  <tr>
		    <td bgcolor="#FFFFFF"><table width="100%"  border="0" align="left" cellpadding="2" cellspacing="1" class="tblbdr">
              <tr align="center" bgcolor="#F4F7FB">
                <td width="30%" align="right" valign="middle" bgcolor="#A8DAF3" class="headngblue">Industry Name*:</td>
                <td width="70%" align="left" bgcolor="#E8F6F9"  class="txt"><input name="textfield22" type="text" class="txt4" size="25" /></td>
              </tr>
              <tr >
                <td align="right" bgcolor="#A8DAF3" class="headngblue">Type:</td>
                <td width="70%" align="left" bgcolor="#E8F6F9" class="txt"><div align="left" class="style6"><span class="txt style6">
                    <select name="select" class="txt4">
                      <option selected="selected">Select Product Name</option>
                    </select>
                </span></div></td>
              </tr>
              <tr bgcolor="#F4F7FB">
                <td align="right" bgcolor="#A8DAF3" class="headngblue">Category:</td>
                <td width="70%" align="left" bgcolor="#E8F6F9" class="txt"><div align="left"><span class="style3"><span class="style5"><span class="style6"><span class="txt style6">
                    <select name="select" class="txt4">
                      <option selected="selected">Select Product Name</option>
                    </select>
                </span></span></span></span></div></td>
              </tr>
              <tr>
                <td align="right" bgcolor="#A8DAF3" class="headngblue">                    Status:</td>
                <td align="left" bgcolor="#E8F6F9"  class="txt"><div align="left" class="style6"><span class="txt style6">
                    <select name="select" class="txt4">
                      <option selected="selected">Select Product Name</option>
                    </select>
                </span></div></td>
              </tr>
              <tr bgcolor="#F4F7FB">
                <td align="right" bgcolor="#A8DAF3"  class="headngblue">Commisioning Year: </td>
                <td align="left" bgcolor="#E8F6F9"  class="txt style6"><input name="textfield32" type="text" class="txt4" /></td>
              </tr>

              <tr bgcolor="#F4F7FB">
                <td align="right" bgcolor="#A8DAF3"  class="headngblue"> E-Mail Address: </td>
                <td width="70%" align="left" bgcolor="#E8F6F9"  class="txt"><div align="left" class="style6">
                    <input name="textfield112" type="text" class="txt4" size="25" />
                </div></td>
              </tr>
			  
            </table></td>
		  </tr></table>
		  
		  	<table width="95%" align="center">
				  <tr ><td colspan="2">&nbsp;</td></tr>
					  <tr >
						<td align="center"><input type="submit" name="save" value="Save" class="actionbutton"></td>
						<td align="center"><input type="submit" name="cancel" value="Cancel" class="actionbutton"></td>
					  </tr>
				</table>
		  
            <br />
            <br />
          </div>
          </div>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
<script type="text/javascript">

var countries=new ddtabcontent("countrytabs")
countries.setpersist(true)
countries.setselectedClassTarget("link") //"link" or "linkparent"
countries.init()

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
      <!-- code for spcb Footer -->
	  <g:include controller="userMaster" action="showSpcbFooter"/>
    </table></td>
  </tr>
</table>
</body>
</html>

