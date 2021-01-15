<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hearing.aspx.cs" Inherits="NewSLHS.Hearing" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Speech & Language History</h6>
   </div>
    <br />
    <br />
    <table style="width: 100%;">
        <%--Question 1: Hearing Loss History--%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label2" runat="server" Text="Is there a history of hearing loss in the family? If yes, explain." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 1: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox2" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 2: Early Age Hearing Loss --%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label3" CssClass="label6" runat="server" Text="Has any member of the family suffered a hearing loss at an early age?"></asp:Label></td>
        </tr>
        <%--Question 2: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox1" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 3: Ear Infections--%>
        <tr>            
            <td colspan="2" style="height:30px"><asp:Label ID="Label1" runat="server" CssClass="label6" Text="Does the client have frequent earaches or infectoins?"></asp:Label></td>
        </tr>
        <%--Question 3: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="YesRadioButton" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Infection" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="NoRadioButton" runat="server" CssClass="radio-button3" Text="No" GroupName="Infection" /></td>
        </tr>
        <%--Question 4: Cold--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label4" runat="server" CssClass="label6" Text="Does the client have frequent colds?"></asp:Label></td>
        </tr>
        <%--Question 4: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton1" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Cold" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton2" runat="server" CssClass="radio-button3" Text="No" GroupName="Cold" /></td>
        </tr>
        <%--Question 5: Hearing Change--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label5" runat="server" CssClass="label6" Text="Has there been a change in the patient's hearing? If yes, explain."></asp:Label></td>
        </tr>
        <%--Question 5: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox5" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 6: Normal Hearing--%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label6" runat="server" CssClass="label6" Text="Does the patient hearing seem normal to you?"></asp:Label></td>
        </tr>
        <%--Question 6: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton4" CssClass="radio-button3" runat="server" Text="Yes" GroupName="Hearing" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton6" CssClass="radio-button3" runat="server" Text="No" GroupName="Hearing" /></td>
        </tr>
        <%--Question 7: Turning Head--%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label7" runat="server" CssClass="label6" Text="Does the patient turn his/her head when being spoken to?"></asp:Label></td>
        </tr>
        <%--Question 7: Radion Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton8" CssClass="radio-button3" runat="server" Text="Yes" GroupName="Head" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton7" CssClass="radio-button3" runat="server" Text="No" GroupName="Head" /></td>
        </tr>
        <%--Question 8: Radio & TV--%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label8" runat="server" CssClass="label6" Text="Does the patient turn the radio or Tv louder?"></asp:Label></td>
        </tr>
        <%--Question 8: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton9" CssClass="radio-button3" runat="server" Text="Yes" GroupName="Radio" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton10" CssClass="radio-button3" runat="server" Text="No" GroupName="Radio" /></td>
        </tr>
        <%--Question 9: First Hearing Problem--%>
        <tr>
            <td style="height:30px"><asp:Label ID="Label9" runat="server" CssClass="label6" Text="When did you first notice a hearing problem?"></asp:Label></td>
            <td><asp:TextBox ID="TextBox6" CssClass="option1" runat="server"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 10: Hearing Aid--%>
        <tr>
            <td colspan="2"><asp:Label ID="Label10" CssClass="label6" runat="server" Text="Is the patient presently wearing a hearing aid or cochlear implant?"></asp:Label></td>
        </tr>
        <%--Question 10: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton3" runat="server" Text="Yes" CssClass="radio-button3" GroupName="EarAid" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton5" runat="server" Text="No" CssClass="radio-button3" GroupName="EarAid" /></td>
        </tr>
        <%--Question 10: Part Two-Hearing aid duration--%>
        <tr>
            <td style="width: 500px;"><asp:Label ID="Label11" runat="server" Text="If yes, for how long?" CssClass="label6"></asp:Label></td>
            <td><asp:TextBox ID="TextBox4" CssClass="option1" runat="server"></asp:TextBox></td>
        </tr>
        <%--Question 10: Part Three-Provider--%>
        <tr>
            <td><asp:Label ID="Label12" runat="server" Text="Who provided it, and what type is it?" CssClass="label6"></asp:Label></td>
            <td><asp:TextBox ID="TextBox3" runat="server" CssClass="option1"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 12: Other Information--%>
        <tr>
            <td colspan="2"><asp:Label ID="Label13" runat="server" Text="Please Include any other information pertainting to hearing you feel may be" CssClass="label6"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label14" runat="server" Text="of importance to us." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 12: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="HearingInfoTxt" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
    </table>
</asp:Content>
