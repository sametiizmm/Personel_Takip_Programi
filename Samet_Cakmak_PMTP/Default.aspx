<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Samet_Cakmak_PMTP.Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
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
            text-align: center;
        }
        .content h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .content p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .content img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 20px;
        }
    </style>
    <div class="header">
        <h1><strong>İnsan Kaynakları Yönetim Sistemi (İKYS)</strong></h1>
    </div>
    <div class="content">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/İmages/Adsız tasarım.jpg" CssClass="img-fluid" Width="1150px" Height="500px" />
        <p><strong style="color: rgb(255, 51, 0); font-family: 'Times New Roman'; font-size: large;">İnternet Tabanlı Programlama ASP.NET Projesi</strong></p>
    </div>
</asp:Content>


