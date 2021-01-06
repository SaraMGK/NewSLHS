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

            AppointmentDetailsView.Visible = false;

            ////Appointment Client Name
            //string clientFirstName = AppointmentDetailsView.Rows[6].Cells[1].Text.ToString();
            ////string clientMiddleName = AppointmentDetailsView.Rows[7].Cells[1].Text.ToString();
            //string clientLastName = AppointmentDetailsView.Rows[8].Cells[1].Text.ToString();
            //ClientNameLabel.Text = clientFirstName + " " + clientLastName;

            ////Student full Name
            ////string studentFirstName = AppointmentDetailsView.Rows[1].Cells[1].Text.ToString();
            ////string studentMiddleName = AppointmentDetailsView.Rows[2].Cells[1].Text.ToString();
            ////string studentLastName = AppointmentDetailsView.Rows[3].Cells[1].Text.ToString();
            ////StudentDropDownList.Text = studentFirstName + " " + studentLastName;

            ////Appiontment Type
            //TypeDropDownList.SelectedValue = AppointmentDetailsView.Rows[0].Cells[1].Text.ToString();

            ////Appointment Room
            //DropDownList1.SelectedValue = AppointmentDetailsView.Rows[1].Cells[1].Text.ToString();

            ////Appointment Status
            //StatusDropDownList.SelectedValue = AppointmentDetailsView.Rows[2].Cells[1].Text.ToString();

            //////Student Name
            //StudentDropDownList.SelectedValue = AppointmentDetailsView.Rows[13].Cells[1].Text.ToString();
            ////AppointmentDetailsView.Rows[3].Cells[1].Text.ToString() + " " + AppointmentDetailsView.Rows[4].Cells[1].Text.ToString() + " " + AppointmentDetailsView.Rows[5].Cells[1].Text.ToString();

            ////Client Name
            //ClientDropDownList.SelectedValue = AppointmentDetailsView.Rows[14].Cells[1].Text.ToString();

            ////Start Time
            ////EndTime. = AppointmentDetailsView.Rows[10].Cells[1].Text.ToString();

            ////Repeat
            //RepeatDropDownList.SelectedValue = AppointmentDetailsView.Rows[11].Cells[1].Text.ToString();

            ////Note
            //NoteTextBox.Text = AppointmentDetailsView.Rows[12].Cells[1].Text.ToString();
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