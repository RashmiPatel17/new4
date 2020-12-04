using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Collections.Specialized;


namespace khedutupdate
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserName = "";
            string Password = "";

            SqlCommand cmd = new SqlCommand("select email, password from registration where email=@email", con);
            cmd.Parameters.AddWithValue("@email", email.Text);
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                if (sdr.Read())
                {
                    UserName = sdr["email"].ToString();
                    Password = sdr["password"].ToString();

                }

            }
            con.Close();

            if (!string.IsNullOrEmpty(Password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("rashmi@student.aau.in");
                msg.To.Add(email.Text);
                msg.Subject = "  your Password";
                msg.Body = ("Your Password is:" + Password);
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "rashmi@student.aau.in";
                ntwd.Password = "8469510509";
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Label1.Text = "<b>Password sent successfully. Check your email</b>";
                Label1.ForeColor = System.Drawing.Color.DarkGreen;
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password sent successfully. Check your mail');window.location ='forgotpass.aspx';", true);


            }
            else
            {
                Label1.Text = "<b>Invalid EmailId</b>";
                Label1.ForeColor = System.Drawing.Color.DarkRed;
            }
        }
    }
}