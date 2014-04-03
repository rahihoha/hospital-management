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



<script type="text/javascript">
     var is_show=1; 
	        var all =1;
	        function show_all()
	        {
	        document.getElementById("spnCollapse").style.display="none";
	        if(all==1)
	        {
	       // document.getElementById("div_hide_ans1").style.display="block";
	       // document.getElementById("div_hide_ans2").style.display="block";
	        document.getElementById("div_hide_ans3").style.display="block";
	        document.getElementById("div_hide_ans4").style.display="block";
	      //  document.getElementById("div_hide_ans5").style.display="block";
	        document.getElementById("div_hide_ans6").style.display="block";
	      //    document.getElementById("div_hide_ans7").style.display="block";
	       // document.getElementById("div_hide_ans8").style.display="block";
	       // document.getElementById("div_hide_ans9").style.display="block";
	       // document.getElementById("div_hide_ans10").style.display="block";
	        document.getElementById("spnExpand").style.display="none";
	        document.getElementById("spnCollapse").style.display="block";
	        
	    all=0;
	         }
	         else
	         {
	        // document.getElementById("div_hide_ans1").style.display="none";
	        // document.getElementById("div_hide_ans2").style.display="none";
	         document.getElementById("div_hide_ans3").style.display="none";
	         document.getElementById("div_hide_ans4").style.display="none";
	        // document.getElementById("div_hide_ans5").style.display="none";
	         document.getElementById("div_hide_ans6").style.display="none";
	        // document.getElementById("div_hide_ans7").style.display="none";
	        //   document.getElementById("div_hide_ans8").style.display="none";
	        //    document.getElementById("div_hide_ans9").style.display="none";
	        //     document.getElementById("div_hide_ans10").style.display="none";
	        document.getElementById("spnExpand").style.display="block";
	        document.getElementById("spnCollapse").style.display="none";
	      all=1;
	         }
	         }
		
	 function Show_More(id)
		{
            document.getElementById(id).style.display = "none";
	      //  if(id == "div_hide_ans1")
           // {
		//		Hide(id)
           // }
         //   if(id=="div_hide_ans2")
         //   {
         //   	Hide(id)
            	
         //   }
             if(id=="div_hide_ans3")
            {
            	Hide(id)
            	
            }
              if(id=="div_hide_ans4")
            {
            	Hide(id)
            	
            }
         //      if(id=="div_hide_ans5")
         //   {
         //   	Hide(id)
            	
         //   }
              if(id=="div_hide_ans6")
            {
            	Hide(id)
            	
            }
         //      if(id=="div_hide_ans7")
         //   {
         //   	Hide(id)
            	
         //   }
        //      if(id=="div_hide_ans8")
        //    {
        //    	Hide(id)
            	
         //   }
         //      if(id=="div_hide_ans9")
         //   {
         //   	Hide(id)
        //    	
        //    }
        //         if(id=="div_hide_ans10")
        //    {
        //    	Hide(id)
        //    	
        //    }
            
            
          
            
          
            
            
            
		}
		function Hide(id)
		{
            document.getElementById(id).style.display = "none";
		if(is_show == 1)
                {
                    document.getElementById(id).style.display = "block";
                    is_show = 0;
                }
                else
                {
                    document.getElementById(id).style.display = "none";
                    is_show = 1;
                }
		}
		    </script>
		              

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
		<g:include controller="userMaster" action="showMenu"/>
		</td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="1003" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="224" align="left" valign="top" bgcolor="#DEEED0">
			<!-- code for menuAdmin-->
			<%
				if(  (IndUser)session.getAttribute("indUser")  ){ %>
					 <g:include controller="userMaster" action="showSpcbIndustryMenu"/>                                         

                           <%} %>
				 <% 

                 if((UserMaster)session.getAttribute("userMaster")){
				UserMaster aa = (UserMaster)session.getAttribute("userMaster");
                String userType = aa.accessLevel
					 if(userType.equals("admin")) { %>   

                 <g:include controller="userMaster" action="showAdminMenu"/>                                          

                 <% }else{ %>
					 <g:include controller="userMaster" action="showSpcbUserMenu"/> 
							 <%}} %>
						<% if( (!(IndUser)session.getAttribute("indUser") ) && 
							(! (UserMaster)session.getAttribute("userMaster") )  )   {%>
							<g:include controller="userMaster" action="showIndexMenu"/>            

                                 <% } %>
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
					<table width="100%"> <tr >
				<td  class="top-lnks" width="100%">
					
					 </td></tr><tr>
							
							
							<!--<td width="20%" align="left"><g:link controller="officeMaster" action="updateoffice" ><span class="innerlink">&nbsp;Update&nbsp;|</span></g:link></td> -->
							<td width="80%">&nbsp;</td>
					   </tr></table>
				</td>
              </tr>
              <tr>
                <td height="0" align="left" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    
                    
                    <tr><!-- Div area for errors-->
                    
                    
                      <td align="center" valign="top"><div style="width:400px; height:20px; vertical-align:middle"><span class="error">
				                     <g:if test="${flash.message}">
									<div class="message">${flash.message}</div>
									</g:if>
									<g:hasErrors bean="${officeMasterInstance}">
									<div class="errors">
										<g:renderErrors bean="${officeMasterInstance}" as="list" />
									</div>
									</g:hasErrors>

                      </span></div></td>
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
		
		
		
		
		<g:form action="save" name="myform" method="post" >
		
		
  
          <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
     <tr>
     <td><img src="${createLinkTo(dir:'images',file:'arr.jpg')}" />&nbsp;&nbsp;</td>
          <td width="95%" align="left" class="headngbig" bgcolor="">List of Exempted Units:- </td>
     </tr>
	    </table>
		
	   
	   
	    
		          		                          
             <table>  
                <tr>
            <!--
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="height: 15px;" align="center" valign="top">
                           <span style="font: normal 9px arial; color: #0000DD;">
                              </span>
                        </td>
                   <div id="divExpand"style="font: bold 9px arial; color: #0000DD; width="100%" align="right"><span ID="spnExpand" onclick="javascript:show_all();">[+]Expand all</span><span ID="spnCollapse" style="display:none;" onclick="javascript:show_all();">[-]Collapse all</span></div>
                   
                    </tr>
                 
                    </tr>
                </table>


