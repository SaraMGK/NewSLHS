using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using NewSLHS.DAL;

namespace NewSLHS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {

            SLHSClinicEntities db = new SLHSClinicEntities();

            int query_AuthenticationID = (from c in db.Authentications
                                          where c.Username == username.Text && c.Password == password.Text
                                          select c.AuthenticationID).FirstOrDefault();

            if (query_AuthenticationID != 0)
            {
                invalidMessage.Text = "";
                int type = (from c in db.Authentications
                                              where c.Username == username.Text && c.Password == password.Text
                                              select c.Type).FirstOrDefault();
                string query_studentName;
                int query_userID;

                if (type == 1)
                {
                    query_studentName = (from x in db.Students
                                                where x.AuthenticationID == query_AuthenticationID
                                                select x.FirstName + " " + x.LastName).FirstOrDefault();
                    //for limited access
                    query_userID = (from x in db.Students
                                    where x.AuthenticationID == query_AuthenticationID
                                    select x.UserID).FirstOrDefault();
                }

                else if (type == 2)
                {
                    query_studentName = (from x in db.Supervisors
                                         where x.AuthenticationID == query_AuthenticationID
                                         select x.FirstName + " " + x.LastName).FirstOrDefault();
                    //for limited access
                    query_userID = (from x in db.Supervisors
                                    where x.AuthenticationID == query_AuthenticationID
                                    select x.UserID).FirstOrDefault();
                }

                else 
                {
                    query_studentName = (from x in db.Teacher_Assistant
                                         where x.AuthenticationID == query_AuthenticationID
                                         select x.FirstName + " " + x.LastName).FirstOrDefault();
                    //for limited access
                    query_userID = (from x in db.Teacher_Assistant
                                    where x.AuthenticationID == query_AuthenticationID
                                    select x.UserID).FirstOrDefault();
                }

                //Session["UserID"] = query - user - id;

                Session["SessionUserID"] = query_userID;

                Response.Redirect("Homepage.aspx?username=" + query_studentName);
            }
            else
            {

                invalidMessage.Text = "Invalid username or password";
            }

        }
    }

}