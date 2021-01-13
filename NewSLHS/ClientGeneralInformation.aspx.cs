using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
            //AddressIDLabel.Visible = false;
            //AddressIDLabel.Text = DetailsView.Rows[7].Cells[1].Text;

            

        }
 

        protected void Hide_Buttons(object sender, EventArgs e)
        {
            ButtonsDiv.Visible = !ButtonsDiv.Visible;
        }

        protected void DetailsView_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            //SuccessMessage.Text = "Record successfully updated.";

           
        }

        protected void NextButton_Click(object sender, EventArgs e)
        {
         
            Response.Redirect("ClientIdentification.aspx?ClientID=" + DetailsView.Rows[1].Cells[1].Text);

        }
    }
}