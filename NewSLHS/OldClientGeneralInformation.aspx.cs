using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using NewSLHS;

namespace NewSLHS
{
    public partial class ClientGeneralInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DetailsView.Visible = false;
            //AddressDetailsView.Visible = false;

            //First Name
            //FNTextBox.Text = DetailsView.Rows[1].Cells[1].Text.ToString();

            //Middle Name
            //MNTextBox.Text = DetailsView.Rows[2].Cells[1].Text.ToString();

            //FNText = DetailsView.Rows[2].Cells[1].Text.ToString();
            //FNText = DetailsView.Rows[3].Cells[1].Text.ToString();
            //email = DetailsView.Rows[4].Cells[1].Text.ToString();
            //mobile = DetailsView.Rows[5].Cells[1].Text.ToString();


        }

        protected void EntityDataSource_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
        {

        }

        protected void EntityDataSource1_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}