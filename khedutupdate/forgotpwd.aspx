<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgotpwd.aspx.cs" Inherits="khedutupdate.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <center>
 <div class="form-gap"></div>
<div class="container">
	<div class="row">
		<div class="col-md-5 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">ફરગોટ પાસવર્ડ?</h2>
                 <%-- <p>You can reset your password here.</p>
                 --%>   
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                            <asp:TextBox ID="email" runat="server"  CssClass="form-control" Placeholder="ઈમેલ નાખો"></asp:TextBox>
                        </div>
                      </div>
                      <div class="form-group">
                           <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="સબમિટ" OnClick="Button1_Click" />
                      </div>
                      
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                    </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>

    </div>
</asp:Content>
