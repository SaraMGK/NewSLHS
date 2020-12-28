using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using NewSLHS.DAL;
using NewSLHS;

namespace NewSLHS
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Client_View da = new Client_View(cmd);      // use your existing SqlCommand here (don't use select *)
            //DataSet ds = new DataSet();                       // create a DataSet object to hold you table(s)... this can contain more than 1 table
            //da.Fill(ds, "Comment");                           // fill this dataset with everything from the Comment Table
            //Repeater1.DataSource = ds.Tables["Comment"];      // attach the data table to the control
            //Repeater1.DataBind();                             // This causes the HTML to be automatically rendered when the page loads.

        }
    }
}