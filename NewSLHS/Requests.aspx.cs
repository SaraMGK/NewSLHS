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
           
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("RequestDetails.aspx?ResourceRequestID=" + GridView1.SelectedRow.Cells[2].Text);
        }
    }
}