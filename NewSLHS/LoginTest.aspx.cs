using NewSLHS.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class LoginTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            //SLHSClinicEntities db = new SLHSClinicEntities();

            //int query_AuthenticationID = (from c in db.Authentications
            //                              where c.Username == TextUsername.Text && c.Password == TextPassword.Text
            //                              select c.AuthenticationID).FirstOrDefault();

            //if (query_AuthenticationID != 0)
            //{
            //    Message.Text = "";

            //    string query_studentName = (from x in db.Students
            //                                where x.AuthenticationID == query_AuthenticationID
            //                                select x.FirstName + " " + x.LastName).FirstOrDefault();

            //    Response.Redirect("Homepage.aspx?username=" + query_studentName);
            //}
            //else
            //{

            //    Message.Text = "Invalid username or password";
            //}



        }
    }
}