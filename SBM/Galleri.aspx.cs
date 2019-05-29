using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBM
{
    public partial class Galleri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var a = Session["User"];
            Panel2.Visible = false;
            if (Session["User"] != null)
            {
                Panel1.Visible = false;
                wlc.Text = "Välkommen tillbacka" + Session["User"];
                dash.Visible = true;

            }
            else
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }
    }
}