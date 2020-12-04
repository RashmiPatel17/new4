<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="crop.aspx.cs" Inherits="khedutupdate.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <asp:Label ID="c_id" runat="server" Text=""></asp:Label>
 <asp:Label ID="f_id" runat="server" Text=""></asp:Label>

    <center>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cropname" DataValueField="cropname"></asp:CheckBoxList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [cropname] FROM [crop]"></asp:SqlDataSource>
    <div class="form-group">
                           <asp:Button ID="Button1" runat="server" Width="100px" CssClass="btn btn-lg btn-primary btn-block" Text="સબમિટ" OnClick="Button1_Click"/>
                      </div>
                       <asp:Label ID="l1" runat="server" Text=""></asp:Label>

    </center>
</asp:Content>
