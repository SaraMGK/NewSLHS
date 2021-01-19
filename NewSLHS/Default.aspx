<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NewSLHS._Default" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SLHS Clinic</title>
    <link rel="stylesheet" href="styles.css">
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/Images/clinicLogo4.png">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--==========================================	=====================================================-->
        <link rel="stylesheet" type="text/css" href="login/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
    <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="login/css/util.css">
        <link rel="stylesheet" type="text/css" href="login/css/main.css">
    <!--===============================================================================================-->

   
</head>
<body >
    <!--background-->
    <!-- <div class="background" style="background-image: url('background.png');"> -->
        <div class="limiter">
		
            <div class="container-login100" style="background-image:url('/Images/background.png')">
                <div class="wrap-login100">
                         <span class="login100-form-logo">
                            <%--<i class="fa fa-bank"></i>--%>
                             <img src="Images/clinicLogo4.png" width="60%" style="margin-left:10%" />
                         </span> 
    
                        <span class="login100-form-title p-b-34 p-t-27">
                            Log in
                        </span>


                 <form id="form1" class="login100-form" runat="server">
                        
                            <asp:RequiredFieldValidator id="RequiredFieldValidator1"
                                ControlToValidate="username"
                                Display="Static"
                                Width="100%" runat="server" ForeColor="#FF6961">
                                <i class="fa fa-exclamation-circle requiered-icon" style="font-size:24px"></i>
                            </asp:RequiredFieldValidator>
                     <%----------------------------Username Input--------------------------------------%>
                     <div class="wrap-input100">
                 
                            <asp:TextBox ID="username" name="username" runat="server" class="input100 form-control" style="background-color: transparent; border:none;color: white;" placeholder="Username"></asp:TextBox>  
<%--                        <input class="input100 form-control" style="background-color: transparent; border:none;color: white;" type="text" name="username" id="username" placeholder="Username">--%>
                            <span class="focus-input100" style="color: white;" data-placeholder="&#xf207;"></span>
                       
                        </div>


                     <%--------------------------------------Username Validation--------------------------------------%>
                      
                     <%--letters only min:4 char max:25--%>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="username"
                                ForeColor="#FF6961" ValidationExpression="[a-zA-Z]{4,25}" 
                                Display ="Dynamic" ErrorMessage="Invalid Username"/>


                      <%-------------------------------------Password Input-------------------------------------------%>                  
                        <div class="wrap-input100">
                                
                            <asp:TextBox ID="password" name="username" runat="server" class="input100 form-control" style="background-color: transparent; border:none;color: white;" placeholder="Password" TextMode="Password" EnableTheming="True"></asp:TextBox>  
                            <span class="focus-input100" style="color: white;" data-placeholder="&#xf191;"></span>
<%--                        <input id="password" class="input100 form-control" style="background-color: transparent; border:none;color: white;" type="password" name="password" placeholder="Password">--%>

                        </div>


                     <asp:Label ID="invalidMessage" runat="server" ForeColor="#FF6961"></asp:Label>

                        <!-------------------------------------Password Validation------------------------------------------->                  

                            <asp:RequiredFieldValidator id="RequiredFieldValidator2"
                                ControlToValidate="password"
                                Display="Static"
                                Width="100%" runat="server" ForeColor="#FF6961">  
                                <i class="fa fa-exclamation-circle requiered-icon2" style="font-size:24px"></i>
                            </asp:RequiredFieldValidator>
    
                        <!-- <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember">
                            <label class="label-checkbox100" for="ckb1">
                                Remember me
                            </label>
                        </div> -->


                        <div class="container-login100-form-btn">
                            
                            <asp:Button ID="login" style="color: white;" name="login"  runat="server" class="login100-form-btn" Text="Login" OnClick="login_Click" />

                        </div>
    
                        
<%--                        <div class="text-center p-t-90">
                            <span style="color:white" class="txt1">Forgot</span>
                            <a class="txt1" href="">
                                 Password
                            </a>

                            <span style="color:white" class="txt1">Or</span>
                            <a class="txt1" href="">
                                Username?
                           </a>
                        </div>--%>
                        <!-- <div class="text-center ">
                            <a class="txt1" href="">
                                Create Account
                            </a>                           
                        </div> -->

                </form>

                </div>
            </div>
        </div>
        
    
        <div id="dropDownSelect1"></div>
        
    <!--===============================================================================================-->
        <script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
        <script src="login/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
        <script src="login/vendor/bootstrap/js/popper.js"></script>
        <script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
        <script src="login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
        <script src="login/vendor/daterangepicker/moment.min.js"></script>
        <script src="login/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
        <script src="login/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
        <script src="login/js/main.js"></script>
    

</body>
</html>
