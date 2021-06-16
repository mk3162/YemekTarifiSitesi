<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSite.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style5 {
            width: 100%;
        }

        .auto-style12 {
            height: 30px;
        }
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            height: 30px;
            text-align: right;
        }
        .auto-style17 {
            font-weight: bold;
            font-size: medium;
            background-color: #FF5050;
        }
        .auto-style18 {
            height: 28px;
        }
        .auto-style19 {
            height: 28px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Tarif Ad: </strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtTarifAd" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="txtTarifMalzemeler" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Yapılış:</strong></td>
                <td>
                    <asp:TextBox ID="txtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Resim:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Öneren:</strong></td>
                <td>
                    <asp:TextBox ID="txtOneren" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Öneren Mail:</strong></td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Kategori:</strong></td>
                <td class="auto-style18">
                    <asp:DropDownList ID="ddlKategori" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnOnayla" runat="server" CssClass="auto-style17" OnClick="btnOnayla_Click" Text="Onayla" Width="200px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
