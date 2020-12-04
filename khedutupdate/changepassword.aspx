<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="khedutupdate.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                 
                  <h2 class="text-center">Change Password</h2>
                  <p>You can reset your password here.</p>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>
								<asp:TextBox ID="opwd" runat="server"  class="form-control" Type="password"  Placeholder="Current Password" required></asp:TextBox>
							</div>
						</div>


                  
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>								
								<asp:TextBox ID="npwd" runat="server"  class="form-control" Type="password"  Placeholder="New Password" required></asp:TextBox>

							</div>
                          </div>
                        <%--                                  <asp:RegularExpressionValidator id="RegularExpressionValidator2" errormessage="ex: Aa@123, Length='6-16'  " ControlToValidate ="npwd" foreColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,16})" runat="server" />--%>

						



                     
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>		
								<asp:TextBox ID="cnpwd" runat="server"  class="form-control" Type="password"  Placeholder="Confirm New Password" required></asp:TextBox>
					        </div>
						</div>
                      <%--<asp:CompareValidator id="comparePasswords" runat="server" ControlToCompare="npwd" ControlToValidate="cnpwd"  ErrorMessage="Your passwords do not match up!" ForeColor="Red"  Display="Dynamic" />--%>



                        <div class="form-group">
							    <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Change" OnClick="Button1_Click"  />
					     </div>
					     </div>
				
    

    
	  </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
    </div>
<%--<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
--%>

</asp:Content>
