using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBM
{
    public partial class Boka : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DONEBOKNING.ServerClick += DONEBOKNING_ServerClick;
        }

        private void DONEBOKNING_ServerClick(object sender, EventArgs e)
        {
            if (fname.Value == "" || field_lastname.Value == "" || Bilregnr.Value == "" || field_personnummer.Value == ""|| field_epostadress.Value == ""|| field_mobilephone.Value == ""|| gata_adress.Value == ""|| field_postnummer.Value == ""|| field_postort.Value == ""|| fieldtime.Value == ""|| fielddate.Value == "" || policy.Value == "")
            {
                Response.Write("<script>alert('Du har skrivit fel Information!')</script>");
            }
            else
            {

            }
        }
    }
}