using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Samet_Cakmak_PMTP
{
    public partial class FRM_Personel_Veri_Giriş : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource5.InsertParameters["Pers_Adi"].DefaultValue = TextBox1.Text;
            SqlDataSource5.InsertParameters["Pers_Soyadi"].DefaultValue = TextBox5.Text;
            SqlDataSource5.InsertParameters["Pers_TC_NO"].DefaultValue = TextBox13.Text;
            SqlDataSource5.InsertParameters["Pers_SGK_NO"].DefaultValue = TextBox14.Text;
            SqlDataSource5.InsertParameters["Cinsiyet_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource5.InsertParameters["Pers_DTarihi"].DefaultValue = TextBox6.Text;
            SqlDataSource5.InsertParameters["Unvan_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource5.InsertParameters["Bolum_ID"].DefaultValue= DropDownList3.SelectedValue;
            SqlDataSource5.InsertParameters["Pers_Giris_Tarihi"].DefaultValue = TextBox2.Text;
            SqlDataSource5.InsertParameters["Pers_Cikis_Tarihi"].DefaultValue = TextBox9.Text;
            SqlDataSource5.InsertParameters["Pers_Tel"].DefaultValue = TextBox7.Text;
            SqlDataSource5.InsertParameters["Pers_Cep"].DefaultValue= TextBox3.Text;
            SqlDataSource5.InsertParameters["Pers_Email"].DefaultValue = TextBox8.Text;
            SqlDataSource5.InsertParameters["Pers_Adresi"].DefaultValue = TextBox4.Text;
            SqlDataSource5.InsertParameters["Pers_Ilcesi"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource5.InsertParameters["Pers_Ili"].DefaultValue = DropDownList4.SelectedValue;
            SqlDataSource5.InsertParameters["Pers_Il_Kodu"].DefaultValue = TextBox10.Text;
            SqlDataSource5.InsertParameters["Pers_Maas"].DefaultValue = TextBox11.Text;
            SqlDataSource5.InsertParameters["Kaydeden"].DefaultValue = DropDownList5.SelectedValue;
            SqlDataSource5.InsertParameters["Pers_Komisyon_Yuzdesi"].DefaultValue = TextBox12.Text;
            bool d = false;
            if (CheckBox1.Checked == true)
            {
                d = true;
            }
            SqlDataSource5.InsertParameters["Pers_Aktif_Mi"].DefaultValue = d.ToString();
            int s = SqlDataSource5.Insert();
            if (s > 0)
            {
                Label1.Text = "Yeni Personel verisi: <b>" + TextBox1.Text + "</b><p>Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
            Label1.Visible = true;
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}