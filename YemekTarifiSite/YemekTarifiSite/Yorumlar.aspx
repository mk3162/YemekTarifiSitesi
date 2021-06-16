<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 344px;
        }
        .auto-style8 {
            width: 38px;
        }
        .auto-style9 {
            width: 39px;
        }
        .auto-style10 {
            width: 40px;
        }
        .auto-style11 {
            width: 42px;
        }
        .auto-style12 {
            width: 38px;
            margin-left: 0px;
        }
        .auto-style13 {
            width: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auto-style6">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style12" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>ONAYLANAN YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
     </div>
     <asp:Panel ID="Panel2" runat="server">
         <asp:DataList ID="DataList1" runat="server" Height="158px" Width="445px">
             <ItemTemplate>
                 <table class="auto-style4">
                     <tr>
                         <td class="auto-style7">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                         </td>
                         <td class="auto-style5">
                             <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.jpg" Width="30px" />
                         </td>
                         <td class="auto-style5">
                             <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" />
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5">
        <table class="auto-style4">
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style8" OnClick="Button4_Click" style="margin-left: 0px"/>
                    </strong></td>
                <td><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
         <asp:DataList ID="DataList2" runat="server" Height="158px" Width="445px">
             <ItemTemplate>
                 <table class="auto-style4">
                     <tr>
                         <td class="auto-style7">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                         </td>
                         <td class="auto-style5">
                             <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.jpg" Width="30px" />
                         </td>
                         <td class="auto-style5">
                             <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.jpg" Width="30px" /></a>
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
    </asp:Panel>
</asp:Content>
