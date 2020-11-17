using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NewSLHS.DAL;

namespace NewSLHS
{
    public partial class ModalTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SLHSClinicEntities db = new SLHSClinicEntities();

            var datasource = from x in db.Students
                             select new
                             {
                                 x.FirstName,
                                 x.MiddleName,
                                 DisplayField = String.Format(x.FirstName, x.MiddleName)
                             };

            StudentDropDownList.DataSource = datasource;
            StudentDropDownList.DataValueField = "UserID";
            StudentDropDownList.DataTextField = "DisplayField";
            StudentDropDownList.DataBind();
        }
    }
}