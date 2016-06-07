<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="webdogo.news" %>

<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>
<%@ Register Src="~/ctr/ctr_right.ascx" TagPrefix="uc1" TagName="ctr_right" %>
<%@ Register Src="~/ctr/ctr_header.ascx" TagPrefix="uc1" TagName="ctr_header" %>
<%@ Register Src="~/ctr/ctr_silde_short.ascx" TagPrefix="uc1" TagName="ctr_silde_short" %>




<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <uc1:ctr_header runat="server" ID="ctr_header" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="silde" runat="server">
    <uc1:ctr_silde_short runat="server" ID="ctr_silde_short" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <section class="span9" id="center_column">

	
	
<!-- MODULE Home Featured Products -->

    
<style>
    .ul_style ul {
        list-style:disc !important;
    }
    .ul_style ul li {
        display:block !important;
        line-height:25px;
        float:none;
        list-style:armenian;
    }
    .tempTable tr td{
        padding:5px;
    }
</style>
<div class="block products_block clearfix" id="featured-products_block_center">
    <h2 class="bg_gray"><span class="title_block_content">Tin Tức<p/span></h2>
    <div style="background-color:#fff;margin-top:-10px;padding:15px;font-family:Tahoma !important;font-size:13px !important;line-height:25px !important;" class="block_content">
        <table style="text-align:left;padding:5px;" class="tempTable">
            <tbody><tr>
                <td colspan="3">
                    <div class="text-center" style="text-align: center">
                       Đang cập nhật tin tức

                    </div>
                </td>
            </tr>
          
            
        </tbody></table>
    </div>
    
</div>


<!-- /MODULE Home Featured Products -->


	
</section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Right" runat="server">
    <uc1:ctr_right runat="server" ID="ctr_right" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
