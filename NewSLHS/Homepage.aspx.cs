using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NewSLHS.DAL;
using NewSLHS;

namespace SLHSClinic
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillStudentDropDownList();
            fillClientDropDownList();

            //AppointmentDetailsView.Visible = false;

            //Appointment Client Name
            string clientFirstName = AppointmentDetailsView.Rows[5].Cells[1].Text.ToString();
            string clientLastName = AppointmentDetailsView.Rows[6].Cells[1].Text.ToString();
            ClientNameLabel.Text = clientFirstName + " " + clientLastName;

           
            DropDownList1.SelectedValue = AppointmentDetailsView.Rows[1].Cells[1].Text.ToString();

        }

        protected void fillStudentDropDownList()
        {
            SLHSClinicEntities db = new SLHSClinicEntities();

            List<CustomListItem> fullNameList;

            fullNameList = db.Students.Select(x => new CustomListItem
            {
                ID = x.UserID,
                Text = x.FirstName + " " + x.MiddleName + " " + x.LastName
            }).ToList();


            StudentDropDownList.DataSource = fullNameList;
            StudentDropDownList.DataTextField = "Text";
            StudentDropDownList.DataValueField = "ID";
            StudentDropDownList.DataBind();
        }


        protected void fillClientDropDownList()
        {
            SLHSClinicEntities db = new SLHSClinicEntities();

            List<CustomListItem> clientNameList;

            clientNameList = db.Clients.Select(x => new CustomListItem
            {
                ID = x.ClientID,
                Text = x.FirstName + " " + x.MiddleName + " " + x.LastName
            }).ToList();


            ClientDropDownList.DataSource = clientNameList;
            ClientDropDownList.DataTextField = "Text";
            ClientDropDownList.DataValueField = "ID";
            ClientDropDownList.DataBind();
        }


    }
}