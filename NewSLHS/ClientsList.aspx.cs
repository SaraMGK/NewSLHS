using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NewSLHS;
using System.Data;
using NewSLHS.DAL;

namespace NewSLHS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ClientGridView.Visible = true;


        }

        protected void ClientGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            //Response.Redirect("ClientGeneralInformation.aspx?ClientID=" + ClientGridView.SelectedRow.Cells[7].Text);

        }


        protected void Client_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientHistory.aspx?ClientID=" + ClientGridView.SelectedRow.Cells[7].Text);

        }

        protected void ClientEntityDataSource_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
        {

        }

        protected void AddClientBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientHistory.aspx?NewClient=");
        }
    }
}
