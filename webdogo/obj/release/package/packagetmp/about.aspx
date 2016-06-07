<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="webdogo.about" %>

<%@ Register Src="~/ctr/ctr_header.ascx" TagPrefix="uc1" TagName="ctr_header" %>

<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>
<%@ Register Src="~/ctr/ctr_right.ascx" TagPrefix="uc1" TagName="ctr_right" %>
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
    <h2 class="bg_gray"><span class="title_block_content">Giới Thiệu Về Đồ gỗ mỹ nghệ NGUYỄN DIỆP</span></h2>
    <div style="background-color:#fff;margin-top:-10px;padding:15px;font-family:Tahoma !important;font-size:13px !important;line-height:25px !important;" class="block_content">
        <table style="text-align:left;padding:5px;" class="tempTable">
            <tbody><tr>
                <td colspan="3">
                    <div class="text-center" style="text-align: center">
                       
Xin gửi lời chúc sức khỏe, lời cảm ơn chân thành và sâu sắc nhất đến Quý Khách Hàng của Công ty chúng tôi trong thời gian qua. 
                        <br />
                        Năm mới ĐỒ GỖ MỸ NGHỆ NGUYỄN DIỆP kính chúc Quý khách hàng AN KHANG THỊNH VƯỢNG - VẠN SỰ NHƯ Ý!<br />
&nbsp;Công ty chúng tôi rất mong được hợp tác với Quý Đại Lý để cùng nhau phát triển và đôi bên cùng có lợi. 
                        <br />
                        Chúc mối quan hệ hợp tác của Quý Đại Lý ngày càng bền chặt

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
