<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SMS.aspx.cs" Inherits="khedutupdate.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button2" runat="server" Text="retrieve data" Visible="false" OnClick="Button2_Click" Width="137px" />
    <div class="container">    
        <div id="loginbox" style="margin-top:1px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="text-center">
                             <h1><b>SEND MEDIA</b></h1>
                 
                       <%-- <div class="panel-title">Login</div>
                   --%>     <%--<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>--%>
                    </div>     
                        </div>
                    <div style="padding-top:25px" class="panel-body" >

                        <div style="display:none" id="media-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="mediaform" class="form-horizontal" role="form">
                                                <div class="col-sm-12">
							<div class="form-group">
								<label for="inputFirstName">MEDIA TYPE</label>
                                    <asp:DropDownList ID="m_type" runat="server" class="form-control">
                                        <asp:ListItem Selected="True" Value="-1" >--select--</asp:ListItem>
                                        <asp:ListItem>sms</asp:ListItem>
                                        <asp:ListItem>video</asp:ListItem>
                                        <asp:ListItem>image</asp:ListItem>
                                       
                               </asp:DropDownList>  
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="batch" InitialValue="-1" Text="Batch Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            --%></div>
                           </div>
                 

                          
                                    
                  <div class="col-sm-12">
							<div class="form-group">
								<label for="inputFirstName">SOURCE</label>
                                <asp:TextBox ID="source" runat="server" class="form-control" Placeholder="Enter Contact Number" TextMode="MultiLine"></asp:TextBox>
          				        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="source Required" ControlToValidate="source" ForeColor="Red"></asp:RequiredFieldValidator>
							
                             </div>
						</div>

                            <div class="col-sm-12">
							<div class="form-group">
								<label for="inputFirstName">DISCRIPTION</label>
                                <asp:TextBox ID="description" runat="server" class="form-control" Placeholder="Enter Contact Number" TextMode="MultiLine" ></asp:TextBox>
          				        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="description Required" ControlToValidate="description" ForeColor="Red"></asp:RequiredFieldValidator>
							
                             </div>
						</div>
                     <div class="col-sm-12">
							<div class="form-group">
								<label for="inputFirstName">PATH</label>
                                <asp:FileUpload ID="path" runat="server" class="form-control" type="file" />
                                </div>
                           </div>
    
                              <div class="col-sm-6">
							<div class="form-group">
								<label for="inputFirstName">DATE&TIME</label>
                                <asp:TextBox ID="datetime" runat="server" type="date" class="form-control"  ></asp:TextBox>  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="datetime Required" ControlToValidate="datetime" ForeColor="Red"></asp:RequiredFieldValidator>
							
                            </div>
                          </div>

                            <div class="col-sm-6">
							<div class="form-group">
								<label for="inputFirstName">CROP</label>
                                    <asp:DropDownList ID="crop" runat="server" class="form-control">
                                        <asp:ListItem Selected="True" Value="-1" >--select--</asp:ListItem>
                                        <asp:ListItem>wheat</asp:ListItem>
                                        <asp:ListItem>rice</asp:ListItem>
                                        <asp:ListItem>maize </asp:ListItem>
                                       
                               </asp:DropDownList>  
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="batch" InitialValue="-1" Text="Batch Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            --%></div>
                           </div>
                 
                 
                   

                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                 <%--<div class="col-sm-12 controls">
                          --%>   
      <%--  <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success col-sm-12" CssClass="auto-style1" OnClick="Button1_Click"  />
      --%>   
                                    </br>
                                    <asp:Button ID="Button1" runat="server" Text="SEND" class="btn btn-success col-sm-12" OnClick="Button1_Click"  />
        
                                     <%--<a id="btn-login" href="#" class="btn btn-success">Login  </a>
                               --%>    <%--  <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>--%>

<%--                       </div>
                       --%>         </div>
                            </br>
                            </br>
                            <asp:Label ID="l1" runat="server" Text=""></asp:Label>
                             <asp:Label ID="l2" runat="server" Text=""></asp:Label>

                        
                            </div>
                               

                        </form>     



                        </div>                     
                    </div>  
        </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="f_id" DataSourceID="SqlDataSource1" Visible="False">
        <Columns>
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            <asp:BoundField DataField="f_id" HeaderText="f_id" InsertVisible="False" ReadOnly="True" SortExpression="f_id" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="village" HeaderText="village" SortExpression="village" />
            <asp:BoundField DataField="crop" HeaderText="crop" SortExpression="crop" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    </br>
    <asp:ListBox ID="ListBox1" runat="server" Visible="False"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [contact], [fullname], [f_id], [address], [village], [crop], [email] FROM [registration]"></asp:SqlDataSource>

</asp:Content>
