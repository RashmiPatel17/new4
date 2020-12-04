using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;


namespace khedutupdate
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {


                var pn1 = cropname.Text;
                SqlConnection db2 = new SqlConnection();
                db2.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                //try
                //{
                SqlCommand cmd3 = new SqlCommand("select * from crop where cropname=@cropname", db2);
                cmd3.Parameters.AddWithValue("@cropname", cropname.Text.Trim());
                //cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                //cmd1.Parameters.AddWithValue("@F_name", Textfn.Text.Trim());
                cmd3.CommandType = System.Data.CommandType.Text;
                cmd3.Connection = db2;
                db2.Open();
                SqlDataReader drrr = cmd3.ExecuteReader();
                if (drrr.HasRows)
                {
                    //Response.Redirect("managehouse.aspx");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('pleas check your contact number!!');window.location='addcrop.aspx';", true);

                }

                else
                {


                    drrr.Close();

                    //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["rashmi"].ToString());

                    SqlCommand cmd1 = new SqlCommand("insert into crop(cropname) values(@cropname)");
                    con.Open();
                    cmd1.Connection = con;
                    cmd1.CommandType = CommandType.Text;

                    cmd1.Parameters.AddWithValue("@cropname", cropname.Text.Trim().ToString());
                   
                    int row;
                    try
                    {

                        row = cmd1.ExecuteNonQuery();
                        if (row > 0)
                        {
                            // lbltxt.Text = "<b>data sucess fully enter</b>";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Crop Successfully Add');window.location ='addcrop.aspx';", true);

                            //Response.Write("data sucess fully enter");
                            // Response.Redirect("login.aspx");
                        }
                        else
                        {
                            l2.Text = "<b>data sucess fully enter</b>";
                            l2.ForeColor = System.Drawing.Color.DarkSlateBlue;
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
    }
  
}