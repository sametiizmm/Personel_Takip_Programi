<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FRM_Personel_Veri_Güncelleme.aspx.cs" Inherits="Samet_Cakmak_PMTP.FRM_Personel_Veri_Güncelleme" %>
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
    </style>
    <div class="header">
        <h1><strong>Personel Verilerini Güncelleme</strong></h1>
    </div>
    <div class="content">
        <div class="form-group">
            <label for="DropDownList1">Personel Seçiniz:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Pers_Giris_Tarihi" SortExpression="Pers_Giris_Tarihi" />
                <asp:BoundField DataField="Pers_Cikis_Tarihi" HeaderText="Pers_Cikis_Tarihi" SortExpression="Pers_Cikis_Tarihi" />
                <asp:BoundField DataField="Pers_Adresi" HeaderText="Pers_Adresi" SortExpression="Pers_Adresi" />
                <asp:BoundField DataField="Pers_Ilcesi" HeaderText="Pers_Ilcesi" SortExpression="Pers_Ilcesi" />
                <asp:BoundField DataField="Pers_Ili" HeaderText="Pers_Ili" SortExpression="Pers_Ili" />
                <asp:BoundField DataField="Pers_Il_Kodu" HeaderText="Pers_Il_Kodu" SortExpression="Pers_Il_Kodu" />
                <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel" />
                <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                <asp:BoundField DataField="Cinsiyet_ID" HeaderText="Cinsiyet_ID" SortExpression="Cinsiyet_ID" />
                <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan_ID" SortExpression="Unvan_ID" />
                <asp:BoundField DataField="Pers_Maas" HeaderText="Pers_Maas" SortExpression="Pers_Maas" />
                <asp:BoundField DataField="Pers_Komisyon_Yuzdesi" HeaderText="Pers_Komisyon_Yuzdesi" SortExpression="Pers_Komisyon_Yuzdesi" />
                <asp:BoundField DataField="Pers_SGK_NO" HeaderText="Pers_SGK_NO" SortExpression="Pers_SGK_NO" />
                <asp:BoundField DataField="Pers_TC_NO" HeaderText="Pers_TC_NO" SortExpression="Pers_TC_NO" />
                <asp:CheckBoxField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi" />
                <asp:BoundField DataField="Kaydeden" HeaderText="Kaydeden" SortExpression="Kaydeden" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT Pers_ID, Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Giris_Tarihi, Pers_Cikis_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Il_Kodu, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Cinsiyet_ID, Unvan_ID, Pers_Maas, Pers_Komisyon_Yuzdesi, Pers_SGK_NO, Pers_TC_NO, Pers_Aktif_Mi, Kaydeden FROM tbl_Personeller WHERE (Pers_ID = @Pers_ID)" UpdateCommand="UPDATE tbl_Personeller SET Pers_Adi = @Pers_Adi, Pers_Soyadi = @Pers_Soyadi, Pers_DTarihi = @Pers_DTarihi, Pers_Giris_Tarihi = @Pers_Giris_Tarihi, Pers_Cikis_Tarihi = @Pers_Cikis_Tarihi, Pers_Adresi = @Pers_Adresi, Pers_Ilcesi = @Pers_Ilcesi, Pers_Ili = @Pers_Ili, Pers_Il_Kodu = @Pers_Il_Kodu, Pers_Tel = @Pers_Tel, Pers_Cep = @Pers_Cep, Pers_Email = @Pers_Email, Bolum_ID = @Bolum_ID, Cinsiyet_ID = @Cinsiyet_ID, Unvan_ID = @Unvan_ID, Pers_Maas = @Pers_Maas, Pers_Komisyon_Yuzdesi = @Pers_Komisyon_Yuzdesi, Pers_SGK_NO = @Pers_SGK_NO, Pers_TC_NO = @Pers_TC_NO, Pers_Aktif_Mi = @Pers_Aktif_Mi, Kaydeden = @Kaydeden WHERE Pers_ID= @Pers_ID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
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
                <asp:Parameter Name="Pers_ID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" CssClass="btn" />
        </div>
    </div>
</asp:Content>





