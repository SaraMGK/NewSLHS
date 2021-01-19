<%--Profile Page: The page where users can view their account information and change password--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="NewSLHS.Profile" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--Page Header--%>
    <h1>User Profile</h1>

    <%--Page Content--%>
    <%--The Blue Div--%>
    <div id="AccountInfoDiv" class="acc-info-div" runat="server">
        
        <div class="icon-info-div">
            <%------Image Div------%>
            <div class="user-image-name">   
                <div class="user-icon">
                    <img src="/Images/userIcon.png" alt="User Icon" class="user-icon2"/>
                </div>
            </div>
        </div>

        <%-------Info Div--------%>
            <div class="account-info">
                 
                 <%------Name-------%>
                 <div>
                    <label class="info-label2">Name</label>
                     <asp:Label ID="NameLabel" runat="server" Text="First Last" CssClass="request-input" style="border-color:transparent"></asp:Label>
                 </div>

                 <%-----Email--------%>
                 <div>
                    <label class="info-label2">Email</label>
                     <asp:Label ID="EmailLb" runat="server" Text="email@domain.com" CssClass="request-input" style="border-color:transparent"></asp:Label>
                 </div>
                <%----Mobile--------%>
                 <div>
                    <label class="info-label2">Mobile</label>
                        <asp:Label ID="MobileLb" runat="server" Text="+966503829975" CssClass="request-input" style="border-color:transparent"></asp:Label>
                 </div>

                 <%------Username--------%>
                 <div>
                    <label class="info-label2">Username</label>
<%--                    <input type="number" id="quantity" name="quantity" min="1" class="request-input" style="width:15%" runat="server">--%>
                     <asp:Label ID="UsernameLb" runat="server" Text="username" CssClass="request-input" style="border-color:transparent"></asp:Label>
                 </div>

                <%------Password--------%>
                 <div>
                    <label class="info-label2">Password</label>
                       <asp:Label ID="PasswordLb" runat="server" Text="....." CssClass="request-input" style="border-color:transparent" Font-Bold="True" Font-Size="Large"></asp:Label>
                 </div>
                <%--Change Password Div--%>
                <div class="change-pass-div">
                    <button class="change-pass-btn">Change Password</button>
                </div>
                
        </div>
        
    </div>

</asp:Content>
