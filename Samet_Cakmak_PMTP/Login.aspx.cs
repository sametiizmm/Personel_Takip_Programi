using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;

namespace Samet_Cakmak_PMTP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Comment out this redirect to avoid looping
            // if (Request.IsAuthenticated)
            // {
            //     // Zaten giriş yapmış kullanıcıyı ana sayfaya yönlendir
            //     Response.Redirect("~/Default.aspx", false);
            //     Context.ApplicationInstance.CompleteRequest();
            //     return;
            // }

            if (!IsPostBack)
            {
                HttpCookie authCookie = Request.Cookies["UserAuth"];
                if (authCookie != null)
                {
                    txtUsername.Text = authCookie["Username"];
                    chkRememberMe.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (ValidateUser(username, password))
            {
                FormsAuthentication.SetAuthCookie(username, chkRememberMe.Checked);
                string returnUrl = Request.QueryString["ReturnUrl"];
                if (!string.IsNullOrEmpty(returnUrl))
                {
                    Response.Redirect(returnUrl);
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
            else
            {
                lblError.Text = "Geçersiz kullanıcı adı veya şifre!";
                lblError.Visible = true;
            }
        }

        private bool ValidateUser(string username, string password)
        {
            bool isValid = false;
            string connectionString = System.Configuration.ConfigurationManager
                .ConnectionStrings["db_Samet_CakmakConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"SELECT COUNT(1) FROM tbl_Kullanicilar 
                                WHERE Kullanici_Adi = @username 
                                AND Kullanici_Sifre = @password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    try
                    {
                        conn.Open();
                        int count = (int)cmd.ExecuteScalar();
                        isValid = (count > 0);
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = "Giriş işlemi sırasında bir hata oluştu.";
                        lblError.Visible = true;
                    }
                }
            }
            return isValid;
        }
    }
}