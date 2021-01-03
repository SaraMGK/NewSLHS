using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class InsertGeneralInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Visible = false;

            AddressDetailsView.Visible = false;
            


        }

        //Hide Next buttons when editing or inserting
        protected void Hide_Buttons(object sender, EventArgs e)
        {
            ButtonsDiv.Visible = !ButtonsDiv.Visible;


        }

        protected void DetailsView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {

            //Response.Redirect("InsertIdentification.aspx" + Message);

            ButtonsDiv.Visible = false;

            //show Successful message label and div 
            SuccessMessage.Visible = true;

            Message.Visible = true;

            AddressDetailsView.Visible = true;

            DetailsView.Visible = false;
            Response.Redirect("InsertIdentification.aspx?status=registered");

        }


        protected void hide(object sender, DetailsViewInsertEventArgs e)
        {
            ButtonsDiv.Visible = !ButtonsDiv.Visible;

            //CancelButton.attributes.add("onClick", "javascript:history.back();");
        }

        protected void DetailsView_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}