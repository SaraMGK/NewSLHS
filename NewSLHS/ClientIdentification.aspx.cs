using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSLHS
{
    public partial class ClientIdentification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Hide_Buttons(object sender, EventArgs e)
        {
            ButtonsDiv.Visible = !ButtonsDiv.Visible;

        }
    }
}