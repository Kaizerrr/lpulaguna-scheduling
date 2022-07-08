<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login - <?php include('dist/includes/title.php'); ?></title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->

<body class="hold-transition login-page" style="background:#eeeeee">

  <style>
    @import url(https://fonts.googleapis.com/css?family=Open+Sans);

    .btn {
      display: inline-block;
      *display: inline;
      *zoom: 1;
      padding: 4px 10px 4px;
      margin-bottom: 0;
      font-size: 13px;
      line-height: 18px;
      color: #333333;
      text-align: center;
      text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
      vertical-align: middle;
      background-color: #f5f5f5;
      background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
      background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6);
      background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
      background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
      background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
      background-image: linear-gradient(top, #ffffff, #e6e6e6);
      background-repeat: repeat-x;
      filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0);
      border-color: #e6e6e6 #e6e6e6 #e6e6e6;
      border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
      border: 1px solid #e6e6e6;
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      border-radius: 4px;
      -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
      -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
      box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
      cursor: pointer;
      *margin-left: .3em;
    }

    .btn:hover,
    .btn:active,
    .btn.active,
    .btn.disabled,
    .btn[disabled] {
      background-color: #e6e6e6;
    }

    .btn-large {
      padding: 9px 14px;
      font-size: 15px;
      line-height: normal;
      -webkit-border-radius: 5px;
      -moz-border-radius: 5px;
      border-radius: 5px;
    }

    .btn:hover {
      color: #333333;
      text-decoration: none;
      background-color: #e6e6e6;
      background-position: 0 -15px;
      -webkit-transition: background-position 0.1s linear;
      -moz-transition: background-position 0.1s linear;
      -ms-transition: background-position 0.1s linear;
      -o-transition: background-position 0.1s linear;
      transition: background-position 0.1s linear;
    }

    .btn-primary,
    .btn-primary:hover {
      text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
      color: #ffffff;
    }

    .btn-primary.active {
      color: rgba(255, 255, 255, 0.75);
    }

    .btn-primary {
      background-color: #a62d38;
      background-image: -moz-linear-gradient(top, #a62d38, #a62d38);
      background-image: -ms-linear-gradient(top, #a62d38, #a62d38);
      background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#a62d38), to(#a62d38));
      background-image: -webkit-linear-gradient(top, #a62d38, #a62d38);
      background-image: -o-linear-gradient(top, #a62d38, #a62d38);
      background-image: linear-gradient(top, #a62d38, #a62d38);
      background-repeat: repeat-x;
      filter: progid:dximagetransform.microsoft.gradient(startColorstr=#a62d38, endColorstr=#a62d38, GradientType=0);
      border: 1px solid #3762bc;
      text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
      box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5);
    }

    .btn-primary:hover,
    .btn-primary:active,
    .btn-primary.active,
    .btn-primary.disabled,
    .btn-primary[disabled] {
      filter: none;
      background-color: #a62d38;
    }

    .btn-block {
      width: 100%;
      display: block;
    }

    * {
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      -ms-box-sizing: border-box;
      -o-box-sizing: border-box;
      box-sizing: border-box;
    }

    html {
      width: 100%;
      height: 100%;
      overflow: hidden;
    }

    body {
      width: 100%;
      height: 100%;
      font-family: 'Open Sans', sans-serif;
      background: #eeeeee;
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#3E1D6D', endColorstr='#092756', GradientType=1);
    }

    .login {
      position: absolute;
      background-color: #a62d38;
      width: 100%;
      height: 200;
    }

    .login h1 {
      color: #fff;
      text-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
      letter-spacing: 1px;
      text-align: right;
      margin-right: 20px;
      margin-top: 45px;
    }

    .login-details {
      position: absolute;
      top: 50%;
      left: 50%;
      margin: -150px 0 0 -150px;
      width: 300px;
      height: 300px;

    }

    img {
      width: 100px;
      height: 100px;
      float: left;
      margin-top: 20px;
      margin-left: 20px
    }

    input {
      width: 100%;
      margin-bottom: 10px;
      background: rgb(255, 255, 255);
      border: none;
      outline: none;
      padding: 10px;
      font-size: 13px;
      color: rgb(0, 0, 0);
      ;
      text-shadow: 1px 1px 1px rgb(255, 255, 255);
      border: 1px solid rgb(255, 255, 255);
      border-radius: 4px;
      box-shadow: inset 0 -5px 45px rgb(255, 255, 255), 0 1px 1px rgb(255, 255, 255);
      -webkit-transition: box-shadow .5s ease;
      -moz-transition: box-shadow .5s ease;
      -o-transition: box-shadow .5s ease;
      -ms-transition: box-shadow .5s ease;
      transition: box-shadow .5s ease;
    }

    input:focus {
      box-shadow: inset 0 -5px 45px rgb(255, 255, 255), 0 1px 1px rgba(255, 255, 255);
    }
  </style>
  <div class="login">
    <img src="logo.png" alt="Lyceum-Logo">
    <h1>Login</h1>

  </div>

  <div class="login-details">
    <form method="post" action="login.php">
      Username
      <input type="text" name="username" placeholder="Enter your username..." required="required" />
      Password
      <input type="password" name="password" placeholder="Enter your password..." required="required" />
      <button type="submit" value="submit" name="login" class="btn btn-primary btn-block btn-large">Sign in</button>
    </form>
  </div>

  <!-- jQuery 2.1.4 -->
  <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
  <!-- Bootstrap 3.3.5 -->
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <!-- SlimScroll -->
  <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="plugins/fastclick/fastclick.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/app.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="dist/js/demo.js"></script>
</body>

</html>