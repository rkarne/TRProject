<%-- 
    Document   : booking
    Created on : 17-Oct-2017, 10:59:21 PM
    Author     : rkarne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Reservation Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="images/logo.jpg">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- Include Bootstrap-select CSS, JS -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>
<!-- Include Bootstrap Datepicker -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

  <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  
  .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #f4511e; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #f4511e !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #f4511e;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>
  <script>
      function validation(){
          var source;
          var destin;
          var date;
          
          return true;
      }
      </script>
      <script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
   var user = '<%= session.getAttribute("userfullname") %>';
     console.log(user);
    if(user === null || user === '' || user === "" || user === undefined || user === 'null'){
        alert('Your session is expried. Please login again');
        window.location.href = "index.jsp";
    }
});
</script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Train Reservation</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
           <li><a href="home.jsp">HOME</a></li>
        <li><a href="#about">TICKET</a></li>
        <li><a href="javascript:history.back()">PASSENGERS</a></li>
        <li><a href="LogoutServlet">LOGOUT</a></li> 
      </ul>
    </div>
  </div>
</nav>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
      <div class="col-lg-9">
<h2>Ticket Information</h2>
<h4><p >Welcome <i style='color:#f4511e;'>${userfullname}</i></p>
<h4>Status of booking is sent directly to Email. Next step payment details.</h4>

</div>
    <div class="col-lg-3">
            <img src="images/source.gif" alt="imagelogo" style="height:190px; width: 350px; float: right;">
        </div>
<p> <span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span>Please review your ticket details and fares then proceed with payment steps. Enjoy your journey! </p>


<form  id="ticketform" action="Payment" method="post" role="form">
    <div class="container well">
        <div class="row-fluid">
	<div class="span4">
            <h4><span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span> <u> Ticket Preview</u>&nbsp;&nbsp; &nbsp; 
                <i style="color: #f4511e;"> Per head: $30.00 usd </i> </h4>
             <div class="col-sm-4" style="background-color:#FEFFB1;">
                 <h4><span style='color:#f4511e'>Train Source: </span> ${src}</h4>
                 <h4> <span style='color:#f4511e'>Journey Date: </span>${date}</h4>
             </div>
             <div class="col-sm-4" style="background-color:#FEFFB1;">
                  <h4><span style='color:#f4511e'>Train Destination: </span> ${des}</h4>
                  <h4><span style='color:#f4511e'>No Of Passengers: </span>${pass}</h4>
             </div> 
             <div class="col-sm-4" style="background-color:#FEFFB1;">
                 <center>  <img src="images/icons.png" alt="imagelogo" style="height:120px;"></center>
             </div>  
        </div>
              <div class="span4" >
            <p style="margin-top: 180px;"><span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span>
                Carefully verify the Baggage allowance.</p> 
            <div  class="col-lg-12" style="background-color:#FEFFB1; color: black;">
              
            <p> 1 PERSONAL ITEM</p>
            <p> Max. 11.5 kg (25lb.),  Max. 43 x 15 x 33 cm (17 x 6 x 13 in.)</p>
            <p>   AND </p>
            <p>  1 LARGE ITEM</p>
            <p>   Max. 23 kg (50lb.),  Max. 158 linear cm (62 li. in.)</p>
            <p>   OR</p>
            <p>    2 SMALL ITEMS </p>
            <p>   Max. 11.5 kg (25 lb.) each ,  Max. 54.5 x 39.5 x 23 cm (21.5 x 15.5 x 9 in.) each</p>
            <p>    OVERWEIGHT ITEM(S): Items over 23kg (50lb.) are NOT permitted on board.</p>
              <p>   ADDITIONAL CARRY-ON ITEM: 1 item allowed Max 23 kg (50lb.) $40 (tax included) per direction.
            </p>
            </div>
           
             <div id="getpass">
                    <p style="margin-top: 410px;"><span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span>
                Carefully verify the passengers information.</p> 
<!--                 <h4>Passengers Information</h4>-->
                 <div class="col-sm-4" style="background-color:#FEFFB1;">
                 <c:forEach begin="0" end="${fn:length(passengerName) - 1}" var="index">
                         <h4> Name: <c:out value="${passengerName[index]}"/></h4>
                 </c:forEach>
                 </div>
                 <div class="col-sm-4" style="background-color:#FEFFB1;">
                     <c:forEach begin="0" end="${fn:length(passengerAge) - 1}" var="index">
                         <h4> Age: <c:out value="${passengerAge[index]}"/></h4>
                 </c:forEach>
                 </div>
                 <div class="col-sm-4" style="background-color:#ffdf32; height: auto;">
                     <h4>Ticket Fare: <i style='color:#f4511e;'>$ ${fare} .00</i></h4>
                     <h4>G.S.T/H.S.T: <i style='color:#f4511e;'>$ ${hst}0</i></h4>
                     <h4>P.S.T: <i style='color:#f4511e;'>$ 0.00</i></h4> 
                     <hr/>
                      <h4>Total: <i style='color:#f4511e;'>$ ${total}0</i></h4> 
                 </div>
             </div>
        </div>
             <center>     <button class="btn btn-lg" style=" background-color: #f4511e; color: white" type="submit" >Payment</button></center>
        </div>    
    </div>
 </form>
  </div>
</div>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Contact <a href="#" title="Click here">muqeed27@gmail.com</a></p>
</footer>



</body>
</html>


