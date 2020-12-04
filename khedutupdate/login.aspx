<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="khedutupdate.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="f_id" runat="server" Text="" Visible="false"></asp:Label>

    <div class="container">    
        <div id="loginbox" style="margin-top:1px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="text-center">
                             <h1><b>લોગિન</b></h1>
                 
                       <%-- <div class="panel-title">Login</div>
                   --%>     <%--<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>--%>
                    </div>     
                        </div>
                    <div style="padding-top:25px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                     <asp:TextBox ID="email" runat="server" class="form-control" placeholder="મોબાઇલ નંબર અથવા ઇમેઇલ"></asp:TextBox>
				
                                </div>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="email Required" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
							
<%--                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
                                  --%>  
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <%--                    <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                    --%>               
                                		 <asp:TextBox ID="password" runat="server" class="form-control" TextMode="Password" placeholder="પાસવર્ડ" ></asp:TextBox>
				  </div>
                                    
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password Required" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
							
                           
                    <%--         <div style="margin-bottom: 25px" class="input-group">
                                                 <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                               <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                 
                                		 <asp:TextBox ID="contact" runat="server" Visible="false" class="form-control" placeholder="પાસવર્ડ" ></asp:TextBox>
				
                            </div>
                                    --%>  

                                
                           <%-- <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>--%>


                                <div style="margin-top:0px"class="form-group">
                                    <!-- Button -->

                                 <%--<div class="col-sm-12 controls">
                          --%>   
      <%--  <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success col-sm-12" CssClass="auto-style1" OnClick="Button1_Click"  />
      --%>   
                                    <asp:Button ID="Button1" runat="server" Text="લોગિન" class="btn btn-success col-sm-12" OnClick="Button1_Click" />
        
                                     <%--<a id="btn-login" href="#" class="btn btn-success">Login  </a>
                               --%>    <%--  <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>--%>

<%--                       </div>
                       --%>         </div>
                            </br>
                            </br>
                            <asp:Label ID="l1" runat="server" Text=""></asp:Label>

                            <div class="text-center">
                            <%--<p class="hint-text"><a href="forgotpass.aspx">Forgot Password?</a></p>--%>
			
                             <%--<div style="float:right; font-size: 80%; position: relative; top:-10px">--%>
                                <a href="forgotpwd.aspx">ફરગોટ પાસવર્ડ?</a></div>
                         
                            </div>
             <div class="text-center">
                            <%--<p class="hint-text"><a href="forgotpass.aspx">Forgot Password?</a></p>--%>
			
                             <%--<div style="float:right; font-size: 80%; position: relative; top:-10px">--%>
                               <%-- <a href="#">Forgot password?</a></div>
                          --%> <a href="Registration.aspx">રજિસ્ટ્રેશન!!</a></div>
                    
                            </div>
                           
                                <%--<div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                           --%>

                        </form>     



                        </div>                     
                    </div>  
        </div>


</asp:Content>
