<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="School.aspx.cs" Inherits="NewSLHS.School" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">School History</h6>
   </div>
    <br />
    <br />
    <table style="width: 100%;">
        <%--Question 1: Present School--%>
        <tr>
            <td style="width:450px; height:30px"><asp:Label ID="Label15" runat="server" CssClass="label6" Text="What school/college does the patient presently attend?"></asp:Label></td>
            <td><asp:TextBox ID="TextBox7" CssClass="option1" runat="server"></asp:TextBox></td>
        </tr>
        <%--Question 2: Repeated Grade--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label16" runat="server" CssClass="label6" Text="In school/college has any grade been repeated?"></asp:Label></td>
        </tr>
        <%--Question 2: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton11" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Cold" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton12" runat="server" CssClass="radio-button3" Text="No" GroupName="Cold" /></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 2: Part Two-Reasons--%>
        <tr>
            <td colspan="2" style="height: 30px"><asp:Label ID="Label17" runat="server" Text="If yes, what were the reasons?" CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 2: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox9" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 3: Special Classroom--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label19" runat="server" CssClass="label6" Text="Was the patient placed in any special classroom or received remedial help during schoolv years?"></asp:Label></td>
        </tr>
        <%--Question 3: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton13" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Classroom" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton14" runat="server" CssClass="radio-button3" Text="No" GroupName="Classroom" /></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 3: Part Two--%>
        <tr>
            <td colspan="2" style="height: 30px"><asp:Label ID="Label20" runat="server" Text="If yes, please describe and include progress notes." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 3: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox10" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
    </table>
</asp:Content>
