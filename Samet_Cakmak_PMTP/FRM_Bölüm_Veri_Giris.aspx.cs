using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Samet_Cakmak_PMTP
{
    public partial class FRM_Bölüm_Veri_Güncelleme : System.Web.UI.Page
    {
        protected Panel PanelNewBolum;
        protected TextBox txtBolumAdi;
        protected TextBox txtBolumTel;
        protected DropDownList ddlMudur;
        protected GridView GridView1;
        protected Label lblMessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Gerekli başlatma işlemleri burada yapılabilir
                if (this.txtBolumAdi == null || this.txtBolumTel == null || this.ddlMudur == null || this.lblMessage == null)
                {
                    throw new InvalidOperationException("Gerekli kontroller yüklenemedi.");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PanelNewBolum.Visible = true;
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (this.txtBolumAdi == null || this.txtBolumTel == null || this.ddlMudur == null)
            {
                this.lblMessage.Text = "Lütfen tüm alanları doldurun.";
                this.lblMessage.ForeColor = System.Drawing.Color.Red;
                this.lblMessage.Visible = true;
                return;
            }

            string bolumAdi = this.txtBolumAdi.Text;
            string bolumTel = this.txtBolumTel.Text;
            int yoneticiId;

            if (int.TryParse(this.ddlMudur.SelectedValue, out yoneticiId))
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["db_Samet_CakmakConnectionString"].ConnectionString))
                    {
                        conn.Open();
                        string query = "INSERT INTO tbl_Bolumler (Bolum_Adi, Bolum_Tel, Yonetici_ID) VALUES (@Bolum_Adi, @Bolum_Tel, @Yonetici_ID)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Bolum_Adi", bolumAdi);
                            cmd.Parameters.AddWithValue("@Bolum_Tel", bolumTel);
                            cmd.Parameters.AddWithValue("@Yonetici_ID", yoneticiId);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    this.lblMessage.Text = "Veriler başarıyla kaydedildi.";
                    this.lblMessage.ForeColor = System.Drawing.Color.Green;
                    this.lblMessage.Visible = true;
                }
                catch (Exception ex)
                {
                    this.lblMessage.Text = "Veri kaydedilirken bir hata oluştu: " + ex.Message;
                    this.lblMessage.ForeColor = System.Drawing.Color.Red;
                    this.lblMessage.Visible = true;
                }
            }
            else
            {
                this.lblMessage.Text = "Geçersiz Müdür seçimi.";
                this.lblMessage.ForeColor = System.Drawing.Color.Red;
                this.lblMessage.Visible = true;
            }
        }

        protected void btnKapat_Click(object sender, EventArgs e)
        {
            PanelNewBolum.Visible = false;
        }
    }
}
