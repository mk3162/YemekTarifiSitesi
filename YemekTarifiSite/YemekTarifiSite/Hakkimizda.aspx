<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSite.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style4">
        <strong>HAKKIMIZDA</strong></p>
    <br />
    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br /><br />
    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Resimler/hakkimizda.jpg" Width="450px" />
        <br />
</asp:Content>
