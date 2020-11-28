using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NewSLHS.DAL;
using NewSLHS;

namespace SLHSClinic
{
    public partial class ResourcesList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewResource()
        {
            SLHSClinicEntities db = new SLHSClinicEntities();
            //List<CustomListItem> 
        }
    }
}