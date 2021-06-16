<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSite.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: medium;
        }
    .auto-style7 {
        margin-left: 40px;
    }
    .auto-style8 {
        font-size: large;
        font-weight: bold;
    }
    .auto-style9 {
        text-align: center;
        margin-left: 40px;
    }
    .auto-style10 {
        font-size: medium;
        font-style: italic;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style8" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style3"><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style7"><em>
                    <asp:TextBox ID="txtHakkimizda" runat="server" CssClass="auto-style10" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style8" Text="Güncelle" Width="200px" OnClick="btnGuncelle_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
