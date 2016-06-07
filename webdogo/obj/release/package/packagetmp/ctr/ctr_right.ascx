<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_right.ascx.cs" Inherits="webdogo.ctr.ctr_right" %>
<section class="column span3 omega" id="right_column">
    <!-- Block categories module -->
    <div class="block" id="categories_block_left">
        <h4 class="title_block title_blue">Danh mục</h4>
        <div class="block_content">
            <ul style="display: block;" class="tree dynamized">
                <asp:Repeater ID="rpt_thongtin" runat="server" DataSourceID="ds_load_menu">
                    <ItemTemplate>
                        <li><a href='<%#Eval("menu_links")%>'><%#Eval("menu_name")%></a></li>

                    </ItemTemplate>
                </asp:Repeater>
                <asp:Repeater ID="rpt_menu_danhmuc" runat="server" DataSourceID="ds_load_menu_products">
                    <ItemTemplate>
                        <li><a href='products.aspx?id_menu=<%#Eval("id_menu_products")%>&&id=<%#Eval("id_menu_products")%>'><%#Eval("menu_products_name")%></a></li>

                    </ItemTemplate>
                </asp:Repeater>
            </ul>



            <asp:SqlDataSource ID="ds_load_menu" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_menu] where menu_status=1 order by menu_order"></asp:SqlDataSource>
            <asp:SqlDataSource ID="ds_load_menu_products" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_menu_products] where menu_status=1   order by menu_products_order "></asp:SqlDataSource>
            <asp:HiddenField ID="hd_load_products_top" runat="server" />

            <script type="text/javascript">
                // &lt;![CDATA[
                // we hide the tree only if JavaScript is activated
                $('div#categories_block_left ul.dhtml').hide();
                // ]]&gt;
            </script>
        </div>
    </div>
    <!-- /Block categories module -->






    <!-- MODULE Block cart -->
    <div class="block exclusive block_wood" id="cart_block">
        <h4 class="title_block">
            <a rel="nofollow" title="Video" href="//video/video_link_home/1000">Video</a>
            <span class="hidden" id="block_cart_expand">&nbsp;</span>
            <span id="block_cart_collapse">&nbsp;</span>
        </h4>
        <div class="block_content">
            <!-- block summary -->

            <!-- block list of products -->
            <div style="text-align: center;" class="expanded" id="cart_block_list">
                <a title="Đồ Gỗ Mỹ Nghệ Nguyễn Diệp" class="youtube cboxElement" href="http://www.youtube.com/watch?v=eAzFvgKPIOw">
                    <img alt="Đồ Gỗ Mỹ Nghệ Nguyễn Diệp" src="./img/f425e4nq9w.jpg" style="width: 231px; height: 165px" class="img-responsive">
                </a>
                <br>
                <a title="Đồ Gỗ Mỹ Nghệ Nguyễn Diệp" class="youtube cboxElement" href="http://www.youtube.com/watch?v=eAzFvgKPIOw">
                    <b style="font-size: 13px; line-height: 25px;">Đồ Gỗ Mỹ Nghệ Nguyễn Diệp</b>
                </a>
            </div>
        </div>
    </div>
    <!-- /MODULE Block cart -->





    <!-- Block categories module -->
    <div id="categories_block_left" class="block">
        <h4 class="title_block title_blue">Thống kê truy cập</h4>
        <div class="block_content">
            <table class="table_thongke">

                <tbody>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/1.png">
                            Đang online:</td>
                        <td style="width: 38%; display: inline-block !important;">3</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/2.png">Hôm nay:</td>
                        <td style="width: 38%; display: inline-block !important;">22</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/3.png">
                            Hôm qua:</td>
                        <td style="width: 38%; display: inline-block !important;">49</td>
                    </tr>


                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/4.png">
                            Tuần này:</td>
                        <td style="width: 38%; display: inline-block !important;">194</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/1.png">
                            Tuần trước:</td>
                        <td style="width: 38%; display: inline-block !important;">724</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/2.png">
                            Tháng này:</td>
                        <td style="width: 38%; display: inline-block !important;">1,345</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/3.png">
                            Tháng trước:</td>
                        <td style="width: 38%; display: inline-block !important;">78</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                            <img src="./img/5.png">
                            Tất cả:</td>
                        <td style="width: 38%; display: inline-block !important;">4,558</td>
                    </tr>
                </tbody>
            </table>
            <!-- Histats.com  START  (standard)-->
            <!-- Histats.com  END  -->

        </div>
    </div>
    <!-- /Block categories module -->


    <!-- Block categories module -->
    <div id="categories_block_left" class="block">
        <h4 class="title_block title_blue">FanPage Facebook</h4>
        <div class="block_content">
             <div class="fb-like-box" data-href="https://www.facebook.com/pages/%C4%90%E1%BB%93-G%E1%BB%97-M%E1%BB%B9-Ngh%E1%BB%87-Nguy%E1%BB%85n-Di%E1%BB%87p/1400040813563351?ref=hl" data-width="232px" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
        <%--    <table class="table_thongke">

                <tbody>
                    <tr>
                        <td style="width: 50%; padding-left: 10px; display: inline-block !important;">
                           
                        </td>
                    </tr>

                </tbody>
            </table>--%>
            <!-- Histats.com  START  (standard)-->
            <!-- Histats.com  END  -->

        </div>
    </div>
</section>
<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
