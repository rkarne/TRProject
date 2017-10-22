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

 <!-- Vendor libraries -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<script src="js/jquery.payment.min.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js"></script>-->
<link href="css/payment.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script src="js/payment.js" type="text/javascript"></script>
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

function validation(){
  return true;  
}

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
        <li><a href="#about">PAYMENT</a></li>
        <li><a href="javascript:history.back()">TICKET</a></li>
        <li><a href="LogoutServlet">LOGOUT</a></li> 
      </ul>
    </div>
  </div>
</nav>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">

  <div class="col-lg-9">
       <h2>Payment Information</h2>
       <h4><p >Welcome <i style='color:#f4511e;'>${userfullname}</i></p></h4>
        <h4>Status of booking is sent directly to Email. Process complete payment to confirm booking.</h4>
   </div>
    <div class="col-lg-3">
            <img src="images/train.gif" alt="imagelogo" style="height:190px; width: 350px; float: right;">
    </div>
<p> <span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span>Please proceed with payment method, billing address and payment details. Enjoy your journey! </p>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form class="form-horizontal" id="paymentform" action="Payment" method="post" role="form">
    <div class="container well">
        <!--PAYMENT METHOD -->
        <p> <span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span>Payment Method  </p>
        <center>
        
         <!-- CREDIT CARD FORM STARTS HERE -->
            <div class="panel panel-default credit-card-box" style="width:45%;">
                <div class="panel-heading display-table"  >
                    <div class="row display-tr" >
                        <h4 class="panel-title display-td" >Payment Type</h4>
                        <div class="display-td" >                            
                            <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                        </div>
                    </div>                    
                </div>
                <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group" style="width:50%;">
                                        <input 
                                            type="tel"
                                            class="form-control"
                                            name="cardNumber"
                                            id="cardNumber"
                                            placeholder="Valid Card Number"
                                            autocomplete="cc-number"
                                            required 
                                        />
                                        <span  class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="row" style="width:50%;">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input 
                                       id="cardExpiry"
                                        type="tel" 
                                        class="form-control" 
                                        name="cardExpiry"
                                        placeholder="MM / YY"
                                        autocomplete="cc-exp"
                                        required 
                                    />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CV CODE</label>
                                    <input 
                                        id="cardCVC"
                                        type="tel" 
                                        class="form-control"
                                        name="cardCVC"
                                        placeholder="CVC"
                                        autocomplete="cc-csc"
                                        required
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="row"   style="width:50%;">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">COUPON CODE</label>
                                    <input type="text" class="form-control" name="couponCode" />
                                </div>
                            </div>                        
                        </div>
<!--                        <div class="row">
                            <div class="col-xs-12">
                                <button class="subscribe btn btn-success btn-lg btn-block" type="button">Start Subscription</button>
                            </div>
                        </div>-->
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                </div>
            </div>            
            <!-- CREDIT CARD FORM ENDS HERE -->
        </center>
<!--    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
    </div>-->

         <!--BILLING ADDRESS -->
          <p> <span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span>Billing Address  </p>
          <center>
    <div style="width:50%;   border: 1px solid #f4511e;  padding: 30px; background-color: white;">
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="paymentName" placeholder="Enter Your Name" name="paymentName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="address"> Address:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="paymentAddress" placeholder="Enter Your Address " name="paymentAddress">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="city">City:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="paymentCity" placeholder="Enter Your City" name="paymentCity">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="province">Province:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="paymentProvince" placeholder="Enter Your Province" name="paymentProvince">
      </div>
    </div>
          
    <div class="form-group">
      <label class="control-label col-sm-2" for="zip">ZIP:</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" id="paymentZip" placeholder="Enter Your ZIP Code" name="paymentZip">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Phone: </label>
      <div class="col-sm-10">          
        <input  type="tel" class="form-control" id="paymentPhone" placeholder="Enter Your Phone Number" name="paymentPhone">
      </div>
    </div>
          
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="paymentEmail" placeholder="Enter Your Email" name="paymentEmail">
      </div>
    </div>
    </div>
          </center>
          <!--TOTAL PAYMENT -->
     <p> <span style="color: red" class="glyphicon glyphicon-hand-right">&nbsp; </span> Payment Details  </p>
     <center>
    <div class="form-group" style="width:50%;   border: 1px solid #f4511e;  padding: 30px; background-color: white;">
      <label class="control-label col-sm-2" for="email">Total :</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" id="total" value="$ ${total}0" name="email" readonly required/>
      </div>
    </div>
     </center>
   <br/>
     <!-- confirm booking -->
     <center>     <button class="btn btn-lg" style=" background-color: #f4511e; color: white" type="submit" onclick="return validation()">Confirm</button></center>
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


