<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="khedutupdate.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .container1 {
            position: relative;
            width: 500px;
            margin-left:80px;
            margin-right:50px;
        }

        .image {
            display: block;
            border:double;
            width: 300px;
            height: 230px;
        }

        .overlay {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            height:230x;
            width: 300px;
            opacity: 0;
            transition: .5s ease;
            background-color:burlywood;
        }

        .container1:hover .overlay {
            opacity: 1;
        }

        .text {
            color: black;
            font-size: 15px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: small;
            font-weight: bold;
        }
        .auto-style6 {
            font-size: small;
        }
    </style>

    <div class="auto-style2" style="margin-top:10px;margin-bottom:30px; color:Highlight;"><strong></strong></div>

    <%--<div id="map" style="width:100%;height:400px;margin-left:50px;margin-right:50px">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3685.212440816228!2d72.96791371449751!3d22.53371338520285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e4c3faaaaaaab%3A0xcf7918e63be0d79c!2sCollege+of+Agricultural+Information+Technology!5e0!3m2!1sen!2sin!4v1524946919742" frameborder="1" style="border-style:inherit; border-color:black; border-width:thick; width: 1201px; height: 331px; margin-left: 12px; margin-right: 0px;" allowfullscreen ></iframe>
    </div>--%>

    <table class="nav-justified" style="margin-bottom:10px;margin-top:10px">
        <tr>
            <td>
                <div class="container1">
                    <img src="image/location.png" class="image" />
                    <div class="overlay">
                        <div class="text">
                            <p class="auto-style6">કોલેજ ઓફ</p>
                            <p class="auto-style6">એગ્રિકલ્ચરલ ઇન્ફોર્મેશન ટેક્નોલોજી</p>
                            <p class="auto-style6">આણંદ એગ્રિકલ્ચરલ યુનિવર્સિટી</p>
                            <span class="auto-style5">આણંદ,ગુજરાત-૩૮૮૧૧૦</span>
                        </div>
                    </div>
                </div>
            </td>
            <td>
                <div class="container1">
                    <img src="image/call.jpg" class="image"/>
                    <div class="overlay">
                        <div class="text">
                            <p><span class="auto-style4">મોબાઇલ નંબર</p>
                            <p></p>
                            </span>
                            <b><span class="auto-style4">+૯૧-૮૪૬૯૫૧૦૫૦૯</span></b>
                            
                        </div>
                    </div>
                </div>
            </td>
            <td>
                <div class="container1">
                    <img src="image/mail.png" class="image" />
                    <div class="overlay">
                        <div class="text">
                            <p><span class="auto-style4">ઈમેલ</p>
                            <p></p>
                            </span>
                            <b><span class="auto-style4">patelrashmi17899@gmail.com</span></b>
                            
                        </div>
                    </div>
                </div>
            </td>
            
        </tr>
        
    </table>
    <br />
    <br />
</asp:Content>
