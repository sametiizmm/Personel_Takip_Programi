<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="REP_Personele Göre Maas_Listesi.aspx.cs" Inherits="Samet_Cakmak_PMTP.REP_Personele_Göre_Maas_Listesi" %>
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
            overflow-x: auto; /* Yatay kaydırma çubuğu ekleyin */
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
        .content .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .content table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse; /* Kenar boşluklarını kaldırın */
        }
        .content table th, .content table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd; /* Hücre kenarlıkları ekleyin */
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
        <h1><strong>Personele Göre Maaş Listesi</strong></h1>
    </div>
    <div class="content">
        <div class="form-group">
            <label for="DropDownList1">Personel Seçiniz:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Maas_Yili" HeaderText="Maaş Yılı" ReadOnly="True" SortExpression="Maas_Yili" />
                <asp:BoundField DataField="Ay_ID" HeaderText="Ay" SortExpression="Ay_ID" />
                <asp:BoundField DataField="Maas_Tutari" HeaderText="Maaş Tutarı" SortExpression="Maas_Tutari" />
                <asp:BoundField DataField="Maas_Komisyonu" HeaderText="Maaş Komisyonu" SortExpression="Maas_Komisyonu" />
                <asp:BoundField DataField="Maas_Toplam" HeaderText="Maaş Toplam" ReadOnly="True" SortExpression="Maas_Toplam" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT [Maas_Yili], [Ay_ID], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam] FROM [tbl_Maaslar] WHERE ([Pers_ID] = @Pers_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="form-group text-center">
            <asp:Button ID="Button1" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" CssClass="btn" />
        </div>
    </div>
</asp:Content>





