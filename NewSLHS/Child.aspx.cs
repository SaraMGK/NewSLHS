using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NewSLHS;
using NewSLHS.DAL;

namespace NewSLHS
{
    public partial class Child : System.Web.UI.Page
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
            Response.Redirect("Child2.aspx");
        }

        //protected void FillLabels ()
        //{
        //    SLHSClinicEntities db = new SLHSClinicEntities();
        //    List <Child> ChildList;
        //    ChildList = db.Children.Select(x => new Child { ClientID = x.ClientInformationID, ClientID = x.LaborDuration }).ToList();
        //}
    }
}