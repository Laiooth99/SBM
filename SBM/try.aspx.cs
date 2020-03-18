using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SBM
{
    public partial class _try : System.Web.UI.Page
    {
        DatabaseConnection c = new DatabaseConnection();
        bool Nameexist = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Done_Click(object sender, EventArgs e)
        {

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

            if (fname2.Value == "" && field_lastname2.Value == "" && Bilregnr2.Value == "" && field_personnummer2.Value == "" && field_epostadress2.Value == "" && field_mobilephone2.Value == "" && gata_adress2.Value == "" && field_postnummer2.Value == "" && field_postort2.Value == "" && fieldtime2.Value == "" && fielddate2.Value == "")
            {
                Response.Write("<script>alert('Var vänlig och fyll i alla fälten!')</script>");
                return;

            }

            SqlConnection sql = new SqlConnection(c.con);
            sql.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [Boknings]";
            cmd.Connection = sql;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                if (reader[1].ToString() == _fname)
                {


                    Nameexist = true;
                    break;
                }

            }
            if (Nameexist == true)
            {
                errorlabel.Visible = true;
                errorlabel.ForeColor = System.Drawing.Color.Red;
                errorlabel.Text = "Det finns redan en bokat tid med samma angivet namn!";
                //  Response.Write("<script>alert('Det finns redan en bokat tid med samma angivet namn!')</script>");
               // Clear();
                return;


            }
            else
            {
                using (SqlConnection sqlConnection = new SqlConnection(c.con))
                {

                    string query = "insert into Boknings values (@Fname,@Lname,@Regnr,@Pnr,@Epost,@Mobilenr,@Gatan,@Postnr,@Ort,@Tid,@Datum)";
                    using (SqlCommand sqlCmd = new SqlCommand(query, sqlConnection))
                    {
                        sqlConnection.Open();
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


                    }
                }
            }
           // Clear();
            Response.Redirect("Done.aspx");
        }
    }
}