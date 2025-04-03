<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="REP_Personele_Göre_Yıllık_Maas_Grafiği.aspx.cs" Inherits="Samet_Cakmak_PMTP.REP_Personele_Göre_Yıllık_Maas_Grafiği" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
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
        <h1><strong>Toplam Personel Maaşları Grafiği</strong></h1>
    </div>
    <div class="content">
        <div class="form-group">
            <label for="DropDownList1">Yıl Seçiniz:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Maas_Yili" DataValueField="Maas_Yili" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>" SelectCommand="SELECT DISTINCT [Maas_Yili] FROM [tbl_Maaslar]"></asp:SqlDataSource>
        </div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Width="800px" Height="400px">
            <Series>
                <asp:Series Name="Series1" XValueMember="Pers_Adi" YValueMembers="ToplamMaas" ChartType="Column">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_Samet_CakmakConnectionString %>"
            SelectCommand="SELECT p.Pers_Adi, SUM(m.Maas_Toplam) AS ToplamMaas FROM tbl_Personeller p INNER JOIN tbl_Maaslar m ON p.Pers_ID = m.Pers_ID WHERE m.Maas_Yili = @Maas_Yili GROUP BY p.Pers_Adi">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Maas_Yili" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="form-group text-center">
            <asp:Button ID="Button1" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" CssClass="btn" />
        </div>
    </div>
</asp:Content>






