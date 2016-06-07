<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="webdogo.contact" %>

<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>
<%@ Register Src="~/ctr/ctr_silde_short.ascx" TagPrefix="uc1" TagName="ctr_silde_short" %>
<%@ Register Src="~/ctr/ctr_header.ascx" TagPrefix="uc1" TagName="ctr_header" %>
<%@ Register Src="~/ctr/ctr_right.ascx" TagPrefix="uc1" TagName="ctr_right" %>





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
                list-style: disc !important;
            }

                .ul_style ul li {
                    display: block !important;
                    line-height: 25px;
                    float: none;
                    list-style: armenian;
                }

            .tempTable tr td {
                padding: 5px;
            }
        </style>
        <div class="block products_block clearfix" id="featured-products_block_center">
            <h2 class="bg_gray"><span class="title_block_content">Gửi liên hệ website</span></h2>
            <div style="background-color: #fff; margin-top: -10px; padding: 15px; font-family: Tahoma !important; font-size: 13px !important; line-height: 25px !important;" class="block_content">
                <table style="text-align: left; padding: 5px;" class="tempTable">
                    <tbody>
                        <tr>
                            <td colspan="3">
                                <div class="ul_style">
                                    <ul>
                                        <li><strong>Đồ gỗ mỹ nghệ NGUYỄN DIỆP</strong></li>

                                        <li><strong>Giám đốc:</strong> Nguyễn Diệp - <strong>Điện thoại:</strong> 0915105684</li>
                                    </ul>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Họ tên </b>
                                <span style="color: Red; display: none;" ></span>
                            </td>
                            <td>:</td>
                            <td>
                              
                                 <asp:TextBox ID="txt_hovaten" runat="server" style="width: 320px;" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Địa Chỉ </b>
                                <span style="color: Red; display: none;" id="Span1"></span>
                            </td>
                            <td>:</td>
                            <td>
                              
                                 <asp:TextBox ID="txt_add" runat="server" style="width: 320px;" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Điện thoại </b>
                                <span style="color: Red; display: none;" ></span>
                            </td>
                            <td>:</td>
                            <td>
                                <asp:TextBox ID="txt_sodienthoai" runat="server" style="width: 320px;" ></asp:TextBox>

                            </td>
                        
                        </tr>
                        <tr>
                            <td><b>Email </b>
                                <span style="color: Red; display: none;" ></span>
                                <span style="color: Red; display: none;" ></span>
                            </td>
                            <td>:</td>
                            <td>
                                 <asp:TextBox ID="txt_Email" runat="server" style="width: 320px;" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Tiêu đề </b>
                                <span style="color: Red; display: none;" ></span>
                            </td>
                            <td>:</td>
                            <td>
                               <asp:TextBox ID="txt_Tieude" runat="server" style="width: 320px;" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Nội dung </b>
                                <span style="color: Red; display: none;" ></span>
                            </td>
                            <td>:</td>
                            <td>
                              <asp:TextBox ID="txt_noidung" runat="server" style="height: 100px; width: 330px;" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                
                                <asp:Button ID="btn_gui" Style="height: 30px;" class="btn btn-danger" runat="server" Text="Gửi liên hệ" OnClick="btn_gui_Click" />
                                <asp:Button ID="btN_ve" Style="height: 30px;" class="btn btn-success" runat="server" Text="Về trang chủ" OnClick="btN_ve_Click" />
                                <div style="color: Red; display: none;" >
                                </div>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
            <%-- 
    <h2 class="bg_gray"><span class="title_block_content">Sơ đồ đường đi</span></h2>
    <div style="background-color:#fff;margin-top:-10px;padding:15px;font-family:Tahoma !important;font-size:13px !important;line-height:25px !important;" class="block_content">
         <iframe width="700" height="600" frameborder="0" style="border:0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.365199619731!2d106.73851301691889!3d10.85980314583297!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527eeb5e95f3d%3A0x62786533625b6ab6!2zMjA0IFRhbSBCw6xuaCwgVGFtIFBow7osIFRo4bunIMSQ4bupYw!5e0!3m2!1svi!2s!4v1395539935744"></iframe>
    </div>--%>
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
