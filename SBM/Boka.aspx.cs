 using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBM
{
    public partial class Boka : System.Web.UI.Page
    {

        DatabaseConnection c = new DatabaseConnection();
        public string con = ConfigurationManager.ConnectionStrings["Dbconnections"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //  if (fname1.Text == "" && field_lastname1.Text == "" && Bilregnr1.Text == "" && field_personnummer1.Text == "" && field_epostadress1.Text == "" && field_mobilephone1.Text == "" && gata_adress1.Text == "" && field_postnummer1.Text == "" && field_postort1.Text == "" && fieldtime1.Text == "" && fielddate1.Text == "")
            //  {
            //      // ScriptManager.RegisterStartupScript(this, typeof(Page), "ss", "EmptyFields();", true);
            //      Response.Write("<script>alert('Var vänlig och fyll i alla fälten!')</script>");
            //      return;
            //  }
            //  else
            //  {
            //      using (SqlConnection sqlConnection = new SqlConnection(con))
            //      {
            //          sqlConnection.Open();
            //           SqlCommand sqlCmd = new SqlCommand("insert into Boknings" + "(Fname,Lname,Regnr,Pnr,Epost,Mobilenr,Gatan,Postnr,Ort,Tid,Datum) values (@Fname,@Lname,@Regnr,@Pnr,@Epost,@Mobilenr,@Gatan,@Postnr,@Ort,@Tid,@Datum)", sqlConnection);
            //          sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(hfId.Value == "" ? "0" : hfId.Value));
            //          sqlCmd.Parameters.AddWithValue("@Fname", fname1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Lname", field_lastname1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Regnr", Bilregnr1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Pnr", field_personnummer1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Epost", field_epostadress1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Mobilenr", field_mobilephone1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Gatan", gata_adress1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Postnr", field_postnummer1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Ort", field_postort1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Tid", fieldtime1.Text.Trim());
            //          sqlCmd.Parameters.AddWithValue("@Datum", fielddate1.Text.Trim());
            //          sqlCmd.ExecuteNonQuery();
            //          Response.Redirect("Done.aspx");
            //          Clear();
            //          sqlConnection.Close();
            //      }
            //  }

             string _fname = fname2.Value.Trim();
            string _lastname = field_lastname2.Value.Trim();
            string _regnr = Bilregnr2.Value;
            string _personnr = field_personnummer2.Value.ToString();
            string _epost = field_epostadress2.Value;
            string _mobilenr = field_mobilephone2.Value.ToString();
            string _gataddress = gata_adress2.Value;
            string _Postnr = field_postnummer2.Value.ToString();
            string _ort = field_postort2.Value;
            string _tid = fieldtime2.Value;
            string _Datum = fielddate2.Value;


            using (SqlConnection sqlConnection = new SqlConnection(c.con))
            {
                sqlConnection.Open();
                string query = "insert into Boknings values (@Fname,@Lname,@Regnr,@Pnr,@Epost,@Mobilenr,@Gatan,@Postnr,@Ort,@Tid,@Datum)";
                using (SqlCommand sqlCmd =  new SqlCommand(query,sqlConnection))
               {
                     sqlCmd.Parameters.AddWithValue("@Fname", _fname);
                    sqlCmd.Parameters.AddWithValue("@Lname", _lastname);
                    sqlCmd.Parameters.AddWithValue("@Regnr", _regnr);
                    sqlCmd.Parameters.AddWithValue("@Pnr", _personnr);
                    sqlCmd.Parameters.AddWithValue("@Epost", _epost);
                    sqlCmd.Parameters.AddWithValue("@Mobilenr", _mobilenr);
                    sqlCmd.Parameters.AddWithValue("@Gatan", _gataddress);
                    sqlCmd.Parameters.AddWithValue("@Postnr", _Postnr);
                    sqlCmd.Parameters.AddWithValue("@Ort", _ort);
                    sqlCmd.Parameters.AddWithValue("@Tid", _tid);
                    sqlCmd.Parameters.AddWithValue("@Datum", _Datum);
                     sqlCmd.ExecuteNonQuery();
                    sqlConnection.Close();
                    Response.Redirect("Done.aspx");

                }
             }
        }

       void Clear()
        {
            fname2.Value = field_lastname2.Value = Bilregnr2.Value = field_personnummer2.Value =
            field_epostadress2.Value = field_mobilephone2.Value = gata_adress2.Value = field_postnummer2.Value = field_postort2.Value = fielddate2.Value = fielddate2.Value = policy.Value = "";
            hfId.Value = "";
        }
    }
}