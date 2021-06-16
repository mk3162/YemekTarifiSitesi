<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #C0C0C0;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: left;
            width: 287px;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: large;
        }
    .auto-style17 {
        margin-top: 1px;
    }
    .auto-style19 {
        height: 32px;
    }
    .auto-style20 {
        text-align: center;
        width: 68px;
    }
    .auto-style21 {
        text-align: center;
        width: 72px;
    }
        .auto-style22 {
            height: 32px;
            text-align: right;
        }
        .auto-style23 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 40px;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style8" OnClick="Button2_Click"  />
                    </strong></td>
                <td><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px" CssClass="auto-style17" Height="158px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Yemekler.aspx?YemekId=<%#Eval("YemekId") %> &islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style8" OnClick="Button4_Click" />
                    </strong></td>
                <td><strong>&nbsp;YEMEK EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style22"><strong>YEMEK AD:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="txtMalzemeler" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>YEMEK TARİFİ:</strong></td>
                <td>
                    <asp:TextBox ID="txtYemekTarifi" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>KATEGORİ:</strong></td>
                <td>
                    <asp:DropDownList ID="ddlKategori" runat="server" Width="275px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style23" OnClick="btnEkle_Click" Text="Ekle" Width="150px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
    </asp:Content>
