<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifiSite.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>KATEGORİ ADI:</strong></td>
            <td>
                <asp:TextBox ID="txtKategoriAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="txtAdet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style5" OnClick="btnGuncelle_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
