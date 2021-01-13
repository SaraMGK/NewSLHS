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

        protected void YesRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if (YesRadioButton.Checked)
            {
                ExaminationPanel.Visible = true;
            }
        }

        protected void NoRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if (NoRadioButton.Checked)
            {
                ExaminationPanel.Visible = false;
            }
        }
    }
}