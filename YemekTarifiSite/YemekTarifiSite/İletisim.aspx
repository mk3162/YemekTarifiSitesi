<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="YemekTarifiSite.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        font-size: large;
        font-weight: bold;
    }
    .auto-style7 {
        font-size: x-large;
        text-align: center;
        color: #000000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style7" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="txtAdSoyad" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="txtKonu" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style5"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
        </tr>
    <tr>
        <td class="auto-style5"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" Width="230px" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td><strong>
            <asp:Button ID="btnGonder" runat="server" CssClass="button" Text="Gönder" Width="234px" OnClick="btnGonder_Click" />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
