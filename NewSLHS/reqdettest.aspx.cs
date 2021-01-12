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
    public partial class reqdettest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //FillRequest();

        }

        //protected void FillRequest()
        //{
        //    SLHSClinicEntities db = new SLHSClinicEntities();

        //    List<RequestListItem> RequestList;

        //    RequestList = db.Request_View.Where(x => x.ResourceRequestID == ResourceRequestID).Select(x => new RequestListItem
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

        //}
    }
}