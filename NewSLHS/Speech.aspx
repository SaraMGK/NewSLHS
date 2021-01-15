<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Speech.aspx.cs" Inherits="NewSLHS.Speech" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Speech & Language History</h6>
   </div>
    <br />
    <br />
    <table style="width: 100%;">
        <%--Question 1:Current Communication--%>
        <tr>
            <td colspan="8" style="height: 30px"><asp:Label ID="Label1" runat="server" Text="How does the client currently communicate?" CssClass="label6"></asp:Label></td>
            <td></td>
            <td></td>
        </tr>
        <%--Question 1: Options--%>
        <tr>
            <td colspan="8"><asp:CheckBox ID="GestureCheck" runat="server" Text="Gesture" CssClass="radio-button3" /></td>
        </tr>
        <tr>
            <td colspan="8"><asp:CheckBox ID="NoisesCheck" runat="server" Text="Non-Speech Noises" CssClass="radio-button3" /></td>
        </tr>
        <tr>
            <td colspan="8"><asp:CheckBox ID="WordsCheck" runat="server" Text="Single Words" CssClass="radio-button3" /></td>
        </tr>
        <tr>
            <td colspan="8"><asp:CheckBox ID="SentencesCheck" runat="server" Text="Sentences" CssClass="radio-button3" /></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 2: Language Compared to Siblings--%>
        <tr>
            <td colspan="8"><asp:Label ID="Label2" runat="server" CssClass="label6" Text="As a child, how is the client's speech and language development compared"></asp:Label></td>
        </tr>
        <tr>
            <td  style="height: 30px"><asp:Label ID="Label6" runat="server" CssClass="label6" Text="to siblings'/peers'"></asp:Label></td>
        </tr>
        <%--Question 2: Options--%>
        <tr>
            <td colspan="8"><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="text-box2"></asp:TextBox></td>
            <td></td>
            <td></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 3: Difficutlies--%>
        <tr>
            <td colspan="8" style="height: 30px"><asp:Label ID="Label3" runat="server" Text="Does the client have a difficulty when (choose all that apply):" CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 3: Options--%>
        <tr>
            <td colspan="8"><asp:CheckBox ID="CheckBox1" runat="server" Text="Thinking of Words to Say" CssClass="radio-button3" /></td>
        </tr>
        <tr>
            <td colspan="8"><asp:CheckBox ID="CheckBox2" runat="server" Text="Understanding Speech" CssClass="radio-button3" /></td>
        </tr>
        <tr>
            <td colspan="8"><asp:CheckBox ID="CheckBox3" runat="server" Text="Following Directions" CssClass="radio-button3" /></td>
        </tr>
         <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Attention--%>
        <tr>
            <td colspan="8" style="height: 30px"><asp:Label ID="Label4" runat="server" Text="How easily does the client maintain attention during activities such as:" CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 4: Scale--%>
        <tr>
            <%--Excellent Cell--%>
            <td style="width: 100px; text-align:right; height: 29px;"><asp:Label ID="ExcelLb" runat="server" Text="Excellent" CssClass="label3"></asp:Label></td>
            <%--One Cell--%>
            <td style="width: 100px; text-align:center; height: 29px;"><asp:Label ID="OneLb" runat="server" Text="1" CssClass="label3"></asp:Label></td>
            <%--Two Cell--%>
            <td style="width: 100px; text-align:center; height: 29px;"><asp:Label ID="TwoLb" runat="server" Text="2" CssClass="label3"></asp:Label></td>
            <%--Three Cell--%>
            <td style="width: 100px; text-align:center; height: 29px;"><asp:Label ID="ThreeLb" runat="server" Text="3" CssClass="label3"></asp:Label></td>
            <%--Four Cell--%>
            <td style="width: 100px; text-align:center; height: 29px;"><asp:Label ID="FourLb" runat="server" Text="4" CssClass="label3"></asp:Label></td>
            <%--Five Cell--%>
            <td style="width: 100px; text-align:center; height: 29px;"><asp:Label ID="FiveLb" runat="server" Text="5" CssClass="label3"></asp:Label></td>
            <%--Poor Cell--%>
            <td style="width: 100px; text-align:right; height: 29px;"><asp:Label ID="PoorLb" runat="server" Text="Poor" CssClass="label3"></asp:Label></td>
            <td style="width: 100px; text-align:right; height: 29px;">&nbsp;</td>
        </tr>
        <%--Question 4: Watching TV--%>
        <tr>
            <td style="width: 10%; text-align: right"><asp:Label ID="Label7" runat="server" Text="Watching TV" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="test" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Reading--%>
        <tr>
            <td style="width: 10%; text-align: right"><asp:Label ID="Label8" runat="server" Text="Reading" CssClass="label6"></asp:Label></td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton9" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton10" runat="server" GroupName="Reading" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Looking at Pictures--%>
        <tr>
            <td style="width: 20%; text-align: right"><asp:Label ID="Label9" runat="server" Text="Looking at Pictures" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton11" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton12" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton13" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton14" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton15" runat="server" GroupName="Pictures" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Listening to Stories--%>
        <tr>
            <td style="width: 20%; text-align: right"><asp:Label ID="Label10" runat="server" Text="Listening to Stories" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton16" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton17" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton18" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton19" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton20" runat="server" GroupName="Stories" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Playing with Toys--%>
        <tr>
            <td style="width: 10%; text-align: right"><asp:Label ID="Label11" runat="server" Text="Playing with Toys" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton21" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton22" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton23" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton24" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton25" runat="server" GroupName="test" />
            </td>
            <td>&nbsp;</td>
        </tr>
         <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 5: Efforts--%>
        <tr>
            <td colspan="8" style="height: 30px"><asp:Label ID="Label5" runat="server" Text="Describe any efforts you made to help communicate better" CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 5: Text Box--%>
        <tr>
            <td colspan="8"><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="text-box2"></asp:TextBox></td>
        </tr>

    </table>

</asp:Content>
