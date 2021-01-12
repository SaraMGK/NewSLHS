using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class Child2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("IncompleteClients.aspx");

        }

        protected void NextButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Child3.aspx");

        }
    }
}