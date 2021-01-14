<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Motor.aspx.cs" Inherits="NewSLHS.Motor" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Motor Development</h6>
   </div>
    <br />
    <br />

    <table style="width: 100%;">
        <%--Question 1: Losing Balance--%>
        <tr>
            <td style="height: 30px;"><asp:Label ID="BalanceLb" runat="server" Text="Do you lose balance easily?" CssClass="label6"></asp:Label></td>
            <td></td>
            <td></td>
        </tr>
        <%--Question 1: Radio Buttons--%>
        <tr>
            <td>
                <asp:RadioButtonList ID="YesNoRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button3"></asp:RadioButtonList>
                <asp:EntityDataSource ID="YesNoEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
            </td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 2: Hand Difficulty--%>
        <tr>
            <td style="height: 30px;"><asp:Label ID="HandsLb" runat="server" Text="Does the client face difficulty using his/her hands with:" CssClass="label6"></asp:Label></td>
            <td></td>
            <td></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td></td>
        </tr>
        <%--Question 2: Checkboxes--%>
        <tr>
            <td colspan="3"><asp:CheckBox ID="ColoringCheck" runat="server" CssClass="radio-button3" Text="Coloring" /><td />
        </tr>
        <tr>
            <td colspan="3"><asp:CheckBox ID="CuttingCheck" runat="server" CssClass="radio-button3" Text="Cutting" /><td />
        </tr>
        <tr>
            <td colspan="3"><asp:CheckBox ID="HoldingCheck" runat="server" CssClass="radio-button3" Text="Holding Utensils" /><td />
        </tr>
        <tr>
            <td colspan="3"><asp:CheckBox ID="OtherCheck" runat="server" CssClass="radio-button3" Text="Other, please Scecify" />
                <asp:TextBox ID="OtherTxt" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
            </td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 3: Other Related Information--%>
        <tr>
            <td colspan="3"><asp:Label ID="OtherInfoLb" runat="server" Text="Please describe any information pertaining to motor development that you" CssClass="label6"></asp:Label></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 30px;"><asp:Label ID="Label1" runat="server" Text="feel is of importantce if any." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 3: Response Box--%>
        <tr>
            <td colspan="3"><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="text-box2"></asp:TextBox></td>
        </tr>
    </table>
</asp:Content>
