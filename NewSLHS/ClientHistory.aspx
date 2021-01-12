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

                    </asp:View>
                    <%--Birth History Tab--%>
                    <asp:View ID="View3" runat="server"></asp:View>
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
                    <%--Page Header--%>
                    <h1>Client Details</h1>
                    <div class="client-head-div">
                        <h6 class="client-head">Child: Part One</h6>
                    </div>

                    <br />
                    <br />

    <div id="Child" class="" <%--visible="false"--%>>
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

        <table align="right" class="w-100" style="margin-top:5px;">
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
                    <asp:View ID="View6" runat="server"></asp:View>
                    <%--Health History Tab--%>
                    <asp:View ID="View7" runat="server"></asp:View>
                    <%--Physician Information--%>
                    <asp:View ID="View8" runat="server"></asp:View>
                    <%--Motor Development--%>
                    <asp:View ID="View9" runat="server"></asp:View>
                    <%--Speech & Language History--%>
                    <asp:View ID="View10" runat="server"></asp:View>
                    <%--Hearing History--%>
                    <asp:View ID="View11" runat="server"></asp:View>
                    <%--School History--%>
                    <asp:View ID="View12" runat="server"></asp:View>
                    <%--Social History--%>
                    <asp:View ID="View13" runat="server"></asp:View>


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
