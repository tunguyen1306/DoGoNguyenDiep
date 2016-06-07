<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_products.ascx.cs" Inherits="webdogo.ctr.ctr_products" %>

<section id="center_column" class="span9">

   
    <div id="featured-products_block_center" class="block products_block clearfix">

        <section id="Section1" class="span12">



                <!-- MODULE Block specials -->
                <div id="relatedproducts" class="block products_block exclusive blockleorelatedproducts nopadding">
                    <h2 class="bg_gray"><span class="title_block_content">
                        <asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></span></h2>
                    <div class="block_content thumnail">





                        <div class="row-fluid">
                                       <asp:ListView ID="lv_products" runat="server" DataSourceID="ds_sanpham">
                    <ItemTemplate>
                       
                        <div class="p-item span4 ajax_block_product product_block item thumnail">
                            <div class="list-products thumnail">
                                <div class="product-container clearfix">
                                    <div class="center_block">
                                        <a href='Detail.aspx?id=<%# Eval("id_products") %>&&id_type=<%# Eval("type_products") %>' title="<%#Eval("name_products")%>">
                                            <img src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="" class="img-responsive">
                                        </a>

                                        &nbsp;&nbsp;&nbsp;
                                    </div>
                                    <div class="right_block">
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


                        <asp:SqlDataSource ID="ds_sanpham" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM wb_products
left join wb_menu_products on wb_menu_products.id_menu_products=wb_products.type_products where  status_products=1 and type_products=@type_products order by order_products">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hd_type_product" Name="type_products" PropertyName="Value" />
                            </SelectParameters>


                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="ds_menu" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM  wb_menu_products where  menu_status=1 and id_menu_products=@id_menu_products order by menu_products_order">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hd_id_menu_products" Name="id_menu_products" PropertyName="Value" />
                            </SelectParameters>


                        </asp:SqlDataSource>
                        <asp:HiddenField ID="hd_type_product" runat="server" />

<asp:HiddenField ID="hd_id_menu_products" runat="server" />


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
                <!-- /MODULE Block specials -->
        </section>


    </div>



    <!-- /MODULE Home Featured Products -->



</section>
