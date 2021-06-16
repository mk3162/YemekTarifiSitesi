<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        height: 27px;
    }
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style4">
    <tr>
        <td style="margin-left: 40px">
            <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="Label8" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><strong>Malzemeler:</strong>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong>Yapılışı :</strong>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image2" runat="server" Height="184px" ImageUrl='<%# Eval("YemekResim") %>' Width="382px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong>Puan: </strong>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong>Eklenme Tarihi:</strong>&nbsp;<asp:Label ID="Label12" runat="server" style="font-style: italic" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>
