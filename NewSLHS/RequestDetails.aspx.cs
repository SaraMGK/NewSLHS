using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class RequestDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = int.Parse(Request.QueryString["ResourceRequestID"]);
            //RequestDetailsDiv.InnerText = DetailsView1.Rows[1].Cells[0].Text.ToString();
            //RequestDetailsDiv.InnerText = DetailsView1.Rows[1].Cells[1].Text.ToString();


            SaveCancelDiv.Visible = !SaveCancelDiv.Visible;

            //Hide Request DetailsView
            RequestDetailsView.Visible = false;

            //To substitute numbers of status with words
            string[] statuses = { "Pending", "Approved", "Disapproved" };


            //Resource Image
            //Image. = RequestDetailsView.Rows[0].Cells[1].;
            //hhh.Text = RequestDetailsView.Rows[0].Cells[1].Text.ToString()+"ddddd";
            Image.ImageUrl = RequestDetailsView.Rows[3].Cells[1].Text.ToString();

            //Resource Name
            NameLabel.Text = RequestDetailsView.Rows[1].Cells[1].Text.ToString();

            //Request ID
            IDLabel.Text = "REQ" + RequestDetailsView.Rows[2].Cells[1].Text.ToString();

            //Request Status
            StatusLabel.Text = statuses[Int32.Parse(RequestDetailsView.Rows[4].Cells[1].Text)-1];

            //Quantity
            //quantity.ToString(RequestDetailsView.Rows[4].Cells[1].Text);

        }
    }
}