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
				<td height="32" align="left" valign="top"
					background="${createLinkTo(dir:'images2/gif',file:'button_BG.gif')}">
	<g:include controller="userMaster" action="showMenu" />
				
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
       
         <div style="border":1px solid gray; width:720px; margin-bottom: 1em; padding: 10px" >
		<g:form action="save" name="myform" method="post" >
		
		<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
     <tr>
              <br>
               <td width="95%" align="left" class="headngbig" bgcolor="">FACILITIES PROVIDED</td></tr>
             </table>
             <table></table>
             <table>
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
          
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color: #AA0000;align="left">
                        <b>ICU</b></span> </td>
          </tr>
         
           <tr>
           
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                        Batra Hospital & Medical Research Centre is equipped with modern ICUs alongwith well trained and highly motivated staff for continuous monitoring of critically ill patients. There are separative Intensive Care Units for Cardiology, Neurology, Medicine and Surgery.

The Hospital has 27 Bedded Medical ICU with state-of-the-art monitoring and ventiilatory facilities manned by ICU Trained Residents and In-House Consultants for round-the-clock care. ICU has separate isolation rooms with facilities for both positive and negative presuure chambers. Our MICU is rated as one of the most affordable and best Intensive Care Units in the city.

Exclusively for Post-Operative Cardiac patients, the Hospital has 24-Bedded Intensive Care Unit  with round-the-clock monitor
 </span> </td>
          </tr>
          
          
     </table>
     
          <table> 
          <tr>
          
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color: #AA0000;align="left">
                        <b>Operation Theatre</b></span> </td>
          </tr>
         
           <tr>
           
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                        Batra Hospital has state-of-the art and extremely well-equipped operation theatres. Each OT has laminar airflow for air-conditioning with HEPA Filters. Imported dual dome OT lights, low flow anaesthesia machines with built in ventilators and multi-parameter modular monitors make the OTs comparable to the best in the world. This combined with separate Pre and Post-Operative Area, Recovery Room and Surgical ICU make it an excellent area for comprehensive care of patients undergoing surgery.

The units also have their own blood gas and electrolyte machines and are adequately equipped with advanced monitoring systems, syringes and infusion pumps. Personalized nursing care is given to all patients by dedicated nurses.
                        </span> </td>
          </tr>
          
          
     </table>
     
<table> 
          <tr>
          
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color: #AA0000;align="left">
                        <b>Guest Room</b></span> </td>
          </tr>
         
           <tr>
           
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                       
For comfortable stay for the accomplice of the patients the hospital has made provision for guest rooms.

These are located within the hospital campus and are very economically priced.

Each room is well-furnished with a double bed, TV and fridge. The attendants can choose between A/Ced and Non-A/Ced accommodation.  </span> </td>
          </tr>
          
          
     </table>
<table> 
          <tr>
          
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color: #AA0000;align="left">
                        <b>Patient Accomodation</b></span> </td>
          </tr>
         
           <tr>
           
                <td align="left" style="height: 30px;" style="width: 100%">

      
                            <span id="span10" style="font: normal px verdana; color:;align="left">
                       Batra Hospital is a centrally air-conditioned hospital with a total bed capacity of 495 beds. In order to be able to provide medical treatment to all financial sects, the hospital has made a provision for various room categories. The patients can choose the that suits them best.

The categories include: 

Diplomat Deluxe
Diplomat
Super Deluxe/ VIP
Deluxe
Single Room
Semi Private (2 Bedded/3 Bedded)
Multi-Sharing Room </span> </td>
          </tr>
          
          
     </table>
		        
		
  			</g:form>
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
    </table></td>
  </tr>
</table>

</body>
<HEAD> 
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE"> 
<META HTTP-EQUIV="Expires" CONTENT="-1">
</HEAD>
</html>