-->
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="height: 5px;">
                        </td>
                    </tr>
                  <!--  <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span10" style="font: normal 11px verdana; color: #AA0000;align="left" 
                                onclick="javascript:Show_More('div_hide_ans1');"> <b>Ques:</b>What are important Environmental Laws in the Country?
                                 </span>
                        </td>
                    </tr>
                </table>
                 <div id="div_hide_ans1" style="display: none;">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                   Ans: The Water (Prevention and
              Control of Pollution) Act, 1974  </p>
  
                                <p class="txt4">
                                   The Air (Prevention and
              Control of Pollution) Act, 1981</p>
               <p class="txt4">
               The Water
              (prevention and Control of Pollution) Cess Act, 1977</p>
                <p class="txt4">
                The Environment (Protection)
              Act, 1986 and Rules there under</p>
               <p class="txt4">
               The Public Liability Insurance Act, 1981 
               </p>
               
                   </td>
                        </tr>
                    </table>
                    </div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
              <td style="height: 6px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span1" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans2');"><b>Ques:</b>What are the activities of the Punjab Pollution Control Board?</span>   
              </td>
              </tr>
              </table>
               <div id="div_hide_ans2" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <b>Ans:</b>
               In order to perform its functions under the above Acts, the Board carries out the following main activities:</p>
               <ol class="txt4">
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">It carries out the monitoring of the Water quality of all the four rivers of the State viz. Satluj, Beas, Ravi & Ghaggar through 37 monitoring stations.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">It monitors  the groundwater quality in the major industrial towns of Ludhiana, Jalandhar, Amritsar, Nangal etc.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">It carries out the monitoring of the quality of ambient air of Ludhiana, Jalandhar, Amritsar, Patiala, Mandi Gobindgarh & Nangal through 22 permanent air monitoring stations.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">The Board advices, guides, encourages, persuades & helps the industry in putting up effluent treatment plants and air pollution control devices to control pollution and in taking other measures to prevent or reduce pollution.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">The Board issues NOC’s to the new units on submission of a proper scheme for pollution control and issues consent under Water & Air  Acts,  after the unit takes adequate pollution control measures. It also issues authorizations to Hazardous Waste generating units on their making proper arrangement for storage of such wastes. The Board performs its regulatory function through consent mechanism. The Board issues consents ranging from one year to fifteen years in the case of highly polluting industries and for ever, for green category industries.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">The Board launches prosecutions against the units which do not take steps to control pollution inspite of repeated requests & warnings. It also orders closure of units when all other methods fail under the provisions of the Water Act, 1974 and the Air  Act, 1981 etc.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">The Board makes available cost effective technologies & sets up model demonstration plants for control of pollution in small scale units such as cupola furnaces, rice shellers and induction furnaces etc. with the help of Punjab State Council for Science & Technology, Chandigarh.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">It monitors the noise level in the cities generated due to industrial, domestic and other public activities. These studies help the Board in assessing the pollution in the state.</p>
            </li>
            <li>
              <p  style="margin-left: 90; margin-right: 35" align="justify" class="txt4">It monitors the effects on soil due to the discharge of liquid effluents on to land.</p>
            </li>
            </ol>
        </td>
      </tr>-->
      <tr>
      </table>
      </div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="height: 6px;">
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span2" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans3');">INDUSTRIES THAT ARE EXEMPTED FROM CONSENT ARE AS FOLLOWS:
           </span>
                        </td>
                    </tr>
                </table>
                
                 <div id="div_hide_ans3" style="display: block;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                            <b></b>
          <ol class="txt4">
            <li>
              <p align="justify" style="margin-left: 75; margin-right: 35" class="txt4">Tailoring/garment making;</li>
            <li>
              <p align="justify" style="margin-left: 75; margin-right: 35" class="txt4">Handloom Weaving;</li>
            <li>
              <p align="justify" style="margin-left: 75; margin-right: 35" class="txt4">Furniture.</li>
               <li>
              <p align="justify" style="margin-left: 75; margin-right: 35" class="txt4">Assembly of domestic electrical and electronic appliances/equipment;</li>
            <li>
              <p align="justify" style="margin-left: 75; margin-right: 35" class="txt4">Candles;</li>
            <li>
              <p align="justify" style="margin-left: 75; margin-right: 35" class="txt4">Carpentry(Excluding Saw Mill).</li>
              <li>
              <p align="justify" style="margin-left: 75; margin-right: 35" class="txt4">Manufacture of steel trunks and suit cases.</li>
              
              
          </ol>
         
          </td>
      </tr>
      </table>
                </div>
                <!--
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="height: 7px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span1" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans4');"><b>Ques:</b>Is any fee required for obtaining consent? What do you mean by Consent Fee? </span>
                        </td>
                    </tr>
                </table>
                 <div id="div_hide_ans4" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <b>Ans:</b>Yes Sir. The consent fee means the fees charged by the Board for the grant of consent by the Board.
                                      </p>
                            </td>
                        </tr>
                    </table>
                </div>
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="height: 7px;">
                        </td>
                    </tr>
                   <!-- <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span2" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans5');"><b>Ques:</b>What is the annual consent fee? </span>
                                </td>
                                </tr>-->
                                </table>
                                
                                 <div id="div_hide_ans5" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <b>Ans: DETAILS OF CONSENT FEE REQUIRED TO BE DEPOSITED FOR OBTAINING 'CONSENT TO ESTABLISH' (NOC)/'CONSENT TO OPERATE ' UNDER THE WATER ACT, 1974 AND AIR ACT, 1981</b> </td>
                        <!--            <tr>
        <td width="100%" valign="top" align="justify" height="40" bgcolor="white">
          <p><b><span style="color:#993366" class="txt4"></td>
       
      </tr>
      <tr>
        <td width="100%" valign="top" align="left" height="1">
      
              <p style="margin-left: 75">&nbsp;
      
        </td>
      </tr>-->
      <tr>
        <td width="100%" valign="top" align="justify" height="19" bgcolor="white">
      
              <p style="margin-left: 75" align="center">
                <table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border-style: none; border-width: medium" width="484">
            <tr>
              <td valign="top" style="border: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4"><b>S.No.<u1:p>
                </u1:p>
                </b></td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p  align="center" style="text-align: center" class="txt4"><b>Capital
                Investment<u1:p>
                </u1:p>
                </b></td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="420">
                <p  align="right" style="text-align: center;" class="txt4"><b>Application fee to be charged for obtaining 'consent to establish' (NOC) / 'consent to operate' for per year (Red Category) (Rs.)<u1:p>
                </u1:p>
                </b></td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="420">
                <p  align="right" style="text-align: center; " class="txt4"><b>Application fee to be charged for obtaining 'consent to establish' (NOC) / 'consent to operate' for per year (Orange Category) (Rs.)<u1:p>
                </u1:p>
                </b></td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="420">
                <p  align="right" style="text-align: center; " class="txt4"><b>Application fee to be charged for obtaining 'consent to establish' (NOC) / 'consent to operate' for per year (Green Category) (Rs.)<u1:p>
                </u1:p>
                </b></td>  
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">01<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">Upto 5 Lacs<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">750<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">500<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">500<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">02<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">5 to 10 Lacs</font></td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4"> 1,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">750<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">625<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">03<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">10 to 25 Lacs</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,500<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,250<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">04<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">25 to 50 Lacs</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,500<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,500<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">05<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">50 to 75 Lacs</font></td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">3,750<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,500<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">06<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">75 to less than 1 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">5,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">4,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">3,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">07<u1:p>
                </u1:p>
               </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4" >1 to 2 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">7,500<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">6,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">4,500<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">08<u1:p>
                </u1:p>
                </font></td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4" >2 to 5 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">10,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">7,500<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">6,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify"class="txt4">09<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">5 to 10 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">15,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">12,500<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">7,500<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">10<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">10 to 15 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p class="txt4">25,000&nbsp;</td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">15,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">10,000<u1:p>
                </u1:p>
                </td>
            </tr>
       
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">11<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">15 to 20 Crores<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">30,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">17,500<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">12,500<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">12<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">20 to 25 Crores</font></td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4"> 35,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">20,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">15,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">13<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">25 to 30 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">40,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">25,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">17,500<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">14<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">30 to 40 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">45,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">30,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">20,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">15<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">40 to 50 Crores</font></td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">50,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">40,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">30,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">16<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">50 to 75 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">60,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">50,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">40,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">17<u1:p>
                </u1:p>
               </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4" >75 to 100 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">75,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">60,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">50,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">18<u1:p>
                </u1:p>
                </font></td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4" >100 to 150 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">75,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">60,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify"class="txt4">19<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">150 to 200 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,50,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">75,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">20<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">200 to 300 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
               <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,50,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,00,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">21<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">300 to 400 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,50,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">1,50,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">22<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">400 to 500 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">3,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,50,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,00,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">23<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">500 to 1000 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">4,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">3,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">2,50,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">24<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">1000 to 2000 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">5,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">4,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">3,00,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">25<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">2000 to 5000 Crores</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
               <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">10,00,000<u1:p>
                </u1:p>
                </td>
                 <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">7,50,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">5,00,000<u1:p>
                </u1:p>
                </td>
            </tr>
            <tr>
              <td valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="38">
                <p  style="text-align: justify" class="txt4">26<u1:p>
                </u1:p>
                </td>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="320">
                <p class="txt4">5000 Crores and above</td>
              <u1:p>
              </u1:p>
              <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
              <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">20,00,000<u1:p>
                </u1:p>
                </td>
                  <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">15,00,000<u1:p>
                </u1:p>
                </td>
                <td valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" width="131">
                <p  align="right" style="text-align: right; margin-right: 54.45pt" class="txt4">10,00,000<u1:p>
                </u1:p>
                </td>
            </tr>
          </table>

        </td>
      </tr>
      
                    </table>
                    
                </div>  
                  <!--
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span_hide_main" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans6');"><b>Ques:</b> What do you mean by investment?</span>
                        </td>
                    </tr>
                </table>   
                  <div id="div_hide_ans6" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <b>Ans:</b>  The investment means the amount of capital invested by the industry on capital works including land; machinery; and equipment. This is the gross block (without depreciation) of all fixed assets. 
                                </p>
                                </td>
                                </tr>
                                </table>
                </div>
                -->
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                   <!-- <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span_hide_main" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans7');"><b>Ques:</b> Is there any prescribed form for consent application?</span>
                        </td>
                    </tr>-->
                </table>   
                <div id="div_hide_ans7" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <b>Ans:</b>  Yes Sir, There are separate  prescribed forms of application for obtaining  water consent and air consent. yes Sir, There are separate  prescribed forms of application for obtaining  WATER consent and AIR consent. 
                                </p>
                                </td>
                                </tr>
                                </table>
                                </div>
                 
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                 <!--   <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span_hide_main" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans8');"><b>Ques:</b> Where the consent application forms are available?   the price of application form? </span>
                        </td>
                    </tr>-->
                </table>  
                <div id="div_hide_ans8" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <b>Ans:</b> 
                                     The Water consent and Air consent application forms are available at Regional Offices of the Board.  The application form may be obtained from the Regional Offices of the Chhattisgarh Environment Conservation Board on payment of Rs. 15/- for Water consent and Rs. 15/- for Air consent.  The application forms may also be obtain through post by submitting a demand draft in favour of 'Regional  Officer, Chhattisgarh Environment Conservation Board', payable at either Bilsapur, Durg-Bhilai, Korba, Jagdalpur, Raigarh, Raipur.  The addresses of the Regional Offices of the Board are as follows:- 
                
                				</p>
                		</tr>
              
              			<tr>
        					<td width="100%" valign="top" align="center" height="529" bgcolor="white">
						          <table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border-style: none; border-width: medium" width="626">
						            <tr>
						              <td width="38" valign="top" style="border: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"><b><font face="Verdana" size="2">S.No.<u1:p>
						                </u1:p>
						                </font></b></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p align="center" style="text-align:center" class="txt4"><b>Name
						                of Regional Office<u1:p>
						                </u1:p>
						                </b></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top: 1.0pt solid windowtext; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p align="center" style="text-align:center" class="txt4"><b>Address<u1:p>
						                </u1:p>
						                </b></td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">01.<u1:p>
						                </u1:p>
						                </td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">PATIALA</td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">Regional Office
													Punjab Pollution Control Board, Vatavaran Bhawan
													Nabha Road, Patiala.
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">(
						                0175- 2228132(PH))</td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">02.<u1:p>
						                </u1:p>
						                </td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">LUDHIANA<u1:p>
						                </u1:p>
						                </td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in">
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">Regional Office Ludhiana-I
													Punjab Pollution Control Board,
													Municipal Complex, C-Block, 2nd Floor, Gill Road, Ludhiana.</p>
						                <p style="margin:0in;margin-bottom:.0001pt">&nbsp;</p>
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">(&nbsp;&nbsp;
						                0161- 2531350 (O) )</p>
						              </td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">03.<u1:p>
						                </u1:p>
						                </td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in" class="txt4">JALANDHAR<u1:p>
						                </u1:p>
						                </td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4" >Regional Office
													Punjab Pollution Control Board,
													14, Guru Teg Bahadur Enclave, Jalandhar.
						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">(&nbsp;
						                0181- 2270079 (O))</font></p>
						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"><font face="Verdana" size="2">04.<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">AMRITSAR<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">Regional Office 
													Punjab Pollution Control Board,
													Plot No. 164, Focal Point Mehta Road, Amritsar.</font>
						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">&nbsp;
						                0183- 2582790 (O))</font></td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">05.<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">BATHINDA<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">Regional Office 
													Punjab Pollution Control Board,
													Govt. Quality Marketing Centre, Near I.T.I., Bathinda.</font>
						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">(&nbsp;
						                0164- 2212827 (O)</font></p></td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">06.<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">SANGRUR<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">Regional Office 
													Punjab Pollution Control Board,
													Industrial Focal Point, Sunam Road, Sangrur</font>
						                <p style="margin:0in;margin-bottom:.0001pt"><font face="Verdana" size="2">(&nbsp;
						                01672-233475 (O))</font></p>
						              </td>
						            </tr>
						            <tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">07.</font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">FARIDKOT<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">Regional Office 
													Punjab Pollution Control Board,
													Red Cross Bhawan, Sadiq Road, Faridkot.

