using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samet_Cakmak_PMTP
{
    public partial class FRM_Personel_Maasları_Veri_Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["Pers_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource3.InsertParameters["Maas_Tarihi"].DefaultValue = TextBox1.Text;
            SqlDataSource3.InsertParameters["Ay_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource3.InsertParameters["Maas_Tutari"].DefaultValue = TextBox2.Text;
            SqlDataSource3.InsertParameters["Maas_Komisyonu"].DefaultValue= TextBox3.Text;

            int s = SqlDataSource3.Insert();
            if (s > 0)
            {
                Label1.Text = "Yeni Personel Maaş Verisi Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Maaş Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label1.Visible = true;
        }
    }
}
