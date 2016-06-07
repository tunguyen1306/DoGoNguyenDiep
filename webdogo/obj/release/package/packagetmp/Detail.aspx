<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="webdogo.Detail" %>

<%@ Register Src="~/ctr/ctr_fb.ascx" TagPrefix="uc1" TagName="ctr_fb" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>
<%@ Register Src="~/ctr/ctr_header.ascx" TagPrefix="uc1" TagName="ctr_header" %>
<%@ Register Src="~/ctr/ctr_right.ascx" TagPrefix="uc1" TagName="ctr_right" %>
<%@ Register Src="~/ctr/ctr_silde_short.ascx" TagPrefix="uc1" TagName="ctr_silde_short" %>
<%@ Register Src="~/ctr/ctr_detail_sp.ascx" TagPrefix="uc1" TagName="ctr_detail_sp" %>







<asp:Content ID="Content1" ContentPlaceHolderID="fb" runat="server">
    <uc1:ctr_fb runat="server" ID="ctr_fb" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <uc1:ctr_header runat="server" ID="ctr_header" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="silde" runat="server">
    <uc1:ctr_silde_short runat="server" ID="ctr_silde_short" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <uc1:ctr_detail_sp runat="server" ID="ctr_detail_sp" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Right" runat="server">
    <uc1:ctr_right runat="server" ID="ctr_right" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footer" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
