<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_header_1.ascx.cs" Inherits="webdogo.ctr.ctr_header_1" %>
<header id="header">
    <section class="header">
        <div class="container">
            <div class="row-fluid">
                <div class="span3">
                    <a id="header_logo" style="width: 230px; height: 150px;" href="/Default.aspx" title="Đồ gỗ mỹ nghệ NGUYỄN DIỆP">
                        <img src="/img/nguyen-diep2.png" alt="Đồ gỗ mỹ nghệ NGUYỄN DIỆP">
                    </a>
                </div>
                <div class="span9">
                    <section class="topbar">
                        <div class="row-fluid">

                            <div id="header_user">
                                <%-- <div class="leo-button btn"><a class="leo-mobile" href="/Default.aspx#">Quick Link</a></div>--%>
                                <div id="header_user_info" style="display: block;">
                                    <%-- túdjhfsdjf--%>
                                </div>
                            </div>
                            <!-- block seach mobile -->
                            <div class="block-search-top inline cboxElement" style="top: 64px; right: 3px; height: 100px; position: absolute; display: none; padding-top: 1px;">
                                <div class="item-top">Search</div>
                                <!-- Block search module TOP -->

                                <div id="search_block_top">
                                    <div class="leo-search-button">&nbsp;</div>
                                    <div id="searchbox">
                                        <p>
                                            <label for="search_query_top">
                                                <!-- image on background -->
                                            </label>

                                            <input name="ctl00$headControl$txtSearch" type="text" id="ctl00_headControl_txtSearch" class="search_query">
                                            <input type="submit" name="ctl00$headControl$btnSearch" value="Tìm kiếm" id="ctl00_headControl_btnSearch" class="button">
                                        </p>
                                    </div>
                                </div>


                            </div>
                            <!-- /Block search module TOP -->

                        </div>
                    </section>
                <%--    <nav id="topnavigation">
                        <div class="row-fluid">
                            <div class="navbar">
                                <div class="navbar-inner">
                                    <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </a>
                                    <div class="nav-collapse collapse">
                                        <ul class="nav megamenu">
                                            <asp:Repeater ID="rpt_thongtin" runat="server" DataSourceID="ds_load_menu">
                                                <ItemTemplate>
                                                    <li><a href='<%#Eval("menu_links")%>'><%#Eval("menu_name")%></a>
                                                        <ul>
                                                            <li>
                                                                <a href='#'>tyhyhyt</a>

                                                            </li>

                                                        </ul>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <asp:Repeater ID="rpt_menu_danhmuc" runat="server" DataSourceID="ds_load_menu_products">
                                                <ItemTemplate>
                                                    <li><a href='products.aspx?id_menu=<%#Eval("id_menu_products")%>&&id=<%#Eval("id_menu_products")%>'><%#Eval("menu_products_name")%></a></li>

                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>

                                    <asp:SqlDataSource ID="ds_load_menu_products" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_menu_products] where menu_status=1   order by menu_products_order "></asp:SqlDataSource>
                                    <asp:HiddenField ID="hd_load_products_top" runat="server" />
                                    <asp:SqlDataSource ID="ds_load_menu" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_menu] where menu_status=1 order by menu_order"></asp:SqlDataSource>


                                </div>
                            </div>
                            <script type="text/javascript">
                                // <![CDATA[
                                var currentURL = window.location;
                                currentURL = String(currentURL);
                                currentURL = currentURL.replace("https:///", "").replace("http://", "").replace("www.", "");

                                $(".megamenu > li > a").each(function () {
                                    menuURL = $(this).attr("href").replace("https:///", "").replace("http://", "").replace("www.", "");
                                    if (currentURL == menuURL) {
                                        $(this).parent().addClass("active");
                                        return false;
                                    }
                                });
                                // ]]>
                            </script>
                        </div>
                    </nav>--%>
                 
                </div>
            </div>
        </div>
    </section>
</header>

