<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSite.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            font-size: large;
            width: 154px;
            height: 34px;
        }
        .auto-style10 {
            font-size: large;
            width: 153px;
        }
        .auto-style9 {
            font-size: large;
            width: 45px;
            height: 34px;
        }
        .auto-style13 {
            font-size: large;
            width: 902px;
            height: 34px;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            width: 375px;
        }
        .auto-style17 {
            width: 47px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="445px">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style3" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style13"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
         <asp:DataList ID="DataList1" runat="server" Height="158px" Width="445px">
             <ItemTemplate>
                 <table class="auto-style4">
                     <tr>
                         <td class="auto-style16">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("TarifAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style15">&nbsp;<a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>"><img alt="" class="auto-style17" src="iconlar/offer.png" /></td></a>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Width="445px">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style10" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" CssClass="auto-style3" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style13"><strong>ONAYLI TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
      <asp:Panel ID="Panel4" runat="server">
         <asp:DataList ID="DataList2" runat="server" Height="158px" Width="445px">
             <ItemTemplate>
                 <table class="auto-style4">
                     <tr>
                         <td class="auto-style16">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("TarifAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style15">&nbsp;<a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId") %>"><img alt="" class="auto-style17" src="iconlar/offer.png" /></td></a>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
    </asp:Panel>
</asp:Content>
