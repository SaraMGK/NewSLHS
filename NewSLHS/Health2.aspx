<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Health2.aspx.cs" Inherits="NewSLHS.Health2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   <asp:Panel ID="Health2Panel" runat="server">
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
    <%--Hearing Testing--%>
    <asp:Label ID="SpeechLb" runat="server" Text="Speech and Language Testing" CssClass="label6"></asp:Label>
    <asp:RadioButtonList ID="TestingRadioBtnList" CssClass="radio-button3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="TestingRadioBtnList_SelectedIndexChanged">
        <asp:ListItem Text="Yes"></asp:ListItem>
        <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <%--Speech Testing Panel--%>
    <asp:Panel ID="SpeechPanel" runat="server" Visible="false">
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

    <%--Language Therapy--%>
    <asp:Label ID="LanguageLb" runat="server" Text="Speech and Language Therapy" CssClass="label6"></asp:Label>
    <asp:RadioButtonList ID="LanguageBtnList" CssClass="radio-button3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="LanguageBtnList_SelectedIndexChanged">
        <asp:ListItem Text="Yes"></asp:ListItem>
        <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <%--Language Therapy Panel--%>
    <asp:Panel ID="LanguagePanel" runat="server" Visible="false">
        <table style="width: 100%; margin-left: 40px">
            <tr>
                <td style="width:50px"><asp:Label ID="Label12" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="TextBox2" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label13" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="TextBox11" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label14" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="TextBox12" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label15" runat="server" CssClass="label5" Text="Who made the referral?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="TextBox13" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label16" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox14" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label17" runat="server" text="What is your understanding of the results and recommendations based on <br/> the examination?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox15" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
        </table>
    </asp:Panel>
    <br />

    <%--Hearing Test--%>
    <asp:Label ID="HearingLb" runat="server" Text="Hearing Test" CssClass="label6"></asp:Label>
    <asp:RadioButtonList ID="HearingRadioBtnList" CssClass="radio-button3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="HearingRadioBtnList_SelectedIndexChanged">
        <asp:ListItem Text="Yes"></asp:ListItem>
        <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <%--Hearing Test Panel--%>
    <asp:Panel ID="HearingPanel" runat="server" Visible="false">
        <table style="width: 100%; margin-left: 40px">
            <tr>
                <td style="width:50px"><asp:Label ID="Label18" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="TextBox16" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label19" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="TextBox17" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label20" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="TextBox18" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label21" runat="server" CssClass="label5" Text="Who made the referral?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="TextBox19" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label22" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox20" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label23" runat="server" text="What is your understanding of the results and recommendations based on <br/> the examination?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox21" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
        </table>
    </asp:Panel>
    <br />

    <%--Neurological Examination--%>
    <asp:Label ID="NeurologicalLb" runat="server" Text="Neurological Examination" CssClass="label6"></asp:Label>
    <asp:RadioButtonList ID="NeuroRadioBtn" CssClass="radio-button3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="NeuroRadioBtn_SelectedIndexChanged">
        <asp:ListItem Text="Yes"></asp:ListItem>
        <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <%--Neurological Examination Panel--%>
    <asp:Panel ID="NeuroPanel" runat="server" Visible="false">
        <table style="width: 100%; margin-left: 40px">
            <tr>
                <td style="width:50px"><asp:Label ID="Label24" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="NDateTxt" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label25" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="NWhomTxt" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label26" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="NWhereTxt" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label27" runat="server" CssClass="label5" Text="Who made the referral?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="NRefTxt" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label28" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="NReasonTxt" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label29" runat="server" text="What is your understanding of the results and recommendations based on <br/> the examination?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="NResultTxt" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
        </table>
    </asp:Panel>
    <br />

    <%--Psychological Examination--%>
    <asp:Label ID="PsychologicalLb" runat="server" Text="Psychological Examination" CssClass="label6"></asp:Label>
    <asp:RadioButtonList ID="PsyRadioBtnList" CssClass="radio-button3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PsyRadioBtnList_SelectedIndexChanged">
        <asp:ListItem Text="Yes"></asp:ListItem>
        <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <%--Psychological Examination Panel--%>
    <asp:Panel ID="PsyPanel" runat="server" Visible="false">
        <table style="width: 100%; margin-left: 40px">
            <tr>
                <td style="width:50px"><asp:Label ID="Label30" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="PWhenTxt" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label31" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="PWhomTxt" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label32" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="PWhereTxt" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label33" runat="server" CssClass="label5" Text="Who made the referral?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="PRefTxt" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label34" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="PReasonTxt" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label35" runat="server" text="What is your understanding of the results and recommendations based on <br/> the examination?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="PResultTxt" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
        </table>
    </asp:Panel>
    <br />

    <%--Counseling Services--%>
    <asp:Label ID="CounselingLb" runat="server" Text="Counseling Services" CssClass="label6"></asp:Label>
    <asp:RadioButtonList ID="CounselingRadioBtnList" CssClass="radio-button3" runat="server" OnSelectedIndexChanged="CounselingRadioBtnList_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Text="Yes"></asp:ListItem>
        <asp:ListItem Text="No"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <%--Counseling Services Panel--%>
    <asp:Panel ID="CounselingPanel" runat="server" Visible="false">
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
    </asp:Panel>
</asp:Content>
