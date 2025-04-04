<%@ Page Title="Raporlar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Samet_Cakmak_PMTP.Reports" %>
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
        }
        .button-container {
            display: flex;
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
            margin: 4px 2px;
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
        <h1><strong>İnsan Kaynakları Yönetim Sistemi Raporlar</strong></h1>
    </div>
    <div class="button-container">
        <asp:Button ID="Button1" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/REP_Bölüme_Göre_Personel_Listesi.aspx" Text="Bölüme Göre Personel Listesi" />
        <asp:Button ID="Button2" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/REP_Personele Göre Maas_Listesi.aspx" Text="Personele Göre Maaş Listesi" />
    </div>
    <div class="button-container">
        <asp:Button ID="Button3" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/REP_Personele_Göre_Yıllık_Maas_Grafiği.aspx" Text="Personele Göre Yıllık Maaş Grafiği" />
        <asp:Button ID="Button4" runat="server" CssClass="button" OnClientClick="target='_blank'" PostBackUrl="~/PER_Personel_İletisim_Raporu.aspx" Text="Personel İletişim Raporu" />
    </div>
</asp:Content>