</font>
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">&nbsp;
						                01639- 254179 (O)) </p>
						              </td>
						       		</tr>
						       		<tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">08.</font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">HOSHIARPUR<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">Regional Office 
Punjab Pollution Control Board,
E-18-A, Focal Point
Hoshiarpur.</font>
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">&nbsp;
						                01882- 248020 (O)) </p>
						              </td>
						       		</tr>
						       		<tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">09.</font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">MANDI GOBINDGARH<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">Regional Office
Punjab Pollution Control Board,
NISST Building, G.T. Road, Opposite Floating Resturant, Mandi Gobindgarh - 147301</font>
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">&nbsp;
						                01765-242400 (O)) </p>
						              </td>
						       		</tr>
						       		<tr>
						              <td width="38" valign="top" style="border-left: 1.0pt solid windowtext; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">10.</font></td>
						              <td width="195" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">MOHALI<u1:p>
						                </u1:p>
						                </font></td>
						              <td width="347" valign="top" style="border-left-style: none; border-left-width: medium; border-right: 1.0pt solid windowtext; border-top-style: none; border-top-width: medium; border-bottom: 1.0pt solid windowtext; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in"  class="txt4">Nodal Office
Punjab Pollution Control Board,
Nodal Office, Plot no. 55, Phase-II, Opp. Bassi Theatre, Mohali.</font>
						                <p style="margin:0in;margin-bottom:.0001pt" class="txt4">&nbsp;
						               0172-5044900 (O)) </p>
						              </td>
						       		</tr>
						       	</table>
						    
                </div> 
 
          		<table width="100%" border="0" cellspacing="0" cellpadding="0">
                    
                    <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span11" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans9');"><b>Ques:</b>Whether consent renewal fee has to be paid annually? 
                                </span>
                        </td>
                    </tr>
                </table>
                
                <div id="div_hide_ans9" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <b>Ans:</b> A web-site contains several works such as literary works, artistic works
                                    (photographs etc.), sound recordings, video clips, cinematograph films and broadcastings
                                    and computer software too. Therefore, a separate application has to be filed for
                                    registration of all these works.
                                </p>
                            </td>
                        </tr>
                    </table>
                </div>
                
                
                
                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="height: 7px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="height: 15px;" style="width: 100%">
                            <span id="span11" style="font: normal 11px verdana; color: #AA0000; cursor: pointer;"
                                onclick="javascript:Show_More('div_hide_ans10');"><b>Ques:</b>What do you mean by Environmental Clearance?  Which type of activities/projects required Environmental Clearance? 
                                </span>
                        </td>
                    </tr>
                </table>
                
                
                
                  <div id="div_hide_ans10" style="display: none;">
                    <table border="0" cellpadding="5" cellspacing="0">
                        <tr>
                            <td class="FAQ_hidden_menu" align="left" valign="top">
                                <p class="txt4">
                                    <p  style="text-align: justify; text-indent: -75; margin-left: 75; margin-right: 35"><font face="Verdana" size="2"><b><span style="color: #993366">Ans
          : <span style="mso-spacerun:yes">&nbsp;</span></span></b><span style="mso-spacerun: yes; color: #993366"><b>
          </b></span><span style="mso-bidi-font-size:
  13.0pt;font-family:Verdana" class="txt4">The clearance accorded by Ministry of Environment
          and Forests, Government of India for expansion or modernization of any
          activity (if pollution load is to exceed the existing one) or a new
          project listed in schedule I of the Environment Impact Assessment
          Notification, 1994 is known as Environmental Clearance.</span></font></p>
          <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4"><span style="mso-bidi-font-size: 13.0pt">Following
          thirty types of activities/projects are required Environmental
          Clearance:-</span></p>
          <ol class="txt4">
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Nuclear
              power and related project such as Heavy Water Plants, nuclear fuel
              complex, rare earths.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">River
              Valley projects including hydel power, major irrigation and their
              combination including flood control.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Ports,
              harbours, Airports (except minor ports and harbours).</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Petroleum
              Refineries including crude and product pipelines.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Chemical
              Fertilizers (Nitrogenous and phosphatic other than single super
              phosphate).</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Pesticides
              (Technical)</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Petrochemical
              complexes (Both Olefinic and Aromatic) and Petro-Chemical
              intermediates such as DMT, Caprolactam, LAB etc. and production of
              basic plastics such as LDPE, HDPE, PP, PVC.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Bulk
              drugs and pharmaceuticals.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Exploration
              for oil and gas and their production, transportation and storage.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Synthetic
              Rubber.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Asbestos
              and Asbestos products</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Hydro
              cyanic acid and its derivatives.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">(a)
              <span style="mso-spacerun:yes">&nbsp;</span>Primary metallurgical
              industries (such as production of Iron and Steel, Aluminium,
              Copper, Zinc, Lead and Ferro Alloys).</p>
            </li>
          </ol>
          <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          (b) <span style="mso-spacerun:yes">&nbsp;&nbsp;</span>Electric arc
          furnaces (Mini Steel plants).<o:p>
          </o:p>
          </p>
          <ol class="txt4">
            <li value="14">
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Chlor-alkali
              industry.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Integrated
              plant complex including manufacture of resins and basic raw
              material required in the manufacture of paints.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4" >Viscose
              Staple fibre and filament yarn.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Storage
              batteries integrated with manufacture of oxides of lead and lead
              antimony alloy.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">All
              tourism projects between 200m-500 meters of High Tide Line or at
              locations with an elevation of more than 1000 meters with
              investment of more than Rs. 5 Crores.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Thermal
              Power Plants</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Mining
              Project (major minerals) with leases more than 5 hectares.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Highway
              Projects except projects relating to improvement work including
              widening and strengthening of roads with marginal land acquisition
              along the existing alignments provided it does not pass through
              ecologically sensitive areas such as National Parks, Sanctuaries,
              Tiger reserves, Reserve forests.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Tarred
              Roads in Himalayas and/or Forest areas.</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Distilleries</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Raw
              Skins and Hides</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Pulp,
              paper and newsprint</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Dyes</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" CLASS="TXT4">Cement</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Foundries
              (individual)</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Electroplating</p>
            </li>
            <li>
              <p  style="text-align: justify; margin-left: 75; margin-right: 35" class="txt4">Meta
              amino phenol</p>
            </li>
          </ol>
        </td>
      </tr>
                    </table>
            </div>
                
                
                
                
    
   
	    <table width="95%" align="center">
	   		<tr>
	   		<td colspan="3">&nbsp;</td>
	   		</tr> 
		
		</table>
		        <div align="left" class="txt" style="color: navy">
			  <br>
			
		</div>
		
  			</g:form>
            <br />
            <br />

          </div>
		  
		  
		  </table>
		  
		  
		  
		  
		  
		  
		  
		  
		  
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
<HEAD> 
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE"> 
<META HTTP-EQUIV="Expires" CONTENT="-1">
</HEAD>
</html>


	    	   