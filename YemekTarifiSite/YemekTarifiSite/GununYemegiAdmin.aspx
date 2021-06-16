<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSite.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            background-color: #C0C0C0;
        }
        .auto-style20 {
        text-align: center;
        width: 68px;
    }
        .auto-style10 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style21 {
        text-align: right;
    }
    .auto-style22 {
        width: 33px;
        height: 32px;
        margin-left: 0px;
    }
    .auto-style23 {
        width: 352px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button1_Click1" />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style8" OnClick="Button2_Click1" />
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
                        <td class="auto-style23">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %>"><img alt="" class="auto-style22" src="iconlar/choice.jpg" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
