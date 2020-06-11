﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="DivssPortal.Signup" %>

<!doctype html>

<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Divss Signup</title>
    <meta name="description" content="Divss Signup">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">

    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>



</head>

<body class="bg-dark">
<form id="form1" runat="server" > 

    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <img class="align-content" src="images/logo.png" alt="">
                    </a>
                </div>
                <div class="login-form">
                    <div>
                        <div class="form-group">
                            <label>User Name</label>
                            <asp:TextBox ID="txtUsername" class="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                           <%-- <input type="email" class="form-control" placeholder="User Name">--%>
                        </div>
                            <div class="form-group">
                                <label>Email address</label>
                                <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                <%--<input type="email" class="form-control" placeholder="Email">--%>
                        </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="txtPassword" TextMode="Password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                <%--    <input type="password" class="form-control" placeholder="Password">--%>
                        </div>
                                    <div class="checkbox">
                                        <label>
                                <input type="checkbox"> Agree the terms and policy
                            </label>
                                    </div>
                        <asp:Button ID="btnReg" class="btn btn-primary btn-flat m-b-30 m-t-30" runat="server" Text="Register" onclick="Loging_Click" />
                                  <%--  <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>--%>
                                    
                                    <div class="register-link m-t-15 text-center">
                                        <p>Already have account ? <a href="#"> Sign in</a></p>
                                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>

</form>
</body>

</html>

