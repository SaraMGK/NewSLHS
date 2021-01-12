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
    public partial class Adult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DetailsView dd = (DetailsView)sender;

            ////You coudl use FindControl method to find the control
            ////after that, you could check whether the control is null.
            //HiddenField hid = (HiddenField)dd.FindControl("HiddenField1");
            //DropDownList ddl = (DropDownList)dd.FindControl("ddlCity");

            ////Based on the condition to populate the dropdownlist
            //if (hid.Value == "A")
            //{
            //    using (Adult db = new Adult())
            //    {
            //        var query = db.AdultEntityDataSource.Select(c => new { Text = c.City, Value = c.City }).ToList();
            //        ddl.DataTextField = "Text";
            //        ddl.DataValueField = "Value";
            //        ddl.DataSource = query;
            //        ddl.DataBind();
            //    }
            //}
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Incomplete.aspx");

        }

        protected void NextButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Child.aspx");

        }
    }
}