<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="REP_Bölüme_Göre_Personel_Listesi.aspx.cs" Inherits="Samet_Cakmak_PMTP.REP_Bölüme_Göre_Personel_Listesi" %>
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
        .content table {
            width: 100%;
            margin-bottom: 20px;
        }
        .content table th, .content table td {
            padding: 10px;
            text-align: left;
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
        .status-active {
            color: green;
            font-weight: bold;
        }
        .status-inactive {
            color: red;
            font-weight: bold;
        }
    </style>
    <div class="header">
        <h1><strong>Bölüme Göre Personel Listesi</strong></h1>
    </div>
    <div class="content">
        <div class="form-group">
            <label for="DropDownList1">Bölüm Seçiniz:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table table-striped">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Pers_ID" HeaderText="Personel ID" ReadOnly="True" SortExpression="Pers_ID" />
                <asp:BoundField DataField="Pers_Isim" HeaderText="Personel İsmi" SortExpression="Pers_Isim" />
                <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Giriş Tarihi" SortExpression="Pers_Giris_Tarihi" />
                <asp:BoundField DataField="Pers_Cikis_Tarihi" HeaderText="Çıkış Tarihi" SortExpression="Pers_Cikis_Tarihi" />
                <asp:BoundField DataField="Pers_Tel" HeaderText="Telefon" SortExpression="Pers_Tel" />
                <asp:BoundField DataField="Pers_Cep" HeaderText="Cep Telefonu" SortExpression="Pers_Cep" />
                <asp:BoundField DataField="Pers_Email" HeaderText="Email" SortExpression="Pers_Email" />
                <asp:BoundField DataField="Bolum_ID" HeaderText="Bölüm ID" SortExpression="Bolum_ID" />
                <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan ID" SortExpression="Unvan_ID" />
                <asp:TemplateField HeaderText="Aktif Mi?" SortExpression="Pers_Aktif_Mi">
                    <ItemTemplate>
                        <asp:Label ID="lblAktifMi" runat="server" Text='<%# Convert.ToBoolean(Eval("Pers_Aktif_Mi")) ? "Aktif" : "Pasif" %>' CssClass='<%# Convert.ToBoolean(Eval("Pers_Aktif_Mi")) ? "status-active" : "status-inactive" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Unvan_ID], [Pers_Aktif_Mi] FROM [tbl_Personeller] WHERE ([Bolum_ID] = @Bolum_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="form-group text-center">
            <asp:Button ID="Button2" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" CssClass="btn" />
        </div>
    </div>
</asp:Content>
