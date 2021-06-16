<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="YemekTarifiSite.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            font-size: x-large;
            color: #CC0066;
        }
        .auto-style6 {
            background-color: #FFFFCC;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:DataList ID="DataList2" runat="server" Width="445px">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style6"><strong>

                        <a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId") %>">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a>

                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:
                        <asp:Label ID="Label6" runat="server" ForeColor="White" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </strong>&nbsp;- <strong>Puan:</strong> <strong><em>
                        <asp:Label ID="Label7" runat="server" ForeColor="White" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
