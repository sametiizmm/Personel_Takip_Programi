<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Samet_Cakmak_PMTP.About" %>

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
            max-width: 800px;
            margin: 0 auto;
        }
        .content h1, .content h4 {
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
        .content ul li::before {
            content: "•";
            color: #1d3557;
            font-weight: bold;
            display: inline-block; 
            width: 1em;
            margin-left: -1em;
        }
    </style>
    <div class="header">
        <h1><strong>Hakkımızda</strong></h1>
    </div>
    <div class="content">
        <h4><strong>Hoş Geldiniz!</strong></h4>
        <p>İnsan Kaynakları Yönetim Sistemi (İKYS), işletmelerin insan kaynakları süreçlerini daha verimli, düzenli ve şeffaf bir şekilde yönetmesine yardımcı olmak amacıyla geliştirilmiş bir projedir.</p>
        <h4><strong>Amacımız</strong></h4>
        <p>Bu platform, personel yönetimi, maaş takibi, departman organizasyonu ve kullanıcı yetkilendirme gibi süreçleri kolaylaştırarak işletmelere dijital bir çözüm sunar. Hedefimiz, işletmelerin insan kaynakları yönetimi için ihtiyaç duyduğu tüm araçları tek bir çatı altında toplamak ve iş gücü verimliliğini artırmaktır.</p>
        <h4><strong>Sunduğumuz Hizmetler</strong></h4>
        <ul>
            <li><strong>Personel Bilgi Yönetimi:</strong> Çalışanlarınızın bilgilerini kaydedip güncel tutabilirsiniz.</li>
            <li><strong>Maaş Takip ve Raporlama:</strong> Maaş hesaplamaları ve ödemeleri için entegre çözümler sunuyoruz.</li>
            <li><strong>Departman Yönetimi:</strong> Şirket içindeki departmanlarınızın yönetimini basitleştiriyoruz.</li>
            <li><strong>Kullanıcı Rolleri ve Güvenlik:</strong> Çeşitli kullanıcı rolleri ile verilerinize güvenli erişim sağlıyoruz.</li>
        </ul>
        <h4><strong>Teknolojik Altyapımız</strong></h4>
        <p>Bu platform, ASP.NET teknolojisi ile geliştirilmiştir ve Microsoft SQL Server kullanılarak güçlü bir veritabanı altyapısı oluşturulmuştur. Modern ve kullanıcı dostu arayüzü ile işletmenizin dijital dönüşüm yolculuğuna katkı sağlamayı amaçlıyoruz.</p>
        <h4><strong>Projenin Arkasındaki Ekip</strong></h4>
        <p>İKYS, yazılım geliştirme ve veritabanı tasarımı alanında deneyim sahibi bir ekip tarafından tasarlandı. Projenin sahibi <strong>Samet Çakmak</strong>, Yönetim Bilişim Sistemleri alanında eğitim almakta ve işletmelere teknolojik çözümler sunma konusunda profesyonel çalışmalara imza atmaktadır.</p>
    </div>
</asp:Content>


