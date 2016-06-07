<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="products_new.aspx.cs" Inherits="webdogo.products_new" %>

<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>
<%@ Register Src="~/ctr/ctr_header.ascx" TagPrefix="uc1" TagName="ctr_header" %>
<%@ Register Src="~/ctr/ctr_silde_short.ascx" TagPrefix="uc1" TagName="ctr_silde_short" %>
<%@ Register Src="~/ctr/ctr_right.ascx" TagPrefix="uc1" TagName="ctr_right" %>




<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <uc1:ctr_header runat="server" ID="ctr_header" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="silde" runat="server">
    <uc1:ctr_silde_short runat="server" ID="ctr_silde_short" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <section id="center_column" class="span9">



    <!-- MODULE Home Featured Products -->


    <div id="featured-products_block_center" class="block products_block clearfix thumnail">
        <h2 class="bg_gray"><span class="title_block_content">Sản phẩm mới</span></h2>
        <div class="block_content">
            <div class="row-fluid">
         
                <asp:ListView ID="lv_products" runat="server" DataSourceID="ds_product">
                    <ItemTemplate>
                       
                        <div class="p-item span4 ajax_block_product product_block item thumnail">
                            <div class="list-products thumnail">
                                <div class="product-container clearfix">
                                    <div class="center_block">
                                        <a href='Detail.aspx?id=<%# Eval("id_products") %>&&id_type=<%# Eval("type_products") %>' title="<%#Eval("name_products")%>">
                                            <img src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="" class="img-responsive">
                                        </a>

                                       
                                    </div>
                                    <div class="right_block">
                                         <h3 class="s_title_block"><div style="float:left;font-style:oblique;color:blue;width:125px;"> Mã sản phẩm : <%# Eval("id_products") %></div></h3>
                                        <h3 class="s_title_block">
                                                <a href='Detail.aspx?id=<%# Eval("id_products") %>&&id_type=<%# Eval("type_products") %>' title="<%#Eval("name_products")%>"><b><%#Eval("name_products")%></b></a>
                                        </h3>
                                        <div class="product_desc">
                                            <%-- tóm tắt--%>
                                            <%#Eval("tomtat_products") %>
                                        </div>

                                    </div>
                                    <div class="left_block">
                                        <div class="content_price">
                                          <span class="price"><b>Liên Hệ</b></span>
                                        </div>
                                        <a class="button ajax_add_to_cart_button exclusive iframe_muahang cboxElement" data-id="<%# Eval("type_products") %>" href='xemnhanh.aspx?id=<%# Eval("type_products")%>&&id_pro=<%# Eval("id_products")%>' title="<%#Eval("name_products")%>"><span class="icon-addcart"></span>Add to cart</a>

                                    </div>
                                  
                                </div>
                            </div>


                        </div>

                    </ItemTemplate>
                </asp:ListView>

            </div>


            <asp:SqlDataSource ID="ds_product" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1 order by order_products, id_products desc"></asp:SqlDataSource>
            <asp:HiddenField ID="hd_type_product" runat="server" />

            <div class="row-fluid sortPagiBar bg_gray">
                <div class="span9">
                    <div class="inner">


                        <!-- Pagination -->
                        <div class="pagination" id="pagination_bottom">
                            <ul class="pagination">
                                
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lv_products" PageSize="15">
                                    <Fields>
                                        <asp:NextPreviousPagerField />
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </ul>

                        </div>
                        <!-- /Pagination -->

                    </div>
                </div>

            </div>

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
