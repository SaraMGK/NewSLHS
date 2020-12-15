using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NewSLHS.DAL;
using NewSLHS;

namespace NewSLHS
{
    public partial class ClientsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientDetailsView.Visible = false;

            //Client Name Label
            string clientFirstName = ClientDetailsView.Rows[0].Cells[1].Text.ToString();
            string clientLastName = ClientDetailsView.Rows[2].Cells[1].Text.ToString();
            ClientNameLabel.Text = clientFirstName + " " + clientLastName;

            //Email
            EmailLabel.Text = ClientDetailsView.Rows[3].Cells[1].Text.ToString();

            //Mobile
            MobileLable.Text = ClientDetailsView.Rows[4].Cells[1].Text.ToString();

            //File Number
            FileNoLabel.Text = ClientDetailsView.Rows[5].Cells[1].Text.ToString();

            //Date of Birth
            BirthDateLabel.Text = ClientDetailsView.Rows[6].Cells[1].Text.ToString();

            //Student Label
            string studentFirstName = ClientDetailsView.Rows[7].Cells[1].Text.ToString();
            string studentLastName = ClientDetailsView.Rows[8].Cells[1].Text.ToString();
            StudentNameLabel.Text = studentFirstName + " " + studentLastName;


        }


    }
}