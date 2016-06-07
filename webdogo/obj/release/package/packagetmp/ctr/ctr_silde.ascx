<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_silde.ascx.cs" Inherits="webdogo.ctr.ctr_silde" %>
<section id="slideshow">
    <div class="main_silde">
        <div class="container">
            <div class="row-fluid">
                <div class="leocamera_container span8">
                    <div id="leo-camera" class="camera_wrap default" style="display: block; margin-bottom: 23px; height: 470px;">
                        <asp:Repeater ID="rpt_banner" runat="server" DataSourceID="ds_banner">
                            <ItemTemplate>
                                <div data-thumb="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("image_banner").ToString().Split('_')[0] %>/<%#Eval("image_banner") %>" data-src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("image_banner").ToString().Split('_')[0] %>/<%#Eval("image_banner") %>">
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="ds_banner" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_banner] where status_banner=1 and type_banner=1 order by order_banner"></asp:SqlDataSource>




                    </div>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $('#leo-camera').camera({
                            height: '470px',
                            alignment: 'center',
                            autoAdvance: true,
                            barDirection: 'leftToRight',
                            barPosition: 'bottom',
                            cols: 6,
                            easing: 'easeInOutExpo',
                            fx: 'random',
                            hover: false,
                            loader: 'pie',
                            navigation: true,
                            navigationHover: true,
                            pagination: false,
                            playPause: true,
                            pauseOnClick: false,
                            thumbnails: false
                        });
                    });
                </script>
                <div class="customhtml hidden-phone block   span4" id="leo-customhtml-slideshow">
                    <div class="block_content">
                        <div class="leo-adv">



                            <a class="youtube cboxElement" href="http://www.youtube.com/watch?v=eAzFvgKPIOw" title="Đồ Gỗ Mỹ Nghệ Nguyễn Diệp">
                                <img class="img-responsive" alt="Đồ Gỗ Mỹ Nghệ Nguyễn Diệp" title="Đồ Gỗ Mỹ Nghệ Nguyễn Diệp" src="../img/f425e4nq9w.jpg"></a>



                            <a href="/Default.aspx">
                                <img class="img-responsive" alt="#" title="#" src="../img/z5w6o44uar.jpg"></a>

                            <a href="/Default.aspx">
                                <img class="img-responsive" alt="#" title="#" src="../img/wkp6gxcyz0.jpg"></a>


                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section id="promotetop" class="bg_wood">
    <div class="main_promotetop">
        <div class="container">
            <div class="row-fluid">
                <!-- MODULE Block leohighlightcarousel -->
                <div id="blockleohighlightcarousel" class="block products_block exclusive blockleohighlightcarousel">

                    <div class="block_content">

                        <div class="highlight-carousel row-fluid">

                            <div class="highlight-image hidden-phone span3">
                                <img alt="Đồ gỗ mỹ nghệ NGUYỄN DIỆP" src="../img/hinhbieutttuong.jpg" />
                                <h2 class="title_block">Sản phẩm tiêu biểu

                                </h2>
                            </div>


                            <div class="span9">
                                <div class="highlight-info">
                                    <h3 class="title_block">Chào mừng bạn đến với website Đồ Gỗ Mỹ Nghệ Nguyễn Diệp</h3>
                                    Hãy mua sản phẩm của chúng tôi, để nhận được nhiều ưu đãi nhất.
                                </div>

                                <div class=" carousel slide" id="leohighlightcarousel">

                                    <a class="carousel-control left" href="#leohighlightcarousel" data-slide="prev"></a>
                                    <a class="carousel-control right" href="#leohighlightcarousel" data-slide="next"></a>
                                    <div class="carousel-inner">

                                        <asp:ListView ID="ListView1" runat="server" DataSourceID="ds_product" ItemPlaceholderID="mygroup" GroupItemCount="3">
                                            <GroupTemplate>
                                                <div class="item active_temp">
                                                    <div runat="server" id="mygroup" class="row-fluid">
                                                    </div>
                                                </div>
                                            </GroupTemplate>
                                            <ItemTemplate>
                                                <div class="span4 product_block ajax_block_product first_item p-item clearfix thumnail">
                                                    <div class="list-products thumnail">
                                                        <div class="product-container clearfix thumnail">
                                                            <div class="center_block">
                                                                <a href='Detail.aspx?id=<%# Eval("id_products") %>&&id_type=<%# Eval("type_products") %>' class="product_img_link" title="<%#Eval("name_products")%>">
                                                                    <img src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="" class="img-responsive" />
                                                                </a>

                                                                <span class="leo-icon-plus ajax_add_to_cart_button" data-id="3324">
                                                                    <a class="iframe_muahang" href="/DatHang.aspx?id=3324" title="<%#Eval("name_products")%>">&nbsp;</a>
                                                                </span>

                                                            </div>
                                                            <div class="right_block">
                                                              
                                                                <h3 class="s_title_block">
                                                                    <a href='Detail.aspx?id=<%# Eval("id_products") %>&&id_type=<%# Eval("type_products") %>' title="<%#Eval("name_products")%>"><%#Eval("name_products")%></a>
                                                                </h3>
                                                                  <h3><div style="float:left;font-style:oblique;color:blue"> Mã sản phẩm : <%# Eval("id_products") %></div></h3><br />
                                                                <div class="product_desc"><%#Eval("name_products")%></div>
                                                                <div class="content_price">
                                                                    <span class="price"><b>Liên hệ</b></span>
                                                                    <br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </ItemTemplate>
                                        </asp:ListView>
                                        <asp:SqlDataSource ID="ds_product" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1 and tieubieu_products = 0 order by order_products, id_products desc"></asp:SqlDataSource>
                                        <asp:HiddenField ID="hd_type_product" runat="server" />






                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /MODULE Block leohighlightcarousel -->
                <script>
                    $(document).ready(function () {
                        $(".active_temp:eq(0)").addClass("active");
                        $('.carousel').each(function () {
                            $(this).carousel({
                                pause: true,
                                interval: false
                            });
                        });
                    });
                </script>
              <%--  <div class="customhtml block " id="leo-customhtml-ptop">
                    <div class="block_content">

                        <div class='span6'>
                            <a href='#' target="_blank">
                                <img alt='#' title="#" src='./img/0t4tfvw94x.jpg' /></a>
                        </div>

                        <div class='span6'>
                            <a href='#' target="_blank">
                                <img alt='#' title="#" src='../img/fmnn2xfbey.jpg' /></a>
                        </div>




                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</section>
