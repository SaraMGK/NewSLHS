using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class Health2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int x = int.Parse(YesNoRadioButtonList.SelectedValue);

            //bool yes = YesRadioButton.Checked;



            //else
            //{
            //    Response.Write("bye");
            //}



        }

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

        protected void CounselingRadioBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //the Autopostback  property of the RadioButtonList1 should be True
            if (TestingRadioBtnList.SelectedValue == "Yes")
            {
                CounselingPanel.Visible = true;
            }
            else
            {
                CounselingPanel.Visible = false;

            }
        }

        protected void LanguageBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TestingRadioBtnList.SelectedValue == "Yes")
            {
                LanguagePanel.Visible = true;
            }
            else
            {
                LanguagePanel.Visible = false;

            }
        }

        protected void HearingRadioBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TestingRadioBtnList.SelectedValue == "Yes")
            {
                HearingPanel.Visible = true;
            }
            else
            {
                HearingPanel.Visible = false;

            }
        }

        protected void NeuroRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TestingRadioBtnList.SelectedValue == "Yes")
            {
                NeuroPanel.Visible = true;
            }
            else
            {
                NeuroPanel.Visible = false;

            }
        }

        protected void PsyRadioBtnList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TestingRadioBtnList.SelectedValue == "Yes")
            {
                PsyPanel.Visible = true;
            }
            else
            {
                PsyPanel.Visible = false;

            }
        }
    }
}