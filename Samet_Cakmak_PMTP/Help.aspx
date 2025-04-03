<%@ Page Title="Yardım Sayfası" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="Samet_Cakmak_PMTP._Default" %>

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
            max-width: 1000px;
            margin: 0 auto;
        }
        .content h1, .content h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .content p {
            font-size: 16px;
            margin-bottom: 20px;
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
    </style>
    <div class="header">
        <h1><strong>Yardım Sayfası</strong></h1>
    </div>
    <div class="content">
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET, HTML, CSS ve JavaScript kullanarak harika Web siteleri ve Web uygulamaları oluşturmak için ücretsiz bir web çerçevesidir.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Daha fazla bilgi &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Başlarken</h2>
                <p>
                    ASP.NET Web Forms, tanıdık sürükle ve bırak, olay odaklı model kullanarak dinamik web siteleri oluşturmanıza olanak tanır.
                    Bir tasarım yüzeyi ve yüzlerce kontrol ve bileşen, veri erişimi ile güçlü UI odaklı siteleri hızla oluşturmanıza olanak tanır.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Daha fazla bilgi &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Daha fazla kütüphane edinin</h2>
                <p>
                    NuGet, Visual Studio projelerinde kütüphane ve araçları eklemeyi, kaldırmayı ve güncellemeyi kolaylaştıran ücretsiz bir Visual Studio uzantısıdır.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Daha fazla bilgi &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    Uygulamalarınız için doğru özellik ve fiyat karışımını sunan bir web hosting şirketini kolayca bulabilirsiniz.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Daha fazla bilgi &raquo;</a>
                </p>
            </section>
        </div>
    </div>
</asp:Content>

