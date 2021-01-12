using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NewSLHS;
using NewSLHS.DAL;
using System.Data;

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
            //FillRequest();

        }

        //protected void FillRequest()
        //{
        //    SLHSClinicEntities db = new SLHSClinicEntities();

        //    List<RequestListItem> RequestList;

        //    RequestList = db.Request_View.Select(x => new RequestListItem
        //    {
        //        ID = x.ResourceRequestID,
        //        Name = x.Resource_Name,
        //        Quantity = x.Quantity_Requested,
        //        Status = x.Status,
        //        IssueDate = x.RequestDateTime,
        //        ReturnDate = x.ReturnDateTime,
        //        Image = x.Image

        //    }).ToList();

        //    IDLabel.Text = RequestList[0].ID.ToString();
        //    NameLabel.Text = RequestList[1].Name;
        //    QuantityTextBox.Text = RequestList[2].Quantity.ToString();
        //    StatusLabel.Text = RequestList[3].Status.ToString();
        //    IssueDateTextBox.Text = RequestList[4].ToString();
        //    ReturnDateTextBox.Text = RequestList[5].ToString();
        //    Image.ImageUrl = RequestList[6].ToString();

        //    db.Request_View.Add(RequestList);
        //    db.SaveChanges();
        //}
    }
}