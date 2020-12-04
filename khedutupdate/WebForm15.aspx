<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="khedutupdate.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 243px;
            background-color:lavenderblush;

        }
        .auto-style2 {
            text-align: center;
            /*background-color: #FFFFCC;*/
        }
        .auto-style4 {
            text-align: center;
            height: 59px;
            /*background-color: #FFFFCC;*/
        }
        .auto-style5 {
            /*background-color: #FFFFCC;*/
        }
        .auto-style6 {
            /*background-color: #75CEF0;*/
        }
        .auto-style7 {
            width: 44%;
            height: 46px;
            margin-bottom: 0px;
        }
        .auto-style8 {
            text-align: left;
            width: 179px;
        }
        .auto-style9 {
            width: 179px;
        }
        .auto-style10 {
            text-align: left;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="auto-style10">
        <br />
        <br />

        <asp:DataList ID="DataList1" runat="server" align="center" DataKeyField="m_id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal"  CssClass="auto-style5" Width="1110px">
        <ItemTemplate>
            <div class="col-sm-3">

            <table class="auto-style1" border="3" style="border:4px solid;width:300px">
                
    <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("m_type") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("source") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("path") %>' Width="200px" />
                    </td>
                </tr>
              <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("datetime") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("crop") %>'></asp:Label>
                    </td>
                </tr>

                               </tr>
            </table>
                 <br />
            <br />
            </div><br>
        </ItemTemplate>
    </asp:DataList>

   
        <br />
    
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [media]">
   </asp:SqlDataSource>
        
</asp:Content>
