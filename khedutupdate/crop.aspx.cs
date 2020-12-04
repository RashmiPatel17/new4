using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace khedutupdate
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
       // SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("insert into cropuser(c_id,f_id) values(@c_id,@f_id)");
            con.Open();
            cmd1.Connection = con;
            cmd1.CommandType = CommandType.Text;

            cmd1.Parameters.AddWithValue("@c_id", c_id.Text.Trim().ToString());
            cmd1.Parameters.AddWithValue("@f_id", f_id.Text.Trim().ToString());

            int row;
            try
            {

                row = cmd1.ExecuteNonQuery();
                if (row > 0)
                {
                    // lbltxt.Text = "<b>data sucess fully enter</b>";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Crop Successfully Add');window.location ='crop.aspx';", true);

                    //Response.Write("data sucess fully enter");
                    // Response.Redirect("login.aspx");
                }
                else
                {
                    l1.Text = "<b>data sucess fully enter</b>";
                    l1.ForeColor = System.Drawing.Color.DarkSlateBlue;
                }


                //else
                //{
                //    Response.Write("data not insert");
                //}
            }

            catch (Exception)
            {
                throw;

            }
            finally

            {

                if (con.State == ConnectionState.Open)
                    con.Close();
            }


        }


    }
}