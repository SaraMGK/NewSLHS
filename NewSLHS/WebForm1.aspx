<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NewSLHS.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>head<table style="width:100%;">
        <tr>
            <td>Firstt Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Middle Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Last Name</td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td style="margin-left: 40px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
    </h1>
   
</asp:Content>
