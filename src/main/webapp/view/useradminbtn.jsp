<!DOCTYPE html>
<!-- This is front page login -->
<html lang="en">
<head>
  
  <!--  Meta  -->
  <meta charset="UTF-8" />

<title></title>
   
  <!--  Styles  -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles/index.processed.css">
</head>
<body>

<!-- html -->


<br>
<br>
<br>
<br>
<br>
<br>

  <div class="container">
    <header>
<font size="500%" color="#32CD32">
<center>BLOG MANAGEMENT SYSTEM</center>
</font>

  </header>
</div>
<br>
<br>
<br>
  <div class="container">
    <div class="row">
      <div class="col-4"></div>
      <div class="col-4">
        <div class="login_form">
          
          <div class="user-login text-center">
          <h1>
            <a href="priyankaLogin">User Login</a>
            </h1>
          </div>
          <br>
<br>
          
<!--           for admin login -->
          <div class="admin-login text-center">
          <h1>
            <a href="adpriyankalogin">Admin Login</a>
            </h1>
          </div>
          
  
        </div>
      </div>
      <div class="col-4"></div>
    </div>
  </div>

  
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js">      </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="scripts/index.js"></script>
</body>
</html>

<style>

<!-- style -->

/* CSS reset */
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td { 
	margin:0;
	padding:0;
}
html,body {
	margin:0;
	padding:0;
}
table {
	border-collapse:collapse;
	border-spacing:0;
}
fieldset,img { 
	border:0;
}
input{
	border:1px solid #b0b0b0;
	padding:3px 5px 4px;
	color:#979797;
	width:190px;
}
address,caption,cite,code,dfn,th,var {
	font-style:normal;
	font-weight:normal;
}
ol,ul {
	list-style:none;
}
caption,th {
	text-align:left;
}
h1,h2,h3,h4,h5,h6 {
	font-size:100%;
	font-weight:normal;
}
q:before,q:after {
	content:'';
}
abbr,acronym { border:0;
}
/* General Demo Style */
body{
  font-family: "helvetica neue", helvetica;
	background: #000;
	font-weight: 400;
	font-size: 15px;
	color: #aa3e03;
	overflow-y: scroll;
	overflow-x: hidden;
}
.ie7 body{
	overflow:hidden;
}
a{
	color: #333;
	text-decoration: none;
}
.container{
	position: relative;
	text-align: center;
}
.clr{
	clear: both;
}
.container > header{
	padding: 30px 30px 10px 20px;
	margin: 0px 20px 10px 20px;
	position: relative;
	display: block;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
    text-align: left;
}
.container > header h1{
  font-family: "helvetica neue", helvetica;
	font-size: 35px;
	line-height: 35px;
	position: relative;
	font-weight: 400;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
    padding: 0px 0px 5px 0px;
}
.container > header h1 span{

}
.container > header h2, p.info{
	font-size: 16px;
	font-style: italic;
	color: #f8f8f8;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.6);
}


<!-- style -->





/**
 * index.scss
 * - Add any styles you want here!
 */

body {
  background: #f5f5f5;
}
.user-login {
  background-color: #58A680;
  padding: 7px 0px;
  margin-bottom: 5px;
}
.user-login a {
  text-decoration: none;
  color: #fff;
}

.user-login a:hover {
  text-decoration: none;
  color: #fff;
}
.form-group {
    margin-bottom: 5px;
}

#user_login_submit {
  border-radius: 0px;
  padding: 3px 12px;
  margin-bottom: 5px;
  background-color: #58A680;
}

.admin-login {
  background-color: #58A680;
  padding: 7px 0px;
  margin-bottom: 5px;
}
.admin-login a {
  text-decoration: none;
  color: #fff;
}

.admin-login a:hover {
  text-decoration: none;
  color: #fff;
}
#admin_login_submit {
  border-radius: 0px;
  padding: 3px 12px;
  margin-bottom: 5px;
  background-color: #58A680;
}





</style>



<script>

<!-- script -->




<!-- script -->









/**
 * index.js
 * - All our useful JS goes here, awesome!
 */

$(document).ready(function() {
  $('#user-form').hide();
  $('#admin-form').hide();
});
$('.user-login').on('click',function() {
    $('#admin-form').hide();
    $("#user-form").toggle();
  });
  
  $('.admin-login').on('click',function() {
    $("#admin-form").toggle();
    $('#user-form').hide();
  });


</script>