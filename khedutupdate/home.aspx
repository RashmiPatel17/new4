<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="khedutupdate.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--<div class="container">
<div class="row">--%>
  <%--<div class="col-sm-8">--%>
    <%--<div  style="margin-left:100px;margin-right:100px;margin-bottom:auto;margin-top:auto;"id="myCarousel" class="carousel slide" data-ride="carousel">
    --%>     
      <!-- Indicators -->
      <%--<ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>--%>

      <!-- Wrapper for slides -->
      <%--<div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="image/k1.jpg" style="width:1024px;height:300px;" />
          <div class="carousel-caption">
            <h3></h3>
            
          </div>      
        </div>

        <div class="item">
          <img src="image/k2.jpg" style="width:1024px;height:300px;"/>
          <div class="carousel-caption">
            <h3></h3>

          </div>      
        </div>
           <div class="item">
          <img src="image/k3.jpg" style="width:1024px;height:300px;"/>
          <div class="carousel-caption">
            <h3></h3>
      </div>
               </div>
          <div class="item">
          <img src="image/k4.jpg" style="width:1024px;height:300px;"/>
          <div class="carousel-caption">
            <h3></h3>
      </div>
               </div>--%>

      <!-- Left and right controls -->
     <%-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
        </div>
      </div>

         </br>
    </br>--%>
    
     <div class="abc" style=" display: block;
    margin-left: auto;
    margin-right: auto;
    width: 70%">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>

  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="image/k1.jpg"  alt="Los Angeles" style="width:100%;height:450px"/>
    </div>

    <div class="item"> 
      <img src="image/k2.jpg" alt="New York" style="width:100%;height:450px"/>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
         <br />
         <br />
</asp:Content>
