<%-- 
    Document   : booking
    Created on : 17-Oct-2017, 10:59:21 PM
    Author     : rkarne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <li><a href="#about">RESERVATION</a></li>
        <li><a href="LogoutServlet">LOGOUT</a></li> 
      </ul>
    </div>
  </div>
</nav>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
<div class="col-lg-9">
       <h2>CONFIRM BOOKING</h2>
       <h4><p >Thank you <i style='color:#f4511e;'>${userfullname}</i> & visit again.</p> </h4>
        <h4>Status of booking is sent directly to Email.</h4>
   </div>
    <div class="col-lg-3">
            <img src="images/train.gif" alt="imagelogo" style="height:190px; width: 350px; float: right;">
    </div>
<p> <span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span>
    Booking confirmation & payment is successful. Please review train and ticket details. Wish you happy journey! </p>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form  id="passengersform" action="" method="post" role="form">
    <div class="container well">
        <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span> Your Name:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${name} </p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Ticket NO:  </p>
            </div>
             <div class="col-sm-8">
                  <p> 256${cardNumber}11-${des}-SFE</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Train Name:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${src}-${des} Super Fast Express </p>
            </div>
        </div>
            <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Train NO:  </p>
            </div>
             <div class="col-sm-8">
                  <p> 256${cardNumber}11 </p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Train Time:  </p>
            </div>
             <div class="col-sm-8">
                  <p> 06.10 AM </p>
            </div>
        </div>
            <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Source:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${src}  </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Destination:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${des}  </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Date:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${date}  </p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Card Number:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${cardNumber}  </p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Card Expiry:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${ExpDate}  </p>
            </div>
        </div>
        
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>No Of Passengers:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${pass}  </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span> Address: </p>
            </div>
             <div class="col-sm-8">
                  <p> ${street}  </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>City:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${city}  </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Province:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${state}  </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Zip:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${zip} </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Phone:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${phone}  </p>
            </div>
        </div>
         <div class="row">
            <div class="col-sm-4">
                 <p> <span style="color: red" class="glyphicon glyphicon-ok-sign">&nbsp; </span>Email:  </p>
            </div>
             <div class="col-sm-8">
                  <p> ${email}  </p>
            </div>
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

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  
</script>

</body>
</html>


