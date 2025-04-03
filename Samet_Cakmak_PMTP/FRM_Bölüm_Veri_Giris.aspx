<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FRM_Bölüm_Veri_Giris.aspx.cs" Inherits="Samet_Cakmak_PMTP.FRM_Bölüm_Veri_Güncelleme" %>
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
            max-width: 1000px;
            margin: 0 auto;
        }
        .content h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .content h2 {
            font-size: 20px;
            margin-bottom: 20px;
        }
        .content p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .content table {
            width: 100%;
            margin-bottom: 20px;
        }
        .content table th, .content table td {
            padding: 10px;
            text-align: left;
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
    </style>
    <div class="header">
        <h1><strong>Bölümler Veri Giriş Formu</strong></h1>
    </div>
    <div class="content">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Bolum_ID" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" InsertVisible="False" ReadOnly="True" SortExpression="Bolum_ID" />
                <asp:BoundField DataField="Bolum_Adi" HeaderText="Bolum_Adi" SortExpression="Bolum_Adi" />
                <asp:BoundField DataField="Bolum_Tel" HeaderText="Bolum_Tel" SortExpression="Bolum_Tel" />
                <asp:BoundField DataField="Yonetici_ID" HeaderText="Yonetici_ID" SortExpression="Yonetici_ID" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID] FROM [tbl_Bolumler]" UpdateCommand="UPDATE tbl_Bolumler SET Bolum_Adi = @Bolum_Adi, Bolum_Tel = @Bolum_Tel, Yonetici_ID = @Yonetici_ID WHERE Bolum_ID = @Bolum_ID" DeleteCommand="DELETE FROM tbl_Bolumler WHERE Bolum_ID = @Bolum_ID">
            <UpdateParameters>
                <asp:Parameter Name="Bolum_Adi" Type="String" />
                <asp:Parameter Name="Bolum_Tel" Type="String" />
                <asp:Parameter Name="Yonetici_ID" Type="Int32" />
                <asp:Parameter Name="Bolum_ID" Type="Int32" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="Bolum_ID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Visible="false"></asp:Label>
        <div class="form-group">
            <asp:Button ID="Button2" runat="server" Text="Yeni Bölüm Veri Girişini Aç" OnClick="Button2_Click" CssClass="btn" />
            <asp:Button ID="Button1" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" CssClass="btn" />
        </div>
        <asp:Panel ID="PanelNewBolum" runat="server" Visible="false" style="margin-top:20px;">
            <h2>Yeni Bölüm Veri Girişi</h2>
            <div class="form-group">
                <label for="txtBolumAdi">Bölüm Adı:</label>
                <asp:TextBox ID="txtBolumAdi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtBolumTel">Bölüm Tel:</label>
                <asp:TextBox ID="txtBolumTel" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ddlMudur">Müdür Seçimi:</label>
                <asp:DropDownList ID="ddlMudur" runat="server" DataSourceID="SqlDataSourceMudur" DataTextField="Pers_Isim" DataValueField="Pers_ID" CssClass="form-control"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceMudur" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT Pers_ID, Pers_Isim FROM tbl_Personeller"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                <asp:Button ID="btnKaydet" runat="server" Text="Verileri Kaydet" OnClick="btnKaydet_Click" CssClass="btn" />
                <asp:Button ID="btnKapat" runat="server" Text="Sayfayı Kapat" OnClick="btnKapat_Click" CssClass="btn" />
            </div>
        </asp:Panel>
    </div>
</asp:Content>



