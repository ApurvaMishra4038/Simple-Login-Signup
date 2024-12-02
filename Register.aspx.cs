using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOGINSTART
{
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Account Created')</script>");
            //Response.Redirect("Login.aspx");
            
            SqlConnection conn = new SqlConnection(cs);
            string query = "insert into CandidateDetails values (@FirstName,@LastName,@Email,@PhoneNumber,@Address,@Username,@Password) ";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@FirstName", FirstNameTextbox.Text);
            cmd.Parameters.AddWithValue("@LastName", LastNameTextbox.Text);
            cmd.Parameters.AddWithValue("@email",EmailTextbox.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneTextbox.Text);
            cmd.Parameters.AddWithValue("@Address", AddressTextbox.Text);
            cmd.Parameters.AddWithValue("@Username",UsernameTextbox.Text);
            cmd.Parameters.AddWithValue("@Password",ConfirmPasswordTextbox.Text);
            conn.Open();
            //cmd.ExecuteNonQuery();
            int Isnerted = cmd.ExecuteNonQuery();
            if (Isnerted > 0) {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Account Created')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('SignUp unSucessfull')</script>");
            }
            conn.Close();
        }
    }
}