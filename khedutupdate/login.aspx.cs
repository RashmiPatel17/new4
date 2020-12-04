using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace khedutupdate
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        //C:\EXTRASEM\EXTRASEM\APP_DATA\DATABASE1.MDF
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "select Id from admin where email=@email and password=@password";
                cmd.Parameters.AddWithValue("@email", email.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim().ToString());
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    Session["admin"] = email.Text.Trim().ToString();

                    Response.Redirect("admin.aspx");

                    con.Close();
                }

                //{
                //    Session["user"] = email.Text.Trim().ToString();

                //    Response.Redirect("home.aspx");

                //    con.Close();

                //}

                else
                {
                    con.Close();
                    SqlCommand cmd1 = new SqlCommand("insert into logindetail(f_id,logintime) values(@f_id,@logintime)");
                    con.Open();
                    cmd1.Connection = con;
                    cmd1.CommandType = CommandType.Text;

                    cmd1.Parameters.AddWithValue("@f_id", f_id.Text.Trim().ToString());
                    cmd1.Parameters.AddWithValue("@logintime", DateTime.Now);
                //cmd1.Parameters.AddWithValue("@logouttime", DateTime.Now);
                //    SqlDataReader dr1 = cmd1.ExecuteReader();
                //    if(dr1.HasRows)
                //   {
                //    Session["user"] = email.Text.Trim().ToString();

                //    Response.Redirect("home.aspx");

                //    con.Close();

                //   }
                //  else
                //    {
                //    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                //    con.Close();
                //}
                int row;
                try
                {

                    row = cmd1.ExecuteNonQuery();
                    if (row > 0)
                    {
                        Session["user"] = email.Text.Trim().ToString();

                        Response.Redirect("home.aspx");

                        //  con.Close();

                    }
                    else
                    {
                        //   ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Email id and password are wrong!.'); window.location = '" + Page.ResolveUrl("~/login.aspx") + "';", true);
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your request has reached Adamin');window.location ='home.aspx';", true);
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Email Id')</script>");
                        //   ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                        //con.Close();
                    }


                }

                catch (Exception exp)
                {
                    // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                    throw;
                    //Response.Write(Invalid );
                }
                finally

                {

                    if (con.State == ConnectionState.Open)
                        con.Close();
                }


                // con.Close();
                //    var qry = "insert into logindetail(f_id,logintime,logouttime)values(@f_id,@logintime,@logouttime)";
                //    // cmd1.Connection = con;

                //    con.Open();

                //    using (SqlCommand cmd1 = new SqlCommand(qry, con))
                //    {
                //        cmd1.Parameters.AddWithValue("@f_id", f_id.Text.Trim().ToString());
                //        //cmd1.Parameters.AddWithValue("@f_id", f_id.Text);
                //        cmd1.Parameters.AddWithValue("@logintime", DateTime.Now);
                //        cmd1.Parameters.AddWithValue("@logouttime", DateTime.Now);
                //        SqlDataReader dr1 = cmd1.ExecuteReader();

                //        if (dr1.HasRows)
                //        {
                //            Session["user"] = email.Text.Trim().ToString();
                //            // Session["user"] = email.Text;
                //            Response.Redirect("home.aspx");
                //            con.Close();
                //        }

                //        else
                //        {

                //            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                //        }
                //        //con.Close();
                //    }

                //    // con.Close();


                }
        }
    }
}




