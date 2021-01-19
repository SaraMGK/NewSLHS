using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NewSLHS.DAL;
using NewSLHS;
using SLHSClinic;

 
namespace NewSLHS
{
    public partial class ClientHistory : System.Web.UI.Page
    {
        SLHSClinicEntities db;
        static int editClient = 0;
        static int newClient = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnGInfo.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
            }

            db = new SLHSClinicEntities();
            
            int clientID = 0;
            int newClient = 0;

            if(Request.QueryString["NewClient"] != null)
            {
                newClientAndAddress();
                SaveBtn.Visible = true;
            }
                

            //if (Convert.ToBoolean(newClient = int.Parse(Request.QueryString["NewClient"])))
            //{
            //    newClientAndAddress();

            //}
            else if (Convert.ToBoolean(clientID = int.Parse(Request.QueryString["ClientID"])))

            {
                ViewClient(clientID);


            }


        }

        protected void btnGInfo_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Clicked";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void ViewClient(int ClientID)
        {
            Client cl = db.Clients.Find(ClientID);
            Address ad = db.Addresses.Find(cl.AddressID);
            Client_Information info = db.Client_Information.Where(x => x.ClientID == ClientID).FirstOrDefault();
            Diagnosis dia = db.Diagnosis1.Find(info.DiagnosisID);
            Birth birth = db.Births.Find(info.BirthID);
            Hearing hear = db.Hearings.Find(info.HearingID);
            Social social = db.Socials.Find(info.SocialID);
            //Child child = db.Children.Find(Client_Information);


            //Client
            IDLabel.Text = cl.ClientID.ToString();
            FNTextBox.Text = cl.FirstName;
            MNTextBox.Text = cl.MiddleName;
            LNTextBox.Text = cl.LastName;
            EmailTextBox.Text = cl.Email;
            MobileTextBox.Text = cl.Mobile;

            //Address
            AddressTextBox.Text = ad.BuildingNumber.ToString();
            StreetTextBox.Text = ad.StreetName;
            DistTextBox.Text = ad.District;
            CityDropDownList.SelectedValue = ad.City;
            ZipTextBox.Text = ad.ZipCode.ToString();
            AddNumTextBox.Text = ad.AdditionalNumbers.ToString();

            //Identification
            FNumTxt.Text = info.FileNumber;
            EthincityTxt.Text = info.Ethincity;
            GenderDropDownList.SelectedValue = info.Gender.ToString();
            WeightTxt.Text = info.Weight.ToString();
            HeightTxt.Text = info.Height.ToString();
            ClLanTxt.Text = info.ClientLanguage;
            HomeLanTxt.Text = info.LanguageAtHome;
            SiblingTxt.Text = info.OtherSiblings;
            ProblemTxt.Text = info.SiblingSLPProblems;
            AcaTxt.Text = info.SiblingAcademicDifficulties;
            PregTxt.Text = info.OtherPregnancies;
            CleftCheckBox.Checked = Convert.ToBoolean(dia.CleftPlatal);
            CerebralCheckBox.Checked = Convert.ToBoolean(dia.CerebalPalsy);
            MentalCheckBox.Checked = Convert.ToBoolean(dia.MentalRetardation);
            BrainCheckBox.Checked = Convert.ToBoolean(dia.BrainDysfunction);
            DownCheckBox.Checked = Convert.ToBoolean(dia.DownSyndrome);
            ThroatCheckBox.Checked = Convert.ToBoolean(dia.DefectsNoseThroatEars);
            //OtherCheckBox.Checked = Convert.ToBoolean(dia.Other);
            OtherTxt.Text = dia.Other;

            //Birth History
            PregnancyTxt.Text = birth.PregnancyLength;
            BirthWhtTxt.Text = birth.BirthWeight;
            PrenatalTxt.Text = birth.PregnancyAccident;
            MdTxt.Text = birth.PregnancyMedication;
            AnesthTxt.Text = birth.LaborAnesthetics;
            PrgProblemTxt.Text = birth.DeliveryProblems;

            //Adult
            //DropDownList1.SelectedValue = info.Marital_Status.ToString();
            FrustRadBtnList.SelectedValue = social.Frustration.ToString();
            HandleFrustTxt.Text = social.HandlingFrustration;

            //Child
            //LaborTextBox.Text = info.Child.LaborDuration;
            //if (info.Child.FirstYearCommunicationLevel == "1")
            //{
            //    RadioButton1.Checked = Convert.ToBoolean(info.Child.FirstYearCommunicationLevel);

            //}
            //else if (info.Child.FirstYearCommunicationLevel == "2")
            //{
            //    RadioButton2.Checked = Convert.ToBoolean(info.Child.FirstYearCommunicationLevel);
            //}
            //else if (info.Child.FirstYearCommunicationLevel == "3")
            //{
            //    RadioButton3.Checked = Convert.ToBoolean(info.Child.FirstYearCommunicationLevel);
            //}
            //else if (info.Child.FirstYearCommunicationLevel == "4")
            //{
            //    RadioButton4.Checked = Convert.ToBoolean(info.Child.FirstYearCommunicationLevel);

            //}
            //else if (info.Child.FirstYearCommunicationLevel == "4")
            //{
            //    RadioButton5.Checked = Convert.ToBoolean(info.Child.FirstYearCommunicationLevel);   

            //}



            //RadioButtonList1.SelectedValue = child.Babble.ToString();
            //ImitateTextBox.Text = child.ImitatingWordsAge;
            //UseTextBox.Text = child.UsingSingleWordsAge;
            //PhraseTextBox.Text = child.UsingPhrasesAge;
            //SentenceTxt.Text = child.UsingCompleteSentencesAge;
            //SitTxt.Text = child.SetAloneAge;
            //WalkingTextBox.Text = child.walkingAge;
            //StandTxt.Text = child.StandUpAge;
            //Q5RadioButtonList.SelectedValue = child.StopOfLanguageDevelopment.ToString();
            //LanWhenTxt.Text = child.StopOfLanguageTime;
            //DescriptionTextBox.Text = child.StopOfLanguageDescription;
            //TypicalTextBox.Text = child.ChildTypicalSentence;
            //LongestTextBox.Text = child.ChildLongestSentence;
            //SchoolRadioButtonList.SelectedValue = child.AttendingPreSchool.ToString();
            //SchoolTextBox.Text = child.PreSchoolName;
            //LoudRadioButtonList.SelectedValue = hear.TurningTVLouder.ToString();
            //HeadRadioButtonList.SelectedValue = child.TurningHeadWhenSpokenTo.ToString();
            //TeacherRadioButtonList.SelectedValue = child.HearingProblemInClass.ToString();
            //RadioButtonList4.SelectedValue = child.AcademicProgressAsExpected.ToString();
            //TextBox5.Text = child.FavoriteSubject;
            //TextBox7.Text = child.FavoriteSubjectReason__2__No__1__Yes__2__No_______;
            //TextBox8.Text = child.LeastFavoriteSubject;
            //TextBox9.Text = child.LeastFavoriteSubjectReason;
            //ServiceRadioButtonList.SelectedValue = child.SchoolSpecialServicesAvailability.ToString();
            //FoodTextBox.Text = child.FoodPreference;
            //ResponsesTextBox.Text = child.FrustrationResponse;






        }

        protected void newClientAndAddress()
        {
            Client cl = new Client();
            Address ad = new Address();

            //ad.AddressID = int.Parse(AddressIDlb.Text);
            //ad.BuildingNumber = int.Parse(AddressTextBox.Text);
            //ad.District = DistTextBox.Text;
            //ad.City = CityDropDownList.SelectedValue;
            //ad.StreetName = StreetTextBox.Text;
            //ad.ZipCode = int.Parse(ZipTextBox.Text);
            //ad.AdditionalNumbers = int.Parse(AddNumTextBox.Text);

            //db.Addresses.Add(ad);
            //db.SaveChanges();

            //int AddressID = db.Addresses.ToList().Last().AddressID;

            //cl.FirstName = FNTextBox.Text;
            //cl.MiddleName = MNTextBox.Text;
            //cl.LastName = LNTextBox.Text;
            //cl.Email = EmailTextBox.Text;
            //cl.Mobile = MobileTextBox.Text;

            //db.Clients.Add(cl);
            //db.SaveChanges();
        }
        protected void btnIdentification_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Clicked";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void btnBirth_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Clicked";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }

        protected void btnAdult_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Clicked";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;
        }

        protected void btnChild_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Clicked";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 4;
        }

        protected void btnParent_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Clicked";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 5;
        }

        protected void btnHealth_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Clicked";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 6;
        }

        protected void btnPhysician_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Clicked";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 7;
        }

        protected void btnMotor_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Clicked";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 8;
        }

        protected void btnSpeech_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Clicked";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 9;
        }

        protected void btnHearing_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Clicked";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 10;
        }

        protected void btnSchool_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Clicked";
            btnSocial.CssClass = "Initial";
            MainView.ActiveViewIndex = 11;
        }

        protected void btnSocial_Click(object sender, EventArgs e)
        {
            btnGInfo.CssClass = "Initial";
            btnIdentification.CssClass = "Initial";
            btnBirth.CssClass = "Initial";
            btnAdult.CssClass = "Initial";
            btnChild.CssClass = "Initial";
            btnParent.CssClass = "Initial";
            btnHealth.CssClass = "Initial";
            btnPhysician.CssClass = "Initial";
            btnMotor.CssClass = "Initial";
            btnSpeech.CssClass = "Initial";
            btnHearing.CssClass = "Initial";
            btnSchool.CssClass = "Initial";
            btnSocial.CssClass = "Clicked";
            MainView.ActiveViewIndex = 12;
        }

        //Health Part Two Tab
        //Speech Testing Panel
        protected void TestingRadioBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //the Autopostback  property of the RadioButtonList1 should be True
            if (TestingRadioBtnList.SelectedValue == "Yes")
            {
                SpeechPanel.Visible = true;
            }
            else
            {
                SpeechPanel.Visible = false;

            }
        }

        //Counseling Panel
        protected void CounselingRadioBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //the Autopostback  property of the RadioButtonList1 should be True
            if (CounselingRadioBtnList.SelectedValue == "Yes")
            {
                CounselingPanel.Visible = true;
            }
            else
            {
                CounselingPanel.Visible = false;

            }
        }

        //Language Therapy Panel
        protected void LanguageBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (LanguageBtnList.SelectedValue == "Yes")
            {
                LanguagePanel.Visible = true;
            }
            else
            {
                LanguagePanel.Visible = false;

            }
        }

        //Hearing Testing Panel
        protected void HearingRadioBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (HearingRadioBtnList.SelectedValue == "Yes")
            {
                HearingPanel.Visible = true;
            }
            else
            {
                HearingPanel.Visible = false;

            }
        }

        //Neurological Panel
        protected void NeuroRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (NeuroRadioBtn.SelectedValue == "Yes")
            {
                NeuroPanel.Visible = true;
            }
            else
            {
                NeuroPanel.Visible = false;

            }
        }

        //Psychological Panel
        protected void PsyRadioBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (PsyRadioBtnList.SelectedValue == "Yes")
            {
                PsyPanel.Visible = true;
            }
            else
            {
                PsyPanel.Visible = false;

            }
        }


        int currentTab = 0;
        protected void NextBtn_Click(object sender, EventArgs e)
        {

            currentTab = MainView.ActiveViewIndex;
            currentTab = currentTab + 1;
            if (currentTab < 13)
            {
                MainView.ActiveViewIndex = currentTab;

                if (currentTab == 1)
                {
                    btnGInfo.CssClass = "Initial";
                    btnIdentification.CssClass = "Clicked";
                    btnBirth.CssClass = "Initial";
                    btnAdult.CssClass = "Initial";
                    btnChild.CssClass = "Initial";
                    btnParent.CssClass = "Initial";
                    btnHealth.CssClass = "Initial";
                    btnPhysician.CssClass = "Initial";
                    btnMotor.CssClass = "Initial";
                    btnSpeech.CssClass = "Initial";
                    btnHearing.CssClass = "Initial";
                    btnSchool.CssClass = "Initial";
                    btnSocial.CssClass = "Initial";
                }

            }
            

        }

        protected void Q5RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Q5RadioButtonList.SelectedIndex == 0)
            {
                SpDevPanel.Visible = true;
            }
            else
            {
                SpDevPanel.Visible = false;
            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SchoolRadioButtonList.SelectedIndex == 0)
            {
                SchoolPanel.Visible = true;
            }
            else
            {
                SchoolPanel.Visible = false;
            }
        }

        //Show Panel 3 
        protected void Panel2Btn_Click(object sender, EventArgs e)
        {
            Child3Panel.Visible = true;
            Child1Panel.Visible = false;
            Child2Panel.Visible = false;
        }

        //Show Panel 2
        protected void Panel1Btn_Click(object sender, EventArgs e)
        {
            Child2Panel.Visible = true;
            Child1Panel.Visible = false;
            Child3Panel.Visible = false;
        }

        //Back to Panel 2
        protected void Panel3BackBtn_Click(object sender, EventArgs e)
        {
            Child2Panel.Visible = true;
            Child3Panel.Visible = false;

        }

        protected void Panel2BackBtn_Click(object sender, EventArgs e)
        {
            Child1Panel.Visible = true;
            Child2Panel.Visible = false;
        }

        //Show Health 2
        protected void Button6_Click(object sender, EventArgs e)
        {
            Health1Panel.Visible = false;
            Health2Panel.Visible = true;
        }

        protected void HealthButton_Click(object sender, EventArgs e)
        {
            Health1Panel.Visible = true;
            Health2Panel.Visible = false;
        }

        //Back to Client List Button
        protected void ClListBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientsList.aspx");
        }

        //Parent
        protected void Select_Parent(object sender, EventArgs e)
        {

            if (DropDownList2.SelectedValue == "Father" )
            {
                FatherPanel.Visible = true;
                MotherPanel.Visible = false;
            }
            else if (DropDownList2.SelectedValue == "Mother")
            {
                FatherPanel.Visible = false;
                MotherPanel.Visible = true;
            }
            
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            newClientAndAddress();
        }
    }
}
