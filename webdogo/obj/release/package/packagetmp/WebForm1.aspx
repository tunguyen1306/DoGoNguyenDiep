<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webdogo.WebForm1" %>

<%@ Register Src="~/ctr/ctr_header_1.ascx" TagPrefix="uc1" TagName="ctr_header_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="fb" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <uc1:ctr_header_1 runat="server" ID="ctr_header_1" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="silde" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
