using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBM
{
    public partial class Admin1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                LoggedinAdmin.Text = Session["User"].ToString();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("index.aspx");
        }
    }
}