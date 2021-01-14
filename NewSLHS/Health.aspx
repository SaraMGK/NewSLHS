 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Health.aspx.cs" Inherits="NewSLHS.Health" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

   <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Health: Part One</h6>
   </div>

    <br />
    <br />

    <form>
    <%--Question 1: Healt Condition--%>
            <asp:Label ID="Question2Label" runat="server" Text="What is the client's present health condition?" CssClass="label7"></asp:Label>
    <br />

        <table class="w-100">
            <tr>
                <%--First Cell--%>
                <td style="width: 100px; text-align:right; height: 29px;">
                    <asp:Label ID="Label6" runat="server" Text="(Excellent)" style="font-weight:bold; color: #696969"></asp:Label>
                </td>
                <%--Second Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label1" runat="server" Text="1" CssClass="label3"></asp:Label>
                </td>
                <%--Third Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label2" runat="server" Text="2" CssClass="label3"></asp:Label>
                </td>
                <%--Fourth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label3" runat="server" Text="3" CssClass="label3"></asp:Label>
                </td>
                <%--Fifth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label4" runat="server" Text="4" CssClass="label3"></asp:Label>
                </td>
                <%--Sixth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label5" runat="server" Text="5" CssClass="label3"></asp:Label>
                </td>
                <%--Last Cell--%>
                <td style="width: 100px; text-align:left; height: 29px;">
                    <asp:Label ID="Label7" runat="server" Text="(Poor)" style="font-weight:bold; color: #696969;"></asp:Label>
                </td>
            </tr>
            <%--radio buttons row--%>
            <tr>
                <td style="width: 100px; text-align:center"></td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="test" ValidationGroup="Scale" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton2" runat="server" ValidationGroup="Scale" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="test" />
                </td>
                <td></td>
            </tr>
        </table>
    <br />

    <%--Question 2: Medical Examination--%>
    <asp:Label ID="ExaminaitonLb" runat="server" Text="Please fill the following about the recent medical examination" CssClass="label7"></asp:Label>
        <br />
    <table class="form-table" style="width: 80%; margin-left: 26px;">
        <tr>
                <td style="width: 250px"><asp:Label style="padding-bottom: 25px; width:217px;" ID="MedicalLb" runat="server" Text="Recent Medical Examination" CssClass="label2"></asp:Label></td>
                <td><asp:TextBox ID="DateTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="DateLb" runat="server" Text="Date" CssClass="address-title"></asp:Label>
                </td>
                <td><asp:TextBox ID="PlaceTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="PlaceLb" runat="server" Text="Place" CssClass="address-title"></asp:Label>
                </td>
                <td><asp:TextBox ID="DoctorTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="DoctorLb" runat="server" Text="Doctor" CssClass="address-title"></asp:Label>
                </td>
            </tr>
    </table>

    <%--Question 2: Part Two--%>
    <asp:Label ID="ResultLabel" runat="server" Text="Results and Recommendations" CssClass="label6"></asp:Label>
    <asp:TextBox ID="ResultsTxt" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question 3: Immunization--%>
    <table>
        <tr>
                <td style="width: 251px"><asp:Label ID="Label8" runat="server" Text="Please check all immunizations that have been received" CssClass="label6"></asp:Label></td>
            </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="SmallCheckBox" runat="server" Text="Small Pox" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="DiphCheckBox" runat="server" Text="Diphtheria" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="MumpsCheckBox" runat="server" Text="Mumps" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="MeaslesCheckBox" runat="server" Text="Measles" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="RubellaCheckBox" runat="server" Text="Rubella" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="ChickenCheckBox" runat="server" Text="Chicken Pox" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="TetanusCheckBox" runat="server" Text="Tetanus" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="CoughCheckBox" runat="server" Text="Whooping Cough" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="PolioCheckBox" runat="server" Text="Polio" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="OtherCheckBox" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="OtherTxt" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
    </table>
    </form>
</asp:Content>
