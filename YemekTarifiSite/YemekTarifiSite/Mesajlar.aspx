<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 37px;
            height: 30px;
        }
        .auto-style7 {
            width: 225px;
            text-align: right;
        }
        .auto-style8 {
            width: 225px;
            text-align: left;
        }
        .auto-style9 {
            font-size: large;
            width: 45px;
        }
        .auto-style10 {
            font-size: large;
            width: 153px;
        }
        .auto-style11 {
            font-size: large;
            width: 154px;
        }
        .auto-style13 {
            font-size: large;
            width: 902px;
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
                <td class="auto-style13"><strong>MESAJ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
         <asp:DataList ID="DataList1" runat="server" Height="158px" Width="445px">
             <ItemTemplate>
                 <table class="auto-style4">
                     <tr>
                         <td class="auto-style8">
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                         </td>
                         <td class="auto-style7">
                             <a href="MesajDetay.aspx?MesajId=<%#Eval("MesajId") %>"><img alt="" class="auto-style6" src="iconlar/read.png" /></a>
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
    </asp:Panel>
</asp:Content>
