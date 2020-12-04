<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="khedutupdate.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>

 <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <style>
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
   min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
 
}
</style>

    <%--<style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
    <h1 class="well">રજિસ્ટ્રેશન </h1>
	<div class="col-lg-12 well">
	<div class="row">
				<form>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>પૂરું નામ</label>
								<%--<input type="text" placeholder="પૂર્ણ નામ દાખલ કરો" class="form-control">
						--%>	
                      <asp:TextBox ID="fullname" runat="server" class="form-control" Placeholder="પૂર્ણ નામ દાખલ કરો"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="fullname" ForeColor="Red"></asp:RequiredFieldValidator>
							                                  
							</div>
							</div>					
						<div class="form-group">
							<label>સરનામું</label>
						<%--	<textarea placeholder="સરનામું દાખલ કરો" rows="3" class="form-control"></textarea>
					--%>	
                            <asp:TextBox ID="address" runat="server" class="form-control" Placeholder="સરનામું દાખલ કરો" TextMode="MultiLine"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="address Required" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
							
						</div>	

						<div class="row">
							
                            <div class="col-sm-6 form-group">
							<label>ફોન નંબર</label>
						<%--<input type="text" placeholder="ફોન નંબર દાખલ કરો" class="form-control">
			--%>		
                          <asp:TextBox ID="contact" runat="server" class="form-control" Placeholder="ફોન નંબર દાખલ કરો"></asp:TextBox>
                      
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="contact Required" ControlToValidate="contact" ForeColor="Red"></asp:RequiredFieldValidator>
						
							</div>	

                            <div class="col-sm-6 form-group">
								<label>ગામ</label>
								<%--<input type="text" placeholder="ગામ દાખલ કરો" class="form-control">
						--%>	
                                 <asp:TextBox ID="village" runat="server" class="form-control" Placeholder="ગામ દાખલ કરો"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="village Required" ControlToValidate="village" ForeColor="Red"></asp:RequiredFieldValidator>
						
							</div>	
							</div>

						<div class="row">
							<div class="col-sm-6 form-group">
						          	<label>શહેર</label>
								<%--<input type="text" placeholder="શહેર દાખલ કરો" class="form-control">
							--%>
                                  <asp:TextBox ID="city" runat="server" class="form-control" Placeholder="શહેર દાખલ કરો"></asp:TextBox>
                      	 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="city Required" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
							
							</div>		
							<div class="col-sm-6 form-group">
								<label>જીલ્લો</label>
						<%--		<input type="text" placeholder="જિલ્લા દાખલ કરો" class="form-control">
					--%>	
                                  <asp:TextBox ID="district" runat="server" class="form-control" Placeholder="જીલ્લો દાખલ કરો"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="district Required" ControlToValidate="district" ForeColor="Red"></asp:RequiredFieldValidator>
						
							</div>	
						</div>						
				<%--	<div class="form-group">
						<label>ફોન નંબર</label>
						<input type="text" placeholder="ફોન નંબર દાખલ કરો" class="form-control">
					
                          <asp:TextBox ID="contact" runat="server" class="form-control" Placeholder="ફોન નંબર દાખલ કરો"></asp:TextBox>
                      
					</div>      --%>	
                        
                         <div class="row">
							<div class="col-sm-6 form-group">
								<label>રાજ્ય</label>
						<%--		<input type="text" placeholder="રાજ્ય દાખલ કરો" class="form-control">
					--%>		
                                  <asp:TextBox ID="state" runat="server" class="form-control" Placeholder="રાજ્ય દાખલ કરો"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="state Required" ControlToValidate="state" ForeColor="Red"></asp:RequiredFieldValidator>
						
							</div>		

                             <div class="col-sm-6 form-group">
								<label>ઇમેઇલ</label>
						<%--		<input type="text" placeholder="રાજ્ય દાખલ કરો" class="form-control">
					--%>		
                                  <asp:TextBox ID="email" runat="server" class="form-control" Placeholder="ઇમેઇલ દાખલ કરો"></asp:TextBox>
                     <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"
                                            ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                            Display = "Dynamic" ErrorMessage = "Invalid email address" SetFocusOnError="true" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Email Required" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
						
							</div>		

                             </div>
                      <%-- <div class="col-sm-12">
						--%>	
                          <%--  <div class="form-group">--%>
                            	<%--<div class="col-sm-6 form-group">

							<label for="inputFirstName">પાક પસંદ કરો</label>
                             --%>
                               <%--  <label>પાક પસંદ કરો</label>
                            <br />
                                <div class="dropdown">
                                     <asp:TextBox ID="crop" runat="server" Text="" class="form-control" Width="530px">---પસંદ કરો---</asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="crop Required" ControlToValidate="crop" ForeColor="Red"></asp:RequiredFieldValidator>
						
                                    <div class="dropdown-content" id="drp">
                                        <a href="#">
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="ઘઉં"/></a><br />
                                         <a href="#">
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="મકાઈ"/></a><br />
                                          <a href="#">
                                            <asp:CheckBox ID="CheckBox3" runat="server" Text="ચોખા"/></a><br />  
                                        <a href="#">
                                            <asp:CheckBox ID="CheckBox4" runat="server" Text="જુવાર"/></a><br />  
                                        <a href="#">
                                            <asp:CheckBox ID="CheckBox5" runat="server" Text="બાજરી"/></a><br />
                                        <a href="#">
                                            <asp:CheckBox ID="CheckBox6" runat="server" Text="મગફળી"/></a><br />
                                         <a href="#">
                                            <asp:CheckBox ID="CheckBox7" runat="server" Text="એરંડા"/></a><br />
                                        <a href="#">
                                            <asp:CheckBox ID="CheckBox8" runat="server" Text="ચણા"/></a><br />
                                
                                    <asp:Button ID="Button2" runat="server" Text="Ok" CssClass="btn btn-info" OnClick="Button2_Click" CausesValidation="false"/>

                                    </div>
                               </div>                               
                            </div>
                               </div>
                            --%>



				<%--	<div class="form-group">
						<label>ઇમેઇલ</label>
						
					
                          <asp:TextBox ID="email" runat="server" class="form-control" Placeholder="ઇમેઇલ દાખલ કરો"></asp:TextBox>
                       <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                                <asp:RegularExpressionValidator ID="hhhhhuu" runat="server" ControlToValidate="email"
                                            ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                            Display = "Dynamic" ErrorMessage = "Invalid email address" SetFocusOnError="true" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email Required" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
						
					</div>--%>	
		
        <div class="row">
							<div class="col-sm-6 form-group">
								<label>પાસવર્ડ</label>
						<%--		<input type="text" id="pwd" placeholder="પાસવર્ડ દાખલ કરો" class="form-control">
						--%>	
                                  <asp:TextBox ID="password" runat="server" class="form-control" Placeholder="પાસવર્ડ દાખલ કરો" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Required" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator id="RegularExpressionValidator2" errormessage="ex: Aa@123, Length='6-16'  " ControlToValidate ="password" foreColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,16})" runat="server" />
				
							</div>	
							<div class="col-sm-6 form-group">
								<label>અનુરૂપ પાસવર્ડ</label>
						<%--		<input type="text" placeholder="અનુરૂપ પાસવર્ડ દાખલ કરો" class="form-control">
					--%>	
                                  <asp:TextBox ID="cpassword" runat="server" class="form-control" Placeholder="અનુરૂપ પાસવર્ડ દાખલ કરો" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Required" ControlToValidate="cpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                               <asp:CompareValidator id="comparePasswords" runat="server" ControlToCompare="password" ControlToValidate="cpassword"  ErrorMessage="Your passwords do not match up!" ForeColor="Red" Display="Dynamic" />
   						  
							</div>	
							</div>

                                              <%--   </div>--%>



                     <%--   <div class="form-group">
						<label>પાક પસંદ કરો</label>
           <asp:CheckBoxList ID="crop" runat="server" RepeatDirection="Horizontal" Width="850">
               <asp:ListItem>ઘઉં</asp:ListItem>
               <asp:ListItem>મકાઈ</asp:ListItem>
               <asp:ListItem>ચોખા</asp:ListItem>
               <asp:ListItem>જુવાર</asp:ListItem>
               <asp:ListItem>બાજરી </asp:ListItem>
               <asp:ListItem>મગફળી</asp:ListItem>
               <asp:ListItem>એરંડા</asp:ListItem>
               <asp:ListItem>ચણા</asp:ListItem>
                        </asp:CheckBoxList>--%>

                           <%-- <asp:label id="Message" runat="server" AssociatedControlID="crop"/>
       --%>
                        <%--    </div>--%>
					<%--<button type="button" class="btn btn-lg btn-info">Submit</button>					
					<button type="button" class="btn btn-lg btn-info">cancle</button>					
					--%>
                           <center>
                       <div class="col-sm-12">
						 <div class="form-group">
                          <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="સાઇન અપ કરો" OnClick="Button1_Click"  />
                          <asp:Button ID="cancle" runat="server" Text=" રદ કરો" CssClass="btn btn-danger"  />
                          </div>
                           <div class="text-center">
                            <%--<p class="hint-text"><a href="forgotpass.aspx">Forgot Password?</a></p>--%>
			
                             <%--<div style="float:right; font-size: 80%; position: relative; top:-10px">--%>
                                <a href="login.aspx"> લોગિન</a></div>
                         
                            </div>
                           <%--<b>Already have account?</b>--%><%--<a href="login.aspx" style="color:dodgerblue">પ્રવેશ કરો</a>.</p>
                 --%>    
                                 <tr>
    <td colspan="2" style=" color:red"><asp:Label ID="lbltxt" runat="server" style="text-align: center"/></td>
       </tr>    
   

                       </div>
                            </center>

                    </div>
				</form> 
				</div>
	</div>
	</div>

</asp:Content>
