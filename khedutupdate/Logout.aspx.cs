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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        //C:\EXTRASEM\EXTRASEM\APP_DATA\DATABASE1.MDF
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
                    Session.Contents.RemoveAll();
                    Session.RemoveAll();
                    Session.Clear();
                    Session.Abandon();
                    Session["UserName"] = "";
                    Response.Write("Logout successfully");
                    Response.Redirect("home.aspx");

               
            
           
            // SqlDataReader dr = cmd.ExecuteReader();
            //SqlDataReader dr = null;
            //dr = cmd.ExecuteReader();

            //if (dr.HasRows)
            //{
            //    Session.Contents.RemoveAll();
            //    Session.RemoveAll();
            //    Session.Clear();
            //    Session.Abandon();
            //    Session["UserName"] = "";
            //    Response.Write("Logout successfully");

            //}
            //else

            //{ 
            //       Response.Redirect("home.aspx");
            //}
            //con.Close();

            //SqlCommand cmd1 = new SqlCommand("insert into logindetail(f_id,logouttime) values(@f_id,@logouttime)");
            //con.Open();
            //cmd1.Connection = con;
            //cmd1.CommandType = CommandType.Text;

            //cmd1.Parameters.AddWithValue("@f_id", f_id.Text.Trim().ToString());
            //cmd1.Parameters.AddWithValue("@logouttime", DateTime.Now);
            //con.Close();


        }
        //private void Logout(object sender, EventArgs e)
        //{
        //    SqlCommand cmd1 = new SqlCommand("insert into logindetail(f_id,logouttime) values(@f_id,@logouttime)");
        //    con.Open();
        //    cmd1.Connection = con;
        //    cmd1.CommandType = CommandType.Text;

        //    cmd1.Parameters.AddWithValue("@f_id", f_id.Text.Trim().ToString());
        //    cmd1.Parameters.AddWithValue("@logouttime", DateTime.Now);
        //    con.Close();
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd1 = new SqlCommand("insert into logindetail(f_id,logouttime) values(@f_id,@logouttime)");
            //con.Open();
            //cmd1.Connection = con;
            //cmd1.CommandType = CommandType.Text;

            //cmd1.Parameters.AddWithValue("@f_id", f_id.Text.Trim().ToString());
            //cmd1.Parameters.AddWithValue("@logouttime", DateTime.Now);
            //con.Close();

        }
    }
}