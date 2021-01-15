<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Social.aspx.cs" Inherits="NewSLHS.Social" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">social History</h6>
   </div>
    <br />
    <br />

    <table style="width: 100%;">
           <tr>
                <td colspan="4" style="height: 30px"><asp:Label ID="Label8" runat="server" Text="Check the appropriate characteristics which best decribe the patient's personality" CssClass="label6"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="OutgoingCheck" runat="server" Text="Outgoing" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="ShyCheck" runat="server" Text="Shy" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="AnxiousCheck" runat="server" Text="Anxious" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:CheckBox ID="StubbornCheck" runat="server" Text="Stubborn" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="EasyCheck" runat="server" Text="Easy Going" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:CheckBox ID="AggressiveCheck" runat="server" Text="Aggressive" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:CheckBox ID="IndependentCheck" runat="server" Text="Independent" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="DependentCheck" runat="server" Text="Dependent" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="OtherCheck" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="OtherTxt" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
            <tr>
                <td colspan="4" style="height:30px"><asp:Label ID="Label1" runat="server" Text="Check which characteristics which best decribe the patient's behavior" CssClass="label6"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="ManageCheck" runat="server" Text="Easy to Manage" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="ActiveCheck" runat="server" Text="Very Active" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="NoisyCheck" runat="server" Text="Noisy" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:CheckBox ID="DestructiveCheck" runat="server" Text="Destructive" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="TalkativeCheck" runat="server" Text="Talkative" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:CheckBox ID="ImaginativeCheck" runat="server" Text="Imaginative" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:CheckBox ID="CooperativeCheck" runat="server" Text="Cooperative" CssClass="radio-button3" /></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="OthrBehCheck" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="TextBox1" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
    </table>
</asp:Content>
