using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace BaggagePinger
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from userCredentials where Username='" + txtuser.Text + "' and Password ='" + txtpass.Text + "' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    //Response.Write("alert('successful in login')"); //write Script tag before writing alert and close script tag as shown in below
                    // Server.Transfer("~/WebForm2.aspx");
                    Response.Redirect("Webform2.aspx?Name=" + txtuser.Text);
                }
                else
                {
                    Response.Write("alert('error in login')"); //write Script tag before writing alert and close script tag
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}