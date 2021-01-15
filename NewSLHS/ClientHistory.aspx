<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientHistory.aspx.cs" Inherits="NewSLHS.ClientHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="client_tabs" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav_calendar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <form id="HistoryForm">
        <table style="width: 100%;">
            <tr>
                <td>
                    <div class="tab-div">
                        <asp:Button ID="btnGInfo" CssClass="Initial" runat="server" Text="General Information" OnClick="btnGInfo_Click" />
                        <asp:Button ID="btnIdentification" CssClass="Initial" runat="server" Text="Identification" OnClick="btnIdentification_Click" />
                        <asp:Button ID="btnBirth" CssClass="Initial" runat="server" Text="Birth History" OnClick="btnBirth_Click" />
                        <asp:Button ID="btnAdult" CssClass="Initial" runat="server" Text="Adult" OnClick="btnAdult_Click" />
                        <asp:Button ID="btnChild" CssClass="Initial" runat="server" Text="Child" OnClick="btnChild_Click" />
                        <asp:Button ID="btnParent" CssClass="Initial" runat="server" Text="Parental History" OnClick="btnParent_Click" />
                        <asp:Button ID="btnHealth" CssClass="Initial" runat="server" Text="Health History" OnClick="btnHealth_Click" />
                        <asp:Button ID="btnPhysician" CssClass="Initial" runat="server" Text="Physician Information" OnClick="btnPhysician_Click" />
                        <asp:Button ID="btnMotor" CssClass="Initial" runat="server" Text="Motor Development" style="margin:0" OnClick="btnMotor_Click" />
                    </div>
                    <div class="tab-div">
                        <asp:Button ID="btnSpeech" CssClass="Initial" runat="server" Text="Speech & Language History" OnClick="btnSpeech_Click" />
                        <asp:Button ID="btnHearing" CssClass="Initial" runat="server" Text="Hearing History" OnClick="btnHearing_Click" />
                        <asp:Button ID="btnSchool" CssClass="Initial" runat="server" Text="School History" OnClick="btnSchool_Click" />
                        <asp:Button ID="btnSocial" CssClass="Initial" runat="server" Text="Social History" style="margin:0" OnClick="btnSocial_Click" />
                    </div>  
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:MultiView ID="MainView" runat="server">
                    <%--General Information Tab--%>
                    <asp:View ID="View1" runat="server">

                        <%--Page Header--%>
                        <h1>Client Details</h1>
                        <h6 class="sub-head">General Information</h6>


                        <%--Button--%>
                        <div class="next-button-div">
                            <button class="save-button">Save & Continue Later</button>
                        </div>

                        <%-----------form----------%>
                        <form>
                            <%--Tabs--%>
                            <table class="form-table" style="width: 70%;">
                                <tr>
                                    <td>    
                                        <asp:Label ID="Label1" runat="server" CssClass="label2" Text="Client ID"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="IDLabel" runat="server" CssClass="label2" Text="Client ID" Font-Bold="True" style="width:0; margin-left: 4px;"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom:10px;" class="td-class"><asp:Label ID="FNLabel" runat="server" Text="First Name" CssClass="label2"></asp:Label></td>
                                    <td style="width: 347px"><asp:TextBox ID="FNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
                                </tr>
                                <tr> 
                                    <td><asp:Label ID="MNLabel" runat="server" Text="Middle Name" CssClass="label2"></asp:Label></td>
                                    <td style="width: 347px"><asp:TextBox ID="MNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="LNLabel" runat="server" Text="Last Name" CssClass="label2"></asp:Label></td>
                                    <td style="width: 347px"><asp:TextBox ID="LNTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="EmailLabel" runat="server" Text="Email" CssClass="label2"></asp:Label></td>
                                    <td style="width: 347px"><asp:TextBox ID="EmailTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="MobileLabel" runat="server" Text="Mobile" CssClass="label2"></asp:Label></td>
                                    <td style="width: 347px"><asp:TextBox ID="MobileTextBox" runat="server" CssClass="option2"></asp:TextBox></td>
                                    <td style="width: 347px"></td>
                                </tr>
                                <tr>
                                    <td><asp:Label style="padding-bottom: 25px" ID="AddressLabel" runat="server" Text="Address" CssClass="label2"></asp:Label></td>
                                    <td style="width: 347px"><asp:TextBox ID="AddressTextBox" runat="server" CssClass="option2"></asp:TextBox> 
                                        <asp:Label Text="Building Number" runat="server" CssClass="address-title" />
                                    </td>
                                    <td style="width: 347px"><asp:TextBox ID="StreetTextBox" runat="server" CssClass="option2"></asp:TextBox>
                                        <asp:Label Text="Street Name" runat="server" CssClass="address-title" />
                                    </td>
                                    <td style="width: 347px"><asp:TextBox ID="DistTextBox" runat="server" CssClass="option2"></asp:TextBox>
                                        <asp:Label Text="District" runat="server" CssClass="address-title" />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td style="width: 347px">
                                        <asp:DropDownList ID="CityDropDownList" CssClass="option2" runat="server"><asp:ListItem>Jeddah</asp:ListItem></asp:DropDownList><%--<asp:TextBox ID="CityTextBox" runat="server" CssClass="option2"></asp:TextBox>--%>
                                        <asp:Label Text="City" runat="server" CssClass="address-title" />
                                    </td> 
                                    <td style="width: 347px"><asp:TextBox ID="ZipTextBox" runat="server" CssClass="option2"></asp:TextBox>
                                        <asp:Label Text="Zip Code" runat="server" CssClass="address-title" />
                                    </td>
                                    <td style="width: 347px"><asp:TextBox ID="AddNumTextBox" runat="server" CssClass="option2"></asp:TextBox>
                                        <asp:Label Text="Additonal Numbers" runat="server" CssClass="address-title" />
                                    </td>
                               </tr>
                        </table>
                     </form>
                    </asp:View>

                    <%--Identification Tab--%>
                    <asp:View ID="View2" runat="server">
                        <%--Page Header--%>
                        <h1>Client Details</h1>
                        <div class="client-head-div">
                            <h6 class="client-head">Identification</h6>
                        </div>
                        <table class="form-table" style="width: 90%;">
            <tr>
                <td style="padding-bottom:10px; width: 251px;" class="td-class"><asp:Label ID="FNumLb" runat="server" Text="File Number" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="FNumTxt" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            
            <tr> 
                <td style="width: 251px"><asp:Label ID="EthinciiyLb" runat="server" Text="Ethincity" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="EthincityTxt" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 251px"><asp:Label ID="DoBLb" runat="server" Text="Date of Birth" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="DoBTxt" runat="server" CssClass="option2" TextMode="Date"></asp:TextBox></td>

                <td style="width: 173px"><asp:Label ID="GenderLb" runat="server" Text="Gender" CssClass="label2"></asp:Label></td>
                <td><asp:DropDownList ID="GenderDropDownList" runat="server"  CssClass="option2">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 251px"><asp:Label ID="WeightLb" runat="server" Text="Weight (k.g.)" CssClass="label2"></asp:Label></td>
                <td style="width: 190px"><asp:TextBox ID="WeightTxt" runat="server" CssClass="option2" TextMode="Number"></asp:TextBox></td>

                <td style="width: 173px"><asp:Label ID="HeightLb" runat="server" Text="Height (cm)" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="HeightTxt" runat="server" CssClass="option2" TextMode="Number"></asp:TextBox></td>
            </tr>
            <%------Language Section------%>
            <tr>
                <td style="width: 251px"><asp:Label style="padding-bottom: 25px" ID="LanguageLabel" runat="server" Text="Language" CssClass="label2"></asp:Label></td>
                
                <td style="width: 190px"><asp:TextBox ID="ClLanTxt" runat="server" CssClass="option2"></asp:TextBox> 
                    <asp:Label Text="Client's Language" runat="server" CssClass="address-title" />
                </td>
                <td style="width: 173px"></td>
                <td style="width: 347px"><asp:TextBox ID="HomeLanTxt" runat="server" CssClass="option2" style="margin-bottom: 8px;"></asp:TextBox>
                    <asp:Label Text="Language Spoken at Home" runat="server" CssClass="address-title" />
                </td>

            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label Text="List all siblings" runat="server" CssClass="label6" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="SiblingTxt" runat="server" CssClass="text-box2" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="ProblemLb" runat="server" CssClass="label6" Text="List any speech and language problems of other children"></asp:Label>
                    <asp:TextBox ID="ProblemTxt" CssClass="text-box2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="AcaLb" runat="server" CssClass="label6" Text="List any academic difficulties of the other children"></asp:Label>
                    <asp:TextBox ID="AcaTxt" CssClass="text-box2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="PregLb" runat="server" CssClass="label6" Text="Please explain if there have been other pregnancies"></asp:Label>
                    <asp:TextBox ID="PregTxt" CssClass="text-box2" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
                <%--Diagnosis--%>
            <tr>
                <td colspan="4">
                    <asp:Label ID="DiagnosisLb" runat="server"  CssClass="label6" Text="Has the client been diagnosed as having any of the following, please choose those that pertain:"></asp:Label>
                </td>
            </tr>
            <%--Space Between Questions--%>
            <tr>
                <td style="width: 251px">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CleftCheckBox" runat="server" Text="Cleft Palate" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CerebralCheckBox" runat="server" Text="Cerebral Palsy" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="MentalCheckBox" runat="server" Text="Mental Retardation" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="BrainCheckBox" runat="server" Text="Minimal Brain Dysfunction" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="DownCheckBox" runat="server" Text="Down Syndrome" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="ThroatCheckBox" runat="server" Text="Defects of the nose, throat, or ears" CssClass="radio-button3" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="OtherCheckBox" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="OtherTxt" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
        </table>
                    </asp:View>
                    <%--Birth History Tab--%>
                    <asp:View ID="View3" runat="server">
                        <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Birth History</h6>
   </div>


    <br />
    <br />

    <%-- question 1: pregnancy length--%>
    <div>
        <asp:label id="pregnancylabel" runat="server" text="pregnancy length" cssclass="label4"></asp:label>
        <asp:textbox id="pregnancytextbox" runat="server" cssclass="child-input"></asp:textbox>
    </div>
    
    <%-- question 2: birth weight--%>
    <div>
        <asp:label id="weightlabel" runat="server" text="birth weight (k.g.)" cssclass="label4"></asp:label>
        <asp:textbox id="weighttextbox" runat="server" cssclass="child-input"></asp:textbox>
    </div>
    <br />

    <%--question3: prenatal condition--%>
    <asp:label id="prenatallabel" runat="server" text="during pregnancy, did the mother experience any condition, accident, or <br/> extraordinary prenatal symptoms? if yes, please explain. " cssclass="label6"></asp:label>
    <asp:textbox id="prenataltextbox" runat="server" cssclass="text-box2" width="491px" textmode="multiline"></asp:textbox>
    <br />
    
    <%--question4: medication--%>
    <asp:label id="medicationlabel" runat="server" text="was any medication taken during pregnancy? if yes, what kind? " cssclass="label6"></asp:label>
    <asp:textbox id="medicationtextbox" runat="server" cssclass="text-box2" width="491px" textmode="multiline"></asp:textbox>
    <br />

    <%--question5: anesthetics--%>
    <asp:label id="anestheticslabel" runat="server" text="were any drugs or anesthetics used during labor? if yes, which kind?" cssclass="label6"></asp:label>
    <asp:textbox id="anestheticstextbox" runat="server" cssclass="text-box2" width="491px" textmode="multiline"></asp:textbox>
    <br />

    <%--question6: delivery problems--%>
    <asp:label id="problemlabel" runat="server" text="were any problems with the delivery, such as breech birth, caesarean section,<br> induced labor, forceps delivery, etc.? if so, please describe." cssclass="label6"></asp:label>
    <asp:textbox id="problemtextbox" runat="server" cssclass="text-box2" width="491px" textmode="multiline"></asp:textbox>
    <br />
                    </asp:View>
                    <%--Adult Tab--%>
                    <asp:View ID="View4" runat="server">
                        <h1>Client Details</h1>
                        <div class="client-head-div">
                            <h6 class="client-head">Adult</h6>
                        </div>

                        <br />
                        <br />
                        <table class="w-100" style="margin-left: 30px;">
                          <tr style="height: 40px;">
                                <td style="width: 300px">
                                    Marital Status
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="MaritalStatusEntityDataSource" DataTextField="MartialStatus" DataValueField="MaritalStatusID" CssClass="option3"></asp:DropDownList>
                                    <asp:EntityDataSource ID="MaritalStatusEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Marital_Status"></asp:EntityDataSource>
                                </td>
                                <td style="width: 202px"></td>
                          </tr>
                          <tr style="height: 40px;">
                            <td style="width: 300px">Does the client become easily frustrated?</td>
                            <td style="width: 202px"></td>
                           </tr>
                           <tr>
                            <td colspan="2" style="height: 18px">
                                <asp:RadioButtonList ID="RadioButtonList3" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button"></asp:RadioButtonList>
                                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
                            </td>
                        </tr>
                        <tr style="height: 30px;">
                            <td colspan="2" style="height: 18px; padding-top: 15px; padding-bottom: 2px;">
                                If the client is easily frustrated, how does he/she deal with their frustration?
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="text-boxes" TextMode="MultiLine" Width="491px"></asp:TextBox>
                            </td>
                        </tr>
                </table>
                    </asp:View>
                    <%--Child Tab--%>
                    <asp:View ID="View5" runat="server">
                    

                        <div id="Child" class="" visible="true">
                            <%--Page Header--%>
                            <h1>Client Details</h1>
                            <div class="client-head-div">
                                <h6 class="client-head">Child: Part One</h6>
                            </div>

                    <br />
                    <br />
    <%-- Question 1: Labor Duration--%>
    <div>
        <asp:Label ID="LaborLabel" runat="server" Text="Duration of Labor" CssClass="label4"></asp:Label>
        <asp:TextBox ID="LaborTextBox" runat="server" CssClass="child-input"></asp:TextBox>
    </div>
    <br />

    <%--Question 2: Child Scale--%>  
        <asp:Label ID="Question2Label" runat="server" Text="During the first year, other than crying, would you say the child was" style="margin-left: 16px"></asp:Label>
    <br />

        <table class="w-100">
            <tr>
                <%--First Cell--%>
                <td style="width: 100px; text-align:right; height: 29px;">
                    <asp:Label ID="Label6" runat="server" Text="(Silent)" style="font-weight:bold"></asp:Label>
                </td>
                <%--Second Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label2" runat="server" Text="1" CssClass="label3"></asp:Label>
                </td>
                <%--Third Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label3" runat="server" Text="2" CssClass="label3"></asp:Label>
                </td>
                <%--Fourth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label4" runat="server" Text="3" CssClass="label3"></asp:Label>
                </td>
                <%--Fifth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label5" runat="server" Text="4" CssClass="label3"></asp:Label>
                </td>
                <%--Sixth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label7" runat="server" Text="5" CssClass="label3"></asp:Label>
                </td>
                <%--Last Cell--%>
                <td style="width: 100px; text-align:left; height: 29px;">
                    <asp:Label ID="Label8" runat="server" Text="(Very Noisy)" style="font-weight:bold"></asp:Label>
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

    <%--Question 3: Babbling--%>
    <asp:Label ID="Label9" runat="server" Text="Did the child babble and make sounds as an infant?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <asp:EntityDataSource ID="YesNoEntityDataSource" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
    <br />

    <%--Question 4: Age & Activity--%>
    <asp:Label ID="Q4Label" runat="server" Text="At what age did the child begin to" style="margin-left: 16px"></asp:Label>

        <table class="w-100" style="margin-top:5px;">
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="ImitateLabel" runat="server" Text="Imitate Words" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="ImitateTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 200px">
                    <asp:Label ID="UseLabel" runat="server" Text="Use Single Words" CssClass="label5"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="UseTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="PhraseLabel" runat="server" Text="Use Phrases" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="PhraseTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 200px">
                    <asp:Label ID="SentenceLabel" runat="server" Text="Use Complete Sentences" CssClass="label5"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="SitLabel" runat="server" Text="Sit Alone" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 150px">
                    <asp:Label ID="WalingLabel" runat="server" Text="Begin Walking" CssClass="label5"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="WalkingTextBox" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 150px">
                    <asp:Label ID="Label12" runat="server" Text="Stand Up" CssClass="label5"></asp:Label>
                </td>
                <td style="width: 135px">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="option1" style="width: 70px"></asp:TextBox>
                </td>
                <td style="width: 150px"></td>
                <td></td>
            </tr>
        </table>
    <br />

    <%--Question 5: Speech Development--%>
    <asp:Label ID="Q5Label" runat="server" Text="Did Speech development ever seem to stop for a period?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="Q5RadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>

    <%--Question5: part2--%>
   <div>
        <asp:Label ID="Label10" runat="server" Text="If yes, when?" CssClass="label4" style="width: 110px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="child-input"></asp:TextBox>
    </div>
    <br />

    <%--Question5: part3--%>
    <asp:Label ID="DescriptionLabel" runat="server" Text="Please describe" CssClass="label6"></asp:Label>
    <asp:TextBox ID="DescriptionTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Typical Sentence--%>
    <asp:Label ID="TypicalLabel" runat="server" Text="Please give examples of your child's typical sentences" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TypicalTextBox" runat="server" Width="491px" CssClass="text-box2" TextMode="MultiLine"></asp:TextBox> 
    <br />

    <%--Question7: Longest Sentence--%>
    <asp:Label ID="LongestLabel" runat="server" Text="Please give examples of your child's longest sentences" CssClass="label6"></asp:Label>
    <asp:TextBox ID="LongestTextBox" runat="server" Width="491px" CssClass="text-box2" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question8: Attending School--%>
    <asp:Label ID="SchoolLabel" runat="server" Text="Does your child attend daycare/preschool?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>

    <%--Question8: Part 2--%>
       <div>
        <asp:Label ID="SchoolLabel2" runat="server" Text="If yes, where?" CssClass="label4" style="width: 110px"></asp:Label>
        <asp:TextBox ID="SchoolTextBox" runat="server" CssClass="child-input"></asp:TextBox>
    </div>
    </div>

                        <div id="Child2" class="" visilble="true">
                             <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Child: Part Two</h6>
   </div>

    <br />
    <br />

    <%--Question 1: Babbling--%>
    <asp:Label ID="BabblingLabel" runat="server" Text="Does your child turn the radio or TV up louder?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="BabblingRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question 2: Head Turning--%>
    <asp:Label ID="HeadLabel" runat="server" Text="Does your child turn his head when being spoken to?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="HeadRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question 3: Teacher--%>
    <asp:Label ID="TeacherLabel" runat="server" Text="Has the teacher indicated any hearing problem in class?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="TeacherRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question 4: Academic Progress--%>
    <asp:Label ID="Label11" runat="server" Text="Is your child’s academic progress up to your expectations?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList4" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />

    <%--Question5: Favorite Subject--%>
    <asp:Label ID="Label13" runat="server" Text="What is your child’s favorite subject(s)?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question5: Part 2--%>
    <asp:Label ID="Label14" runat="server" Text="Why?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Least Favorite Subject--%>
    <asp:Label ID="Label15" runat="server" Text="What is your child’s least favorite subject(s)?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Part 2--%>
    <asp:Label ID="Label16" runat="server" Text="Why?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question 7: Special Services--%>
    <asp:Label ID="ServiceLabel" runat="server" Text="Are special services available to your child within his/her school?" style="margin-left: 16px"></asp:Label>
    <asp:RadioButtonList ID="ServiceRadioButtonList" runat="server" DataSourceID="YesNoEntityDataSource" DataTextField="Option" DataValueField="OptionID" CssClass="radio-button2">
    </asp:RadioButtonList>
    <br />
                        </div>

                        <div id="Child 3" class="" visible="true">
                            <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Child: Part Three</h6>
   </div>

    <br />
    <br />

    <%--Question1: Food--%>
    <asp:Label ID="FoodLabel" runat="server" Text="Does your child have strong food preferences? If yes, please explain.<br>(If no, write No)" CssClass="label6"></asp:Label>
    <asp:TextBox ID="FoodTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />
    
    <%--Question2: Frustration Responeses--%>
    <asp:Label ID="ResponsesLabel" runat="server" Text="If the child is easily frustrated, what are his/her responses to frustration?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="ResponsesTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question3: Frustration Handling--%>
    <asp:Label ID="HandlingLabel" runat="server" Text="How do you handle your child's frustration?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="HandlingTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question4: Family Activities--%>
    <asp:Label ID="ActivitiesLabel" runat="server" Text="What types of activities do you do together as a family?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="ActivitiesTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question5: Hobbies--%>
    <asp:Label ID="HobbiesLabel" runat="server" Text="What are your child's hobbies or favorite activities?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="HobbiesTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question6: Getting Along--%>
    <asp:Label ID="AlongLabel" runat="server" Text="How does your child get along with other family members?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="AlongTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />

    <%--Question7: Children--%>
    <asp:Label ID="ChildrenLabel" runat="server" Text="How much of an opportunity does your child have to play with other children<br>of the same age?" CssClass="label6"></asp:Label>
    <asp:TextBox ID="ChildrenTextBox" runat="server" CssClass="text-box2" Width="491px" TextMode="MultiLine"></asp:TextBox>
    <br />
                        </div>
                    </asp:View>
                    <%--Parental History Tab--%>
                    <asp:View ID="View6" runat="server">
                        <%--Page Header--%>
    <h1>Client Details</h1>
    <h6 class="sub-head">Parental History</h6>
    <br />
    <br />

    <%-----------form----------%>
    <form>

        <table class="form-table" style="width: 70%;">
            <%--Relation--%>
            <tr>
                <td style="padding-bottom:10px;" class="td-class"><asp:Label ID="RelationLb" runat="server" Text="Relation" CssClass="label2"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" style="width: 100px;" CssClass="option2">
                     <asp:ListItem disabled selected hidden Value="Select">---Select---</asp:ListItem>
                        <asp:ListItem Value="Father">Father</asp:ListItem>
                        <asp:ListItem Value="Mother">Mother</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <%--First Name--%>
            <tr>
                <td style="padding-bottom:10px;" class="td-class"><asp:Label ID="Label17" runat="server" Text="First Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="TextBox10" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Middle Name--%>
            <tr> 
                <td><asp:Label ID="Label18" runat="server" Text="Middle Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="TextBox11" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Last Name--%>
            <tr>
                <td><asp:Label ID="Label19" runat="server" Text="Last Name" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="TextBox12" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Email--%>
            <tr>
                <td><asp:Label ID="Label20" runat="server" Text="Email" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="TextBox13" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Phone--%>
            <tr>
                <td><asp:Label style="padding-bottom: 25px" ID="PhoneLabel" runat="server" Text="Phone" CssClass="label2"></asp:Label></td>
                <td style="width: 347px"><asp:TextBox ID="HomeTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Home Number" runat="server" CssClass="address-title" />
                </td>
                <td style="width: 347px"><asp:TextBox ID="ParentMobileTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Mobile Number" runat="server" CssClass="address-title" />
                </td>
            </tr>
            <%------Address------%>
            <tr>
                <td><asp:Label style="padding-bottom: 25px" ID="Label21" runat="server" Text="Address" CssClass="label2"></asp:Label></td>
                
                <td style="width: 347px"><asp:TextBox ID="TextBox14" runat="server" CssClass="option2"></asp:TextBox> 
                    <asp:Label Text="Building Number" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><asp:TextBox ID="TextBox15" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Street Name" runat="server" CssClass="address-title" />
                </td>

                <td style="width: 347px"><asp:TextBox ID="TextBox16" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="District" runat="server" CssClass="address-title" />
                </td>
            </tr>
            <tr>
                <td></td>
                <%--City--%>
                <td style="width: 347px"><asp:TextBox ID="CityTextBox" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="City" runat="server" CssClass="address-title" />
                </td>
                <%--Zip Code--%>
                <td style="width: 347px"><asp:TextBox ID="TextBox17" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Zip Code" runat="server" CssClass="address-title" />
                </td>
                <%--Additional Number--%>
                <td style="width: 347px"><asp:TextBox ID="TextBox18" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label Text="Additonal Numbers" runat="server" CssClass="address-title" />
                </td>
            </tr>
            <%--Space Row--%>
            <tr>
                <td></td>
            </tr>
            <%--Date of Birth--%>
            <tr>
                <td><asp:Label ID="BirthDLb" runat="server" Text="Date of Birth" CssClass="label2"></asp:Label></td>
                <td><asp:TextBox ID="BirthDTxt" runat="server" CssClass="option2" TextMode="Date"></asp:TextBox></td>
            </tr>
            <%--Education--%>
            <tr>
                <td><asp:Label ID="EducationLb" runat="server" Text="Education" CssClass="label2"></asp:Label></td>
                <td><asp:TextBox ID="EducationTxt" runat="server" CssClass="option2"></asp:TextBox></td>
            </tr>
            <%--Occupation--%>
            <tr>
                <td><asp:Label style="padding-bottom: 25px" ID="OccupationLb" runat="server" Text="Occupation" CssClass="label2"></asp:Label></td>
                <td><asp:TextBox ID="OccupationTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="OccupationLb2" runat="server" Text="Occupation" CssClass="address-title"></asp:Label>
                </td>
                <td><asp:TextBox ID="PlaceTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="PlaceLb" runat="server" Text="Place of Employment" CssClass="address-title"></asp:Label>
                </td>
                <td><asp:TextBox ID="WorkPhoneTxt" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="WorkPhoneLb" runat="server" Text="Work Phone" CssClass="address-title"></asp:Label>
                </td>
            </tr>
            <%--Marital Status--%>
            <tr>
            <td><asp:Label ID="MaritalLabel" runat="server" Text="Marital Status" CssClass="label2"></asp:Label></td>
            <td><asp:DropDownList ID="MaritalDropDownList" style="width: 100px;" runat="server" AppendDataBoundItems="true" DataSourceID="MaritalStatusEntityDataSource" DataTextField="MartialStatus" DataValueField="MaritalStatusID" CssClass="option2">
                <Items>
                    <asp:ListItem disabled selected hidden Value="Select">Select</asp:ListItem>
                </Items>
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Marital_Status"></asp:EntityDataSource>
            </td>
        </tr>
        </table>

    </form>
                    </asp:View>
                    <%--Health History Tab--%>
                    <asp:View ID="View7" runat="server">
                        <%--Page Header--%>
   <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">Health History: Part One</h6>
   </div>

    <br />
    <br />

    <form>
    <%--Question 1: Healt Condition--%>
            <asp:Label ID="Label22" runat="server" Text="What is the client's present health condition?" CssClass="label7"></asp:Label>
    <br />

        <table class="w-100">
            <tr>
                <%--First Cell--%>
                <td style="width: 100px; text-align:right; height: 29px;">
                    <asp:Label ID="Label23" runat="server" Text="(Excellent)" style="font-weight:bold; color: #696969"></asp:Label>
                </td>
                <%--Second Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label24" runat="server" Text="1" CssClass="label3"></asp:Label>
                </td>
                <%--Third Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label25" runat="server" Text="2" CssClass="label3"></asp:Label>
                </td>
                <%--Fourth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label26" runat="server" Text="3" CssClass="label3"></asp:Label>
                </td>
                <%--Fifth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label27" runat="server" Text="4" CssClass="label3"></asp:Label>
                </td>
                <%--Sixth Cell--%>
                <td style="width: 100px; text-align:center; height: 29px;">
                    <asp:Label ID="Label28" runat="server" Text="5" CssClass="label3"></asp:Label>
                </td>
                <%--Last Cell--%>
                <td style="width: 100px; text-align:left; height: 29px;">
                    <asp:Label ID="Label29" runat="server" Text="(Poor)" style="font-weight:bold; color: #696969;"></asp:Label>
                </td>
            </tr>
            <%--radio buttons row--%>
            <tr>
                <td style="width: 100px; text-align:center"></td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="test" ValidationGroup="Scale" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton7" runat="server" ValidationGroup="Scale" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton8" runat="server" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton9" runat="server" GroupName="test" />
                </td>
                <td style="width: 100px; text-align:center">
                    <asp:RadioButton ID="RadioButton10" runat="server" GroupName="test" />
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
                <td><asp:TextBox ID="TextBox19" runat="server" CssClass="option2"></asp:TextBox>
                    <asp:Label ID="Label30" runat="server" Text="Place" CssClass="address-title"></asp:Label>
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
                <td style="width: 251px"><asp:Label ID="Label31" runat="server" Text="Please check all immunizations that have been received" CssClass="label6"></asp:Label></td>
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
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="TextBox20" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
    </table>
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

    <asp:RadioButton ID="YesRadioButton" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" />
    <asp:RadioButton ID="NoRadioButton" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes"/>
    <br /> 

    <asp:Label ID="LanguageLb" runat="server" Text="Speech and Language Therapy" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton11" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes"/>
    <asp:RadioButton ID="RadioButton12" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes"/>
    <br />

    <asp:Label ID="HearingLb" runat="server" Text="Hearing Test" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton13" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" />
    <asp:RadioButton ID="RadioButton14" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" />
    <br />

    <asp:Label ID="NeurologicalLb" runat="server" Text="Neurological Examination" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton15" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" />
    <asp:RadioButton ID="RadioButton16" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" />
    <br />

    <asp:Label ID="PsychologicalLb" runat="server" Text="Psychological Examination" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton17" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes" />
    <asp:RadioButton ID="RadioButton18" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes" />
    <br />

    <asp:Label ID="CounselingLb" runat="server" Text="Counseling Services" CssClass="label6"></asp:Label>
    <asp:RadioButton ID="RadioButton19" CssClass="radio-button3" runat="server" ValidationGroup="yes" Text="yes" GroupName="yes"/>
    <asp:RadioButton ID="RadioButton20" CssClass="radio-button3" runat="server" Text="No" ValidationGroup="yes" GroupName="yes"/>
    <br />

    <asp:Panel ID="ExaminationPanel" runat="server" Visible="true">
        
        <table style="width: 100%; margin-left: 40px">
            <tr>
                <td style="width:50px"><asp:Label ID="Label32" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="TextBox21" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label33" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="TextBox22" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label34" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="TextBox23" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label35" runat="server" CssClass="label5" Text="Who made the referral?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="TextBox24" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label36" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox25" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label37" runat="server" text="What is your understanding of the results and recommendations based on <br/> the examination?" cssclass="label8"></asp:label></td>
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
                <td style="width:50px"><asp:Label ID="Label38" runat="server" CssClass="label5" Text="When?"></asp:Label></td>
                <td style="width:190px"><asp:TextBox ID="TextBocx" style="width:100%"  runat="server" CssClass="option1" TextMode="Date"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label39" runat="server" CssClass="label5" Text="With whom?"></asp:Label></td>
                <td><asp:TextBox ID="TextBox26" runat="server" style="width: 53%" CssClass="option1"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width:50px"><asp:Label ID="Label40" runat="server" CssClass="label5" Text="Where?"></asp:Label></td>
                <td style="width:100px"><asp:TextBox style="width:100%" ID="TextBox27" runat="server" CssClass="option1"></asp:TextBox></td>
                <td style="width:250px"><asp:Label ID="Label41" runat="server" CssClass="label5" Text="How often?"></asp:Label></td>
                <td><asp:TextBox style="width: 53%" ID="TextBox28" runat="server" CssClass="option1"></asp:TextBox></td>
            </tr>
            <%--Space Row--%>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td colspan="4"><asp:label id="Label42" runat="server" text="What was the reason?" cssclass="label8"></asp:label></td>
            </tr>
            <tr>
                <td colspan="4"><asp:TextBox ID="TextBox29" runat="server" CssClass="text-box2" Width="491px" style="margin-left:0" TextMode="MultiLine"></asp:textbox></td>
            </tr>
        </table>
       </asp:Panel>
    </form>
                    </asp:View>
                    <%--Physician Information--%>
                    <asp:View ID="View8" runat="server">
                        <%--Page Header--%>
    <h1>Client Details</h1>
    <h6 class="sub-head">Physician Information</h6>
    <table class="form-table" style="width: 80%;">
        
        <%--Physician--%>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label43" runat="server" Text="Primary Physician" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox30" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label44" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PhysicianPhoneTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label45" runat="server" Text="Phone Number" CssClass="address-title"></asp:Label>
            </td>
            <%--Phone Number Validation--%>
            <td style="padding-bottom: 20px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Numbers or (+) only" ControlToValidate="PhysicianPhoneTxt" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" ForeColor="#FEA0A5" Font-Size="Smaller"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label46" runat="server" Text="Physician Address" CssClass="label2"></asp:Label></td>
            <td><asp:TextBox ID="TextBox31" runat="server" CssClass="option2"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label47" runat="server" Text="Referred By" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="RefNameTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label48" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="RefNumberTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label49" runat="server" Text="Phone Number" CssClass="address-title"></asp:Label>
            </td>
             <%--Phone Number Validation--%>
            <td style="padding-bottom: 20px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Numbers or (+) only" ControlToValidate="EmergPhoneTxt" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" ForeColor="#FEA0A5" Font-Size="Smaller"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label50" runat="server" Text="Emergency Contact" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="EmergNameTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label51" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmergPhoneTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label52" runat="server" Text="Phone Number" CssClass="address-title"></asp:Label>
            </td>
             <%--Phone Number Validation--%>
            <td style="padding-bottom: 20px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Numbers or (+) only" ControlToValidate="EmergPhoneTxt" ValidationExpression="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" ForeColor="#FEA0A5" Font-Size="Smaller"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:TextBox ID="EmergRelTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label53" runat="server" Text="Relationship" CssClass="address-title"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><asp:Label style="padding-bottom: 25px" ID="Label54" runat="server" Text="Person Completing Questionnaire" CssClass="label2"></asp:Label></td>
            <td>
                <asp:TextBox ID="QustNameTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label55" runat="server" Text="Name" CssClass="address-title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="QuestRelTxt" runat="server" CssClass="option2"></asp:TextBox>
                <asp:Label ID="Label56" runat="server" Text="Relationship" CssClass="address-title"></asp:Label>
            </td>
        </tr>
    </table>
                    </asp:View>
                    <%--Motor Development--%>
                    <asp:View ID="View9" runat="server">
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
                <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=SLHSClinicEntities" DefaultContainerName="SLHSClinicEntities" EnableFlattening="False" EntitySetName="Yes_No"></asp:EntityDataSource>
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
                <asp:TextBox ID="TextBox32" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
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
            <td colspan="3" style="height: 30px;"><asp:Label ID="Label57" runat="server" Text="feel is of importantce if any." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 3: Response Box--%>
        <tr>
            <td colspan="3"><asp:TextBox ID="TextBox33" runat="server" TextMode="MultiLine" CssClass="text-box2"></asp:TextBox></td>
        </tr>
    </table>
                    </asp:View>
                    <%--Speech & Language History--%>
                    <asp:View ID="View10" runat="server">
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
            <td colspan="8" style="height: 30px"><asp:Label ID="Label58" runat="server" Text="How does the client currently communicate?" CssClass="label6"></asp:Label></td>
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
            <td colspan="8"><asp:Label ID="Label59" runat="server" CssClass="label6" Text="As a child, how is the client's speech and language development compared"></asp:Label></td>
        </tr>
        <tr>
            <td  style="height: 30px"><asp:Label ID="Label60" runat="server" CssClass="label6" Text="to siblings'/peers'"></asp:Label></td>
        </tr>
        <%--Question 2: Options--%>
        <tr>
            <td colspan="8"><asp:TextBox ID="TextBox34" runat="server" TextMode="MultiLine" CssClass="text-box2"></asp:TextBox></td>
            <td></td>
            <td></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 3: Difficutlies--%>
        <tr>
            <td colspan="8" style="height: 30px"><asp:Label ID="Label61" runat="server" Text="Does the client have a difficulty when (choose all that apply):" CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 3: Options--%>
        <tr>
            <td colspan="8"><asp:CheckBox ID="CheckBox2" runat="server" Text="Thinking of Words to Say" CssClass="radio-button3" /></td>
        </tr>
        <tr>
            <td colspan="8"><asp:CheckBox ID="CheckBox3" runat="server" Text="Understanding Speech" CssClass="radio-button3" /></td>
        </tr>
        <tr>
            <td colspan="8"><asp:CheckBox ID="CheckBox4" runat="server" Text="Following Directions" CssClass="radio-button3" /></td>
        </tr>
         <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Attention--%>
        <tr>
            <td colspan="8" style="height: 30px"><asp:Label ID="Label62" runat="server" Text="How easily does the client maintain attention during activities such as:" CssClass="label6"></asp:Label></td>
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
            <td style="width: 10%; text-align: right"><asp:Label ID="Label63" runat="server" Text="Watching TV" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton21" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton22" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton23" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton24" runat="server" GroupName="test" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton25" runat="server" GroupName="test" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Reading--%>
        <tr>
            <td style="width: 10%; text-align: right"><asp:Label ID="Label64" runat="server" Text="Reading" CssClass="label6"></asp:Label></td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton26" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton27" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton28" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton29" runat="server" GroupName="Reading" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:RadioButton ID="RadioButton30" runat="server" GroupName="Reading" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Looking at Pictures--%>
        <tr>
            <td style="width: 20%; text-align: right"><asp:Label ID="Label65" runat="server" Text="Looking at Pictures" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton31" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton32" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton33" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton34" runat="server" GroupName="Pictures" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton35" runat="server" GroupName="Pictures" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Listening to Stories--%>
        <tr>
            <td style="width: 20%; text-align: right"><asp:Label ID="Label66" runat="server" Text="Listening to Stories" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton36" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton37" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton38" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton39" runat="server" GroupName="Stories" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton40" runat="server" GroupName="Stories" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <%--Question 4: Playing with Toys--%>
        <tr>
            <td style="width: 10%; text-align: right"><asp:Label ID="Label67" runat="server" Text="Playing with Toys" CssClass="label6"></asp:Label></td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton41" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton42" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton43" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton44" runat="server" GroupName="Toys" />
            </td>
            <td style="width: 50px; text-align: center">
                <asp:RadioButton ID="RadioButton45" runat="server" GroupName="test" />
            </td>
            <td>&nbsp;</td>
        </tr>
         <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 5: Efforts--%>
        <tr>
            <td colspan="8" style="height: 30px"><asp:Label ID="Label68" runat="server" Text="Describe any efforts you made to help communicate better" CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 5: Text Box--%>
        <tr>
            <td colspan="8"><asp:TextBox ID="TextBox35" runat="server" TextMode="MultiLine" CssClass="text-box2"></asp:TextBox></td>
        </tr>

    </table>
                    </asp:View>
                    <%--Hearing History--%>
                    <asp:View ID="View11" runat="server">
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
            <td colspan="2" style="height:30px"><asp:Label ID="Label69" runat="server" Text="Is there a history of hearing loss in the family? If yes, explain." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 1: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox36" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 2: Early Age Hearing Loss --%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label70" CssClass="label6" runat="server" Text="Has any member of the family suffered a hearing loss at an early age?"></asp:Label></td>
        </tr>
        <%--Question 2: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox37" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 3: Ear Infections--%>
        <tr>            
            <td colspan="2" style="height:30px"><asp:Label ID="Label71" runat="server" CssClass="label6" Text="Does the client have frequent earaches or infectoins?"></asp:Label></td>
        </tr>
        <%--Question 3: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton46" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Infection" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton47" runat="server" CssClass="radio-button3" Text="No" GroupName="Infection" /></td>
        </tr>
        <%--Question 4: Cold--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label72" runat="server" CssClass="label6" Text="Does the client have frequent colds?"></asp:Label></td>
        </tr>
        <%--Question 4: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton48" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Cold" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton49" runat="server" CssClass="radio-button3" Text="No" GroupName="Cold" /></td>
        </tr>
        <%--Question 5: Hearing Change--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label73" runat="server" CssClass="label6" Text="Has there been a change in the patient's hearing? If yes, explain."></asp:Label></td>
        </tr>
        <%--Question 5: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox38" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 6: Normal Hearing--%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label74" runat="server" CssClass="label6" Text="Does the patient hearing seem normal to you?"></asp:Label></td>
        </tr>
        <%--Question 6: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton50" CssClass="radio-button3" runat="server" Text="Yes" GroupName="Hearing" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton51" CssClass="radio-button3" runat="server" Text="No" GroupName="Hearing" /></td>
        </tr>
        <%--Question 7: Turning Head--%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label75" runat="server" CssClass="label6" Text="Does the patient turn his/her head when being spoken to?"></asp:Label></td>
        </tr>
        <%--Question 7: Radion Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton52" CssClass="radio-button3" runat="server" Text="Yes" GroupName="Head" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton53" CssClass="radio-button3" runat="server" Text="No" GroupName="Head" /></td>
        </tr>
        <%--Question 8: Radio & TV--%>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label76" runat="server" CssClass="label6" Text="Does the patient turn the radio or Tv louder?"></asp:Label></td>
        </tr>
        <%--Question 8: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton54" CssClass="radio-button3" runat="server" Text="Yes" GroupName="Radio" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton55" CssClass="radio-button3" runat="server" Text="No" GroupName="Radio" /></td>
        </tr>
        <%--Question 9: First Hearing Problem--%>
        <tr>
            <td style="height:30px"><asp:Label ID="Label77" runat="server" CssClass="label6" Text="When did you first notice a hearing problem?"></asp:Label></td>
            <td><asp:TextBox ID="TextBox39" CssClass="option1" runat="server"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 10: Hearing Aid--%>
        <tr>
            <td colspan="2"><asp:Label ID="Label78" CssClass="label6" runat="server" Text="Is the patient presently wearing a hearing aid or cochlear implant?"></asp:Label></td>
        </tr>
        <%--Question 10: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton56" runat="server" Text="Yes" CssClass="radio-button3" GroupName="EarAid" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton57" runat="server" Text="No" CssClass="radio-button3" GroupName="EarAid" /></td>
        </tr>
        <%--Question 10: Part Two-Hearing aid duration--%>
        <tr>
            <td style="width: 500px;"><asp:Label ID="Label79" runat="server" Text="If yes, for how long?" CssClass="label6"></asp:Label></td>
            <td><asp:TextBox ID="TextBox40" CssClass="option1" runat="server"></asp:TextBox></td>
        </tr>
        <%--Question 10: Part Three-Provider--%>
        <tr>
            <td><asp:Label ID="Label80" runat="server" Text="Who provided it, and what type is it?" CssClass="label6"></asp:Label></td>
            <td><asp:TextBox ID="TextBox41" runat="server" CssClass="option1"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <%--Question 12: Other Information--%>
        <tr>
            <td colspan="2"><asp:Label ID="Label81" runat="server" Text="Please Include any other information pertainting to hearing you feel may be" CssClass="label6"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height:30px"><asp:Label ID="Label82" runat="server" Text="of importance to us." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 12: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="HearingInfoTxt" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
    </table>
                    </asp:View>
                    <%--School History--%>
                    <asp:View ID="View12" runat="server">
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
            <td style="width:450px; height:30px"><asp:Label ID="Label83" runat="server" CssClass="label6" Text="What school/college does the patient presently attend?"></asp:Label></td>
            <td><asp:TextBox ID="TextBox42" CssClass="option1" runat="server"></asp:TextBox></td>
        </tr>
        <%--Question 2: Repeated Grade--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label84" runat="server" CssClass="label6" Text="In school/college has any grade been repeated?"></asp:Label></td>
        </tr>
        <%--Question 2: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton58" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Cold" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton59" runat="server" CssClass="radio-button3" Text="No" GroupName="Cold" /></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 2: Part Two-Reasons--%>
        <tr>
            <td colspan="2" style="height: 30px"><asp:Label ID="Label85" runat="server" Text="If yes, what were the reasons?" CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 2: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox43" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 3: Special Classroom--%>
        <tr>
            <td style="height:30px" colspan="2"><asp:Label ID="Label86" runat="server" CssClass="label6" Text="Was the patient placed in any special classroom or received remedial help during schoolv years?"></asp:Label></td>
        </tr>
        <%--Question 3: Radio Buttons--%>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton60" runat="server" CssClass="radio-button3" Text="Yes" GroupName="Classroom" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:RadioButton ID="RadioButton61" runat="server" CssClass="radio-button3" Text="No" GroupName="Classroom" /></td>
        </tr>
        <%--Space Row--%>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%--Question 3: Part Two--%>
        <tr>
            <td colspan="2" style="height: 30px"><asp:Label ID="Label87" runat="server" Text="If yes, please describe and include progress notes." CssClass="label6"></asp:Label></td>
        </tr>
        <%--Question 3: Text Box--%>
        <tr>
            <td colspan="2"><asp:TextBox ID="TextBox44" runat="server" CssClass="text-box2"></asp:TextBox></td>
        </tr>
    </table>
                    </asp:View>
                    <%--Social History--%>
                    <asp:View ID="View13" runat="server">
                        <h1>Client Details</h1>
   <div class="client-head-div">
       <h6 class="client-head">social History</h6>
   </div>
    <br />
    <br />

    <table style="width: 100%;">
           <tr>
                <td colspan="4" style="height: 30px"><asp:Label ID="Label88" runat="server" Text="Check the appropriate characteristics which best decribe the patient's personality" CssClass="label6"></asp:Label></td>
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
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="TextBox45" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
            <tr>
                <td colspan="4" style="height:30px"><asp:Label ID="Label89" runat="server" Text="Check which characteristics which best decribe the patient's behavior" CssClass="label6"></asp:Label></td>
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
                    <asp:CheckBox ID="OthrBehCheck" runat="server" Text="Other, please specifiy" CssClass="radio-button3" /><asp:TextBox ID="TextBox46" CssClass="option2" runat="server" style=" margin: 0 10px;"></asp:TextBox>
                </td>
            </tr>
    </table>
                    </asp:View>


                </asp:MultiView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                     <%--Button--%>
    <div class="next-button-div">
        <button class="next-button">Next</button>
    </div> 
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>

                </td>
            </tr>
        </table>
    </form>

</asp:Content>
