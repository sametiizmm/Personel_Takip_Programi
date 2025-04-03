<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FRM_Personel_Veri_Giriş.aspx.cs" Inherits="Samet_Cakmak_PMTP.FRM_Personel_Veri_Giriş" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #f0f0f0; /* Arka plan rengini değiştirin */
            font-family: Arial, sans-serif; /* Yazı tipini değiştirin */
            color: #333; /* Yazı rengini değiştirin */
        }
        .header {
            background-color: #1d3557;
            color: #fff;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .content {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: 0 auto;
        }
        .content h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .content .form-group {
            margin-bottom: 15px;
        }
        .content .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .content .form-row {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }
        .content .form-row .form-group {
            flex: 1;
            margin-right: 10px;
        }
        .content .form-row .form-group:last-child {
            margin-right: 0;
        }
        .content .form-group input[type="text"],
        .content .form-group input[type="date"],
        .content .form-group input[type="number"],
        .content .form-group input[type="email"],
        .content .form-group input[type="phone"],
        .content .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .content .form-group input[type="submit"],
        .content .form-group input[type="button"] {
            padding: 10px 20px;
            background-color: #1d3557;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .content .form-group input[type="submit"]:hover,
        .content .form-group input[type="button"]:hover {
            background-color: #457b9d;
        }
        .content .btn {
            padding: 10px 20px;
            background-color: #1d3557;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .content .btn:hover {
            background-color: #457b9d;
        }
        .content .form-group .checkbox-group,
        .content .form-group .radio-group {
            display: flex;
            align-items: center;
        }
        .content .form-group .checkbox-group label,
        .content .form-group .radio-group label {
            margin-left: 10px;
        }
    </style>
    <div class="header">
        <h1><strong>Personel Veri Giriş Formu</strong></h1>
    </div>
    <div class="content">
        <div class="form-row">
            <div class="form-group">
                <label for="TextBox1">Adı:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox5">Soyadı:</label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="TextBox13">Tc:</label>
                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox14">SGK No:</label>
                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="RadioButtonList1">Cinsiyeti:</label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="form-control">
                    <asp:ListItem Value="1">Erkek</asp:ListItem>
                    <asp:ListItem Value="2">Kadın</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="form-group">
                <label for="TextBox6">Doğum Tarihi:</label>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="DropDownList1">Ünvanı:</label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="True" DataTextField="Unvan" DataValueField="K_ID" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" ProviderName="<%$ ConnectionStrings:db_Samet_CakmakConnectionString.ProviderName %>" SelectCommand="SELECT [K_ID], [Unvan] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                <label for="DropDownList3">Bölümü:</label>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="TextBox2">İşe Giriş Tarihi:</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox9">İşten Çıkış Tarihi:</label>
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="TextBox3">Cep Tel:</label>
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" TextMode="Phone" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox7">İş Tel:</label>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Phone" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="TextBox4">Adresi:</label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox8">E-Mail:</label>
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="DropDownList2">İlçesi:</label>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Ilce_Adi" DataValueField="Ilce_Adi" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Ilce_Adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                <label for="DropDownList4">İli:</label>
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="Il_Adi" DataValueField="Il_Adi" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" OnSelecting="SqlDataSource4_Selecting" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Il_Adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="TextBox10">İl Kodu:</label>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox11">Personel Maaşı:</label>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label for="DropDownList5">Kaydeden:</label>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource6" DataTextField="Kullanici_Adi" DataValueField="Kullanici_Adi" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Kullanici_Adi] FROM [tbl_Kullanicilar]"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                <label for="TextBox12">Personel Komisyonu:</label>
                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group checkbox-group">
            <label for="CheckBox1">Aktif Mi?</label>
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-control"></asp:CheckBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Verileri Kaydet" OnClick="Button1_Click" CssClass="btn" />
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Cikis_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Il_Kodu, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID, Pers_Maas, Pers_Komisyon_Yuzdesi, Pers_SGK_NO, Pers_TC_NO, Pers_Aktif_Mi, Kaydeden) VALUES (@Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Pers_Giris_Tarihi, @Pers_Cikis_Tarihi, @Pers_Adresi, @Pers_Ilcesi, @Pers_Ili, @Pers_Il_Kodu, @Pers_Tel, @Pers_Cep, @Pers_Email, @Bolum_ID, @Cinsiyet_ID, @Unvan_ID, @Pers_Maas, @Pers_Komisyon_Yuzdesi, @Pers_SGK_NO, @Pers_TC_NO, @Pers_Aktif_Mi, @Kaydeden)" SelectCommand="SELECT Pers_ID, Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Cikis_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Il_Kodu, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID, Pers_Maas, Pers_Komisyon_Yuzdesi, Pers_SGK_NO, Pers_TC_NO, Kaydeden, Pers_Aktif_Mi FROM tbl_Personeller">
                <InsertParameters>
                    <asp:Parameter Name="Pers_Adi" />
                    <asp:Parameter Name="Pers_Soyadi" />
                    <asp:Parameter Name="Pers_DTarihi" />
                    <asp:Parameter Name="Pers_Giris_Tarihi" />
                    <asp:Parameter Name="Pers_Cikis_Tarihi" />
                    <asp:Parameter Name="Pers_Adresi" />
                    <asp:Parameter Name="Pers_Ilcesi" />
                    <asp:Parameter Name="Pers_Ili" />
                    <asp:Parameter Name="Pers_Il_Kodu" />
                    <asp:Parameter Name="Pers_Tel" />
                    <asp:Parameter Name="Pers_Cep" />
                    <asp:Parameter Name="Pers_Email" />
                    <asp:Parameter Name="Bolum_ID" />
                    <asp:Parameter Name="Cinsiyet_ID" />
                    <asp:Parameter Name="Unvan_ID" />
                    <asp:Parameter Name="Pers_Maas" />
                    <asp:Parameter Name="Pers_Komisyon_Yuzdesi" />
                    <asp:Parameter Name="Pers_SGK_NO" />
                    <asp:Parameter Name="Pers_TC_NO" />
                    <asp:Parameter Name="Pers_Aktif_Mi" />
                    <asp:Parameter Name="Kaydeden" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" CssClass="btn" />
        </div>
    </div>
</asp:Content>
