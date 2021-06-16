<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSite.Kategoriler" %>
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
    .auto-style13 {
        border: 2px solid #777;
        border-radius: 10px;
        outline: none;
        height: 40px;
        font-size: medium;
        font-weight: bold;
    }
    .auto-style14 {
        text-align: center;
        width: 63px;
    }
    .auto-style16 {
        height: 25px;
    }
    .auto-style17 {
        margin-top: 1px;
    }
    .auto-style18 {
        text-align: right;
        height: 32px;
    }
    .auto-style19 {
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style8" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px" CssClass="auto-style17" Height="158px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId") %> &islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style8" OnClick="Button4_Click"/>
                    </strong></td>
                <td><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori Ad:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Kategori İkon:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="button" OnClick="btnEkle_Click" Text="Ekle" Width="150px" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
    </asp:Content>
