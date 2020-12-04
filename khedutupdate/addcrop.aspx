<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addcrop.aspx.cs" Inherits="khedutupdate.WebForm12" %>
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

     <div class="container">    
        <div id="loginbox" style="margin-top:1px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="text-center">
                             <h1><b>Add Crop</b></h1>
                 
                       <%-- <div class="panel-title">Login</div>
                   --%>     <%--<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>--%>
                    </div>     
                        </div>
                    <div style="padding-top:25px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                                    
                             <div class="col-sm-12">
							<div class="form-group">
								<label for="inputFirstName">Crop Name</label>
                                <asp:TextBox ID="cropname" runat="server" class="form-control" Placeholder="Enter Crop Name"></asp:TextBox>
          				        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="source Required" ControlToValidate="cropname" ForeColor="Red"></asp:RequiredFieldValidator>
							
                             </div>
						</div>

                              
                                            

                                <div style="margin-top:0px"class="form-group">
             
                                    <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-success col-sm-12" OnClick="Button1_Click" />
            </div>
                            </br>
                            </br>
                            <asp:Label ID="l2" runat="server" Text=""></asp:Label>

                           
                             
                        </form>     



                        </div>                     
                    </div>  
        </div>

</asp:Content>
