<%@ Page Title="İletişim" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Samet_Cakmak_PMTP.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
        }
        .content h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .content p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .content ul {
            list-style-type: none;
            padding: 0;
        }
        .content ul li {
            font-size: 16px;
            margin-bottom: 10px;
        }
        .content ul li a {
            color: #1d3557;
            text-decoration: none;
        }
        .content ul li a:hover {
            text-decoration: underline;
        }
    </style>
    <div class="header">
        <h1><strong>Bize Ulaşın</strong></h1>
    </div>
    <div class="content">
        <p>Soru ve önerileriniz için bizimle iletişime geçmekten çekinmeyin:</p>
        <ul>
            <li><strong>E-posta:</strong> <a href="mailto:samet@sametcakmak.com">samet@sametcakmak.com</a></li>
            <li><strong>Web Sitesi:</strong> <a href="https://sametcakmak.com" rel="noopener" target="_new">www.sametcakmak.com</a></li>
        </ul>
    </div>
</asp:Content>

