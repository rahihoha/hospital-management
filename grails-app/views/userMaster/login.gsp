


    
<g:hiddenField name="tunt1" value="${tunt1}" />
	 <% String cont=request.getContextPath(); %>

<table width="100%" border="0" bordercolor="red" cellspacing="0" cellpadding="0">
							<tr>
						
								<td valign="top" bgcolor="#EEEEEE" style="padding-top:8px; padding-bottom:8px;">
<b> LOGIN DETAILS </b></td></tr>
							<tr>
						
								<td valign="top" bgcolor="#EEEEEE" style="padding-top:8px; padding-bottom:8px;">
									<div>       										
									
										<form id="form1" name="form1" method="post" action="userMaster/uLogin">  
											<div id="t" align="center" >
										
					
											<g:if test="${flash.message}">
												<div class="style1"> 
													<span class="error">${flash.message}</span><br/>
												</div>
											</g:if>
					
											</div>
											
									
											<div class="login">User Name</div>
											<div> <input type="text" id="useName" name='userName' class="form1" AUTOCOMPLETE=OFF /></div>
											<div class="clear"></div>
											<div class="login">Password</div>
											<div> <input type="password" id="password" name='password' class="form1" AUTOCOMPLETE=OFF  /></div>
											<div class="clear"></div>
											<div><input type ="hidden" name = "browserDetails" id="browserDetails" value=""><div>
											
						                    <div class="capcha" align:"center"> ${capCode1} </div> 
											<div class="login">Enter</div>
											<div ><input type="text" id="captchaCode" name='captchaCode' class="form1" AUTOCOMPLETE=OFF >&nbsp;
											<a href="#"   class="bulletinside"><b>Login</b></a>
										    
																				
										    </form>
										
											<div class="maintext1" align="left"> <g:link controller="newReg" action="create1">New User Registration</g:link> &nbsp;&nbsp;		<g:link controller="indCatMaster" action="forgetPassword">Forget Password</g:link>
											</div>
									</div>
								</td>
							</tr>								
									
					
						</table>