using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class Requests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //To substitute numbers of status with words
            string[] statuses = { "Pending", "Approved", "Disapproved" };

            //GridView1.Rows.Cells[4] = statuses[Int32.Parse(GridView1.Rows.Cells[4].Text)-1);

            //foreach (GridViewRow row in GridView1.Rows)
            //{
            //    string status = statuses[Int32.Parse(row.Cells[3].ToString()) - 1];

            //}


            //StatusLabel.Text = statuses[Int32.Parse(RequestDetailsView.Rows[4].Cells[1].Text) - 1];


        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("RequestDetails.aspx?ResourceRequestID=" + GridView1.SelectedRow.Cells[2].Text);
        }
    }
}