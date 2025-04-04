<%@ Page Title="Formlar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="Samet_Cakmak_PMTP.Forms" %>
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
        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px 0;
        }
        .button-container .button {
            background-color: #457b9d;
            color: #fff;
            border: none;
            padding: 15px 30px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px; /* Yazı boyutunu küçültün */
            margin: 10px;
            cursor: pointer;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            width: 300px; /* Buton genişliğini artırın */
            height: 70px; /* Buton yüksekliğini artırın */
        }
        .button-container .button:hover {
            background-color: #1d3557;
        }
    </style>
    <div class="header">
        <h1><strong>İnsan Kaynakları Yönetim Sistemi Formlar</strong></h1>
    </div>
    <div class="button-container">
        <asp:Button ID="Button1" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/FRM_Personel_Veri_Giriş.aspx" Text="Personel Veri Giriş Formu" />
        <asp:Button ID="Button2" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/FRM_Personel_Maasları_Veri_Giris.aspx" Text="Personel Maaşları Veri Giriş" />
    </div>
    <div class="button-container">
        <asp:Button ID="Button3" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/FRM_Personel_Veri_Güncelleme.aspx" Text="Personel Veri Güncelleme" />
        <asp:Button ID="Button4" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/FRM_Maas_Veri_Güncelleme.aspx" Text="Maaş Veri Güncelleme Formu" />
    </div>
    <div class="button-container">
        <asp:Button ID="Button5" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/FRM_Personel_Wizard.aspx" Text="Personel Wizard Formu" />
        <asp:Button ID="Button6" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/FRM_Bölüm_Veri_Giris.aspx" Text="Bölüm Veri Giriş Formu" />
    </div>
</asp:Content>
