using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NewSLHS.DAL;

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
            ViewClient(10000);
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
    }
}