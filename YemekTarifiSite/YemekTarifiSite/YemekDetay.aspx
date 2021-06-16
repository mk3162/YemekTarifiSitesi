<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: 30pt;
            color: #CCCCCC;
        }

        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            font-size: xx-small;
        }

        .auto-style7 {
            font-size: x-large;
        }

        .auto-style8 {
            height: 47px;
        }

        .auto-style9 {
            background-color: #e7a5a5;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-align: right;
            height: 30px;
        }
        .auto-style12 {
            height: 30px;
        }
        .auto-style14 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
        <br />
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <strong>
                        <tr>
                            <td style="border-bottom-style: inset; border-bottom-width: thin">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                                &nbsp;- <em>
                                    <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                                </em></td>
                        </tr>
                    </strong>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
    </strong>
    <div class="auto-style9">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Ad Soyad: </strong> </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtAdSoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="txtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <strong>
                    <asp:Button ID="btnYorumYap" runat="server" CssClass="tb5" OnClick="btnYorumYap_Click" Text="Yorum Yap" Width="206px" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
