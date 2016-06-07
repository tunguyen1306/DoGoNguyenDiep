<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_detail_sp.ascx.cs" Inherits="webdogo.ctr.ctr_detail_sp" %>
<section class="span9" id="center_column">



    <!-- MODULE Home Featured Products -->


    <style>
        /*.span9 {
        width: 733px !important;
    }*/

        #view_full_size img {
            /*width: 406px !important;
        height:306px !important;*/
        }

        .hinh_phu {
            cursor: pointer;
        }
        /*.row-fluid .span5 {
        width: 55%;
    }*/

        /*.row-fluid .span7 {
        width: 43%;
    }*/
        .thum_sp {
            height: 78px;
            padding: 5px 4px 5px 2px;
            width: 93px;
        }

        #views_block {
            text-align: center;
        }
    </style>
    <script>
        $(function () {
            $(".hinh_phu").click(function () {
                url_chinh = $(".hinh_chinh").attr("src");
                url_phu = $(this).attr("src");
                $(".hinh_chinh").attr("src", url_phu);
            });
        });
</script>
    <div class="block products_block clearfix" id="featured-products_block_center">

        <section class="span12" id="Section1">
            <div class="no-background row-fluid" id="primary_block">

                <asp:Repeater ID="rpt_de_products" runat="server" DataSourceID="ds_product">
                    <ItemTemplate>
                        <!-- right infos-->
                        <div class="span5" id="pb-right-column">
                            <!-- product img-->
                            <div class="alld_product">
                                <div class="row-fluid">
                                    <div id="image-block">
                                        <span id="view_full_size">

                                            
                                                <img class="hinh_chinh img-responsive" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="<%#Eval("name_products")%>" title="<%#Eval("name_products")%>" id="bigpic">
                                           
                                        </span>
                                    </div>
                                    <!-- thumbnails -->
                                    <div class="row-fluid " id="views_block"> 
                                        <div id="thumbs_list">
                                            
                                            <ul id="thumbs_list_frame ">


                                                <li id="thumbnail_135">
                                                    <img id="thumb_135" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                                </li>
                                                <li id="thumbnail_136">
                                                    <img id="Img1" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img1_products").ToString().Split('_')[0] %>/<%#Eval("img1_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                                </li>
                                                <li id="thumbnail_137">
                                                    <img id="Img2" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img2_products").ToString().Split('_')[0] %>/<%#Eval("img2_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                                </li>
                                                <li id="Li1">
                                                    <img id="Img3" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img3_products").ToString().Split('_')[0] %>/<%#Eval("img3_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                                </li>
                                                <li id="Li2">
                                                    <img id="Img4" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img4_products").ToString().Split('_')[0] %>/<%#Eval("img4_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                                </li>
                                                <li id="Li3">
                                                    <img id="Img5" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img5_products").ToString().Split('_')[0] %>/<%#Eval("img5_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                                </li>


                                            </ul>
                                        </div>

                                        <%--<p class="resetimg clear">
                                            <span style="display: none;" id="wrapResetImages">
                                                <img width="11" height="13" alt="Cancel" src="themes/leodeco/img/icon/cancel_11x13.gif">
                                                <a onclick="$('span#wrapResetImages').hide('slow');return (false);" href="index9f8a.html?id_product=8&amp;controller=product&amp;id_lang=1" id="resetImages">Display all pictures</a></span>
                                        </p>--%>
                                        <!-- usefull links-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- left infos-->
                        <div class="span7" id="pb-left-column">


                             <h3 class="s_title_block"><div style="float:left;font-style:oblique;color:blue;width:125px;"> Mã sản phẩm : <%# Eval("id_products") %></div></h3>
                            <h2><%#Eval("name_products")%></h2>


                            <div id="short_description_block">
                                <div id="short_description_content" class="rte align_justify">
                                    <p><%#Eval("tomtat_products") %> </p>
                                    <p><span class="price"><b>Liên Hệ</b></span></p>
                                </div>
                                <%--<p class="buttons_bottom_block"><a class="iframe_muahang button cboxElement" href="/DatHang.aspx?id=3325">Đặt thiết kế</a></p>--%>
                            </div>



                            <!-- add to cart form-->

                        </div>
                        </div>


            <!-- description and features -->
                        <div class="clear bg_white" id="more_info_block">
                            <ul class="idTabs idTabsShort clearfix bg_wood" id="more_info_tabs">
                                <li><a href="#idTab1" id="more_info_tab_more_info">Thông tin chi tiết</a></li>
                            </ul>
                            <div style="font-size: 13px;white-space:pre-wrap; font-family: Tahoma; line-height: 25px;" class="sheets align_justify" id="more_info_sheets">
                                <!-- full description -->

                                <%#Eval("noidung_products")%>
                                <!-- Customizable products -->

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="ds_product" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where id_products=@id and status_products=1 order by order_products">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hd_id" Name="id" PropertyName="Value" />
                    </SelectParameters>


                </asp:SqlDataSource>
                <asp:HiddenField ID="hd_id" runat="server" />
                <!-- MODULE Block specials -->
                <div class="block products_block exclusive blockleorelatedproducts nopadding" id="relatedproducts">
                    <h2 class="bg_gray"><span class="title_block_content">Thiết kế liên quan</span></h2>
                    <div class="block_content thumnail">

                        <div class="row-fluid">
                            <asp:ListView ID="lv_products" runat="server" DataSourceID="SqlDataSource1">
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


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1 and type_products=@type_products order by order_products">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hd_type_product" Name="type_products" PropertyName="Value" />
                            </SelectParameters>


                        </asp:SqlDataSource>
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
                <!-- /MODULE Block specials -->
        </section>


    </div>



    <!-- /MODULE Home Featured Products -->



</section>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="ds_product">
    <ItemTemplate>
       

        <meta property="og:title"
            content="<%#Eval("name_products")%>" />
        <meta property="og:url" content="http://dogonguyendiep.com/Detail.aspx?id=<%#Eval("id_products")%>" />
        <meta name="description" content="<%#Eval("noidung_products")%>">
        <meta property="og:description" content="<%#Eval("noidung_products")%>" />

        <meta property="og:image"
            content="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" />

    </ItemTemplate>
</asp:Repeater>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where id_products=@id and status_products=1 order by order_products">
    <SelectParameters>
        <asp:QueryStringParameter Name="id" QueryStringField="id_products" />
    </SelectParameters>


</asp:SqlDataSource>
