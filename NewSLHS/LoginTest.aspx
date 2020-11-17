<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginTest.aspx.cs" Inherits="NewSLHS.LoginTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>
    <link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .auto-style1 {
            width: 281px;
        }
        .auto-style2 {
            width: 1226px;
        }
        .auto-style3 {
            width: 50%;
        }
        .auto-style4 {
            width: 727px;
        }
        .auto-style5 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            font-weight: 400;
            border: 1px solid #ced4da;
            background-color: #fff;
            background-image: none;
        }
    </style>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      <h1>Login</h1>

        <table class="auto-style3">
            <tr>
                <td class="auto-style1">Username</td>
                <td class="auto-style2">

            <asp:TextBox ID="TextUsername" runat="server" TextMode="SingleLine" ToolTip="Username"></asp:TextBox>
                   &nbsp;</td>
                <td class="auto-style4">&nbsp;
                 <asp:RequiredFieldValidator id="RequiredFieldValidator3"
                    ControlToValidate="TextUsername"
                    Display="Static"
                    Width="62%" runat="server">
                    <i class="fa fa-exclamation-circle" style="font-size:24px"></i>
                  </asp:RequiredFieldValidator>
                    <%--CssClass="form-control is-invalid"--%>
                    <%-- class="invalid-feedback"--%>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextUsername"
                        ForeColor="Red" ValidationExpression="[a-zA-Z]{4,25}"                               
                        Display ="Dynamic"   Width="396px" ErrorMessage="Invalid Username" />
            
                   <%-- Username ValidationExpression ^[a-zA-Z]{5,25}$--%>
<%--                    Email ValidationExpression \w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*--%>
          
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
<%--                validationExpression[A-Za-z0-9]{6,15}--%>

                <td class="auto-style1">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextPassword" runat="server" TextMode="Password" ToolTip="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;

                  <asp:RequiredFieldValidator id="RequiredFieldValidator2"
                   ControlToValidate="TextPassword"
                   Display="Static"
                   Width="100%" runat="server" ForeColor="Red"> * </asp:RequiredFieldValidator>


                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:LinkButton ID="Login" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
&nbsp;
                    <br />
                    <asp:LinkButton ID="Sign" runat="server">Sign Up</asp:LinkButton>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Message" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    </form>



      

</body>
</html>
