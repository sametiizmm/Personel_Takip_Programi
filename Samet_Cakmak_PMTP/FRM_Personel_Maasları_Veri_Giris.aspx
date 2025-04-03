<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FRM_Personel_Maasları_Veri_Giris.aspx.cs" Inherits="Samet_Cakmak_PMTP.FRM_Personel_Maasları_Veri_Giris" %>
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
        .content .form-group input[type="text"],
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
        .auto-style1 {
            color: #00CC00;
        }
    </style>
    <div class="header">
        <h1><strong>Personel Maaşları Veri Giriş Formu</strong></h1>
    </div>
    <div class="content">
        <div class="form-group">
            <label for="DropDownList1">Pers Adı:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
        </div>
        <div class="form-group">
            <label for="TextBox1">Tarihi:</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="DropDownList2">Ay:</label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ay_Adi" DataValueField="K_ID" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [K_ID], [Ay_Adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
        </div>
        <div class="form-group">
            <label for="TextBox2">Maaş:</label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox3">Komisyon:</label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="Red" CssClass="auto-style1"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Verileri Kaydet" OnClick="Button1_Click" CssClass="btn" />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" InsertCommand="INSERT INTO tbl_Maaslar(Pers_ID, Maas_Tarihi, Maas_Tutari, Maas_Komisyonu, Ay_ID) VALUES (@Pers_ID, @Maas_Tarihi, @Maas_Tutari, @Maas_Komisyonu, @Ay_ID)" SelectCommand="SELECT [Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam], [Ay_ID], [Maas_Yili] FROM [tbl_Maaslar]">
                <InsertParameters>
                    <asp:Parameter Name="Pers_ID" />
                    <asp:Parameter Name="Maas_Tarihi" />
                    <asp:Parameter Name="Maas_Tutari" />
                    <asp:Parameter Name="Maas_Komisyonu" />
                    <asp:Parameter Name="Ay_ID" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" CssClass="btn" />
        </div>
    </div>
</asp:Content>




