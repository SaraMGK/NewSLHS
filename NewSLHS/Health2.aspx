<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Health2.aspx.cs" Inherits="NewSLHS.Health2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Health: Part Two</h6>
   </div>

    <br />
    <br />

    <%--Question 1: Eating Difficulties--%>
    <asp:Label ID="EatingLb" runat="server" Text="Does the client have any feeding or eating difficulties? If yes, please describe.<br/>(If no, write No)" CssClass="label6"></asp:Label>
    <asp:TextBox ID="EatingTxt" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question 2: Food Allergy--%>
    <asp:Label ID="AllergyLb" runat="server" Text="Does the client have any food allergies? If yes, please describe.<br/>(If no, write No)" CssClass="label6"></asp:Label>
    <asp:TextBox ID="AllergyTxt" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question 3: Examination & Treatment--%>
    <asp:Label ID="ExaminationLb" runat="server" Text="Please indicate below which of the examinations or treatment you have <br/> received:" CssClass="label6"></asp:Label>
    <br />
    <asp:Label ID="SpeechLb" runat="server" Text="Speech and Language Testing" CssClass="label6"></asp:Label>

    <asp:RadioButton ID="YesRadioButton" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" OnCheckedChanged="YesRadioButton_CheckedChanged" />
    <asp:RadioButton ID="NoRadioButton" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" OnCheckedChanged="NoRadioButton_CheckedChanged" />
    <br /> 

    <asp:Label ID="LanguageLb" runat="server" Text="Speech and Language Therapy" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton1" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" OnCheckedChanged="YesRadioButton_CheckedChanged" />
    <asp:RadioButton ID="RadioButton2" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" OnCheckedChanged="NoRadioButton_CheckedChanged" />
    <br />

    <asp:Label ID="HearingLb" runat="server" Text="Hearing Test" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton3" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" OnCheckedChanged="YesRadioButton_CheckedChanged" />
    <asp:RadioButton ID="RadioButton4" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" OnCheckedChanged="NoRadioButton_CheckedChanged" />
    <br />

    <asp:Label ID="NeurologicalLb" runat="server" Text="Neurological Examination" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton5" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" OnCheckedChanged="YesRadioButton_CheckedChanged" />
    <asp:RadioButton ID="RadioButton6" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" OnCheckedChanged="NoRadioButton_CheckedChanged" />
    <br />

    <asp:Label ID="PsychologicalLb" runat="server" Text="Psychological Examination" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton7" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" OnCheckedChanged="YesRadioButton_CheckedChanged" />
    <asp:RadioButton ID="RadioButton8" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" OnCheckedChanged="NoRadioButton_CheckedChanged" />
    <br />

    <asp:Label ID="CounselingLb" runat="server" Text="Counseling Services" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton9" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" OnCheckedChanged="YesRadioButton_CheckedChanged" />
    <asp:RadioButton ID="RadioButton10" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" OnCheckedChanged="NoRadioButton_CheckedChanged" />
    <br />
    <%--<asp:RadioButtonList ID="YesNoRadioButtonList" runat="server" CssClass="radio-button2">
        <asp:ListItem Value="Yes">Yes</asp:ListItem>
        <asp:ListItem Value="no">No</asp:ListItem>
    </asp:RadioButtonList>--%>
    <%--<asp:RadioButtonList ID="YesNoRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <asp:EntityDataSource ID="YesNoEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
    <br /> --%>
    <asp:Panel ID="ExaminationPanel" runat="server" Visible="true">
        
        <table style="width: 100%; margin-left: 40px">
            <tr>
                <td style="width:50px"><asp:Label ID="Label5" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="TextBox4" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label6" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label8" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="TextBox6" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label7" runat="server" CssClass="label5" Text="Who made the referral?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="TextBox7" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label2" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox1" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label1" runat="server" text="What is your understanding of the results and recommendations based on <br/> the examination?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBeox2" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
        </table>
    </asp:Panel>

    <br />
    <br />
    <br />
    <asp:Panel ID="CounselingPanel" runat="server" Visible="true">
        
        <table style="width: 100%; margin-left: 40px">
            <tr>
                <td style="width:50px"><asp:Label ID="Label3" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="TextBocx" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label4" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label9" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="TextBox8" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label10" runat="server" CssClass="label5" Text="How often?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="TextBox9" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label11" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox10" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
        </table>
       </asp:Panel>

</asp:Content>
