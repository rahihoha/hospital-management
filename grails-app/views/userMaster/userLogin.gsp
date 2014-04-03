


    
<g:hiddenField name="tunt1" value="${tunt1}" />
	 <% String cont=request.getContextPath(); %>
<table width="100%" border="0" bordercolor="red" cellspacing="0" cellpadding="0">
							<tr>
							
								
							</tr>
							<tr>
								<td valign="top" bgcolor="#EEEEEE" style="padding-top:8px; padding-bottom:8px;">
									<div>       										
									
										<form id="form1" name="form1" method="post" action="userMaster/doLogin">  
											<div id="t" align="center" >
										
					
											<g:if test="${flash.message}">
												<div class="style1"> 
													<span class="error">${flash.message}</span><br/>
												</div>
											</g:if>
					
											</div>
											<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" id="countrytabs" >
     <tr>
              <br>
               <td width="95%" align="left" class="headngbig" bgcolor=""><b>LOGIN DETAILS :</b> </td></tr>
             </table>
             <table></table>
											<table>
											<tr>
											</tr>
											<tr>
										
											</tr><tr>
											</tr>
											</table>
	<table>			
			<tr>							<td><div class="radio">	<label> <input id="radioButton" name="radioButton"  type="radio" value="admin" checked="checked" /></label> </div>
											</td><td><div class="login_heading"> Admin Login</div>
										</td><td>	<div class="radio"> <label>	<input id="radioButton" name="radioButton" type="radio" value="user" /></label></div>
											</td><td><div class="login_heading"> User Login </div>
						</td></tr></table>					<div class="clear"></div>
																		
					<div class="login">UserName</div>
											<div> <input type="text" id="userId" name='userId' class="form1" AUTOCOMPLETE=OFF /></div>
											<div class="clear"></div>
								
											<div class="login">Password</div>
											<div> <input type="password" id="password" name='password' class="form1" AUTOCOMPLETE=OFF  /></div>
											<div class="clear"></div>
											<div><input type ="hidden" name = "browserDetails" id="browserDetails" value=""><div>
											
						                    <div class="capcha" align:"center"> ${capCode1} </div> 
											<div class="login">Enter</div>
											<div ><input type="text" id="captchaCode" name='captchaCode' class="form1" AUTOCOMPLETE=OFF >&nbsp;
											<input type="hidden" id="capCode1" name='capCode1' value=${capCode1} class="form1" AUTOCOMPLETE=OFF >
										   
											<div class="label">Enter code shown above</div>									    
							<table><tr></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
							<td><input type="submit" name="login"
															value="Login" class="actionbutton">													
									</td></tr></table>															
										    </form>
										
											<div class="maintext1" align="left"> <g:link controller="newReg" action="create1">User Registration</g:link>	&nbsp&nbsp <g:link controller="adminReg" action="create1">Admin Registration</g:link>
											</div>
									</div>
								</td>
							</tr>
						<tr>
                <td valign="top"><img src="${createLinkTo(dir:'images2/gif',file:'nurse.gif')}" width="224" height="224" /></td>
              </tr>           
							
					
						</table>