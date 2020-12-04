using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace khedutupdate
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                home.Visible = false;
                //pro.Visible = false;
                //product1.Visible = false;
                //e1.Visible = false;
                contact.Visible = false;
                reg.Visible = false;
                login.Visible = false;
                home2.Visible = true;
                profile.Visible = true;
                Label1.Visible = true;
                edit_Khedut.Visible = false;
                changepass.Visible = true;
                //me1.Visible = true;
                //Label2.Visible = true;
                //Label3.Visible = true;
                //vid.Visible = true;
                //img.Visible = true;
                sms.Visible = true;
                crop.Visible = true;
                crop1.Visible = false;
                //home1.Visible = true;
                //lnk1.Visible = true;
                //lnk1.Visible = true;
                //lnk2.Visible = true;
                logout.Visible = true;
                regdetails.Visible = true;
                //status.Visible = true;
                //report.Visible = true;
                //order.Visible = true;
            }
            if (Session["user"] != null)
            {


                login.Visible = false;
                profile.Visible = true;
                Label1.Visible = true;
                edit_Khedut.Visible = true;
                changepass.Visible = true;
                logout.Visible = true;
                reg.Visible = false;
               // me1.Visible = false;
                //Label2.Visible = false;
                //Label3.Visible = true;
                //vid.Visible = true;
                //img.Visible = true;
                sms.Visible = false;
                crop.Visible = false;
                crop1.Visible = true;
                //u_n.Visible = true;
                //product1.Visible = false;
                // e1.Visible = true;
                //pro.Visible = true;
                regdetails.Visible = false;
                //status.Visible = false;
                //report.Visible = false;
                //order.Visible = false;

                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from registration where email='" + Session["user"].ToString() + "' ";
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Label1.Text = "સ્વાગત છે" + "\n" + dr["fullname"].ToString().Trim();

                    }
                }
                dr.Close();
                con.Close();




            }
            if (Session["home"] != null)
            {
                //e1.Visible = false;
                //product1.Visible = true;
                //pro.Visible = false;



            }


        }
    }
}