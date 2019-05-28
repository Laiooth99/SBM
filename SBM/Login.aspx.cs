using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBM
{
    public partial class Login : System.Web.UI.Page
    {

         
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["User"] = Username.Value;
        }

        

        protected void _login_ServerClick(object sender, EventArgs e)
        {
            if (Username.Value == "Laith" && Password.Value == "Laith@930@132")
            {
                Session["User"] = Username.Value;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Write("<script>alert('Du har skrivit fel Information!')</script>");
                Username.Value = "";
                Password.Value = "";
            }
        }
    }
}