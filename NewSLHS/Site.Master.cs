using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string studentName = Request.QueryString["username"];
            //string studentName = Session["username"].ToString();
            //usernameLb.Text = studentName;

            //User Name on the top nav bar
            usernameLb.Text = Session["username"].ToString();
        }
    }
}