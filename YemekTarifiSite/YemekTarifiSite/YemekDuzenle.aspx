<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSite.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
            font-size: large;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: large;
            background-color: #00FFFF;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
            background-color: #FF66FF;
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
            <td class="auto-style5"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="txtYemekAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="ddlKategori" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yemek Görüntü:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="auto-style7" OnClick="btnGuncelle_Click" Text="Güncelle" Width="250px" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="btnGununYemegiSec" runat="server" CssClass="auto-style8" OnClick="btnGununYemegiSec_Click" Text="Günün Yemeği Seç" Width="250px" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
