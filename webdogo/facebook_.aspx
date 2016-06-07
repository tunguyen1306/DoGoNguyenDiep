<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="facebook_.aspx.cs" Inherits="webdogo.facebook_" %>

<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>
<%@ Register Src="~/ctr/ctr_right.ascx" TagPrefix="uc1" TagName="ctr_right" %>
<%@ Register Src="~/ctr/ctr_silde_short.ascx" TagPrefix="uc1" TagName="ctr_silde_short" %>
<%@ Register Src="~/ctr/ctr_header.ascx" TagPrefix="uc1" TagName="ctr_header" %>
<%@ Register Src="~/ctr/ctr_fb.ascx" TagPrefix="uc1" TagName="ctr_fb" %>






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
 <%--   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"
        type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
        type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
        rel="Stylesheet" type="text/css" />--%>
    <script>
        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: '324503021040953', // App ID

                status: true, // check login status
                cookie: true, // enable cookies to allow the server to access the session
                xfbml: true  // parse XFBML
            });
            FB.Event.subscribe('auth.authResponseChange', function (response) {
                if (response.status === 'connected') {

                    // the user is logged in and has authenticated your
                    // app, and response.authResponse supplies
                    // the user's ID, a valid access token, a signed
                    // request, and the time the access token 
                    // and signed request each expire

                    var uid = response.authResponse.userID;
                    var accessToken = response.authResponse.accessToken;
                    document.getElementById("hd_fb").Value = accessToken;

                    setCookie("token", accessToken, 3);
                    // TODO: Handle the access token

                } else if (response.status === 'not_authorized') {
                    // the user is logged in to Facebook, 
                    // but has not authenticated your app
                } else {
                    // the user isn't logged in to Facebook.
                }
            });
            // Additional initialization code here
        };

        // Load the SDK Asynchronously
        (function (d) {
            var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement('script'); js.id = id; js.async = true;
            js.src = "//connect.facebook.net/en_US/all.js";
            ref.parentNode.insertBefore(js, ref);
        }(document));
        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + cvalue + "; " + expires;
        }
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1);
                if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
            }
            return "";
        }

    </script>
  
  
    
   <%-- <script src="js/jquery.min.js"></script>--%>
    <script src="js/jquery-ui.min.js"></script>
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txt_timkiem.ClientID %>").autocomplete({
              
                source: function (request, response) {
                    $.ajax({
                        url: '/autocomplete.asmx/GetCustomers',
                    data: "{ 'prefix': '" + request.term + "'}",
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        response($.map(data.d, function (item) {
                            return {
                                label: item.split('-')[0],
                                val: item.split('-')[1]
                            }
                        }))
                    },
                    error: function (response) {
                       // debugger;
                        alert("tt"+response.responseText);
                    },
                    failure: function (response) {
                       // debugger;
                       alert(response.responseText);
                    }
                });
            },
                select: function (e, i) {
                    $("#<%=hfCustomerId.ClientID %>").val(i.item.val);
            },
            minLength: 1
            });

        });
    </script>
    <div id="fb-root"></div>
    <%--div class="fb-login-button" style="top: -66px; left: 595px;" data-scope="publish_actions,read_stream,manage_pages,email,publish_actions,manage_notifications,user_likes" data-show-faces="true" data-width="400" data-max-rows="1"></div>--%>
    <fb:login-button scope="publish_actions,read_stream,manage_pages,email,publish_actions,manage_notifications,user_likes" onlogin="checkLoginState();">
</fb:login-button>

    <div id="status">
    </div>


    <section class="span9" id="Section1">



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



        <!-- /MODULE Home Featured Products -->



    </section>

    <section id="center_column" class="span9">

        <div class="block products_block clearfix" id="Div1">
            <h2 class="bg_gray"><span class="title_block_content">Send mail</span></h2>
            <div style="background-color: #fff; margin-top: -10px; padding: 15px; font-family: Tahoma !important; font-size: 13px !important; line-height: 25px !important;" class="block_content">
                <table style="text-align: left; padding: 5px;" class="tempTable">
                    <tbody>
                        <tr>
                            <td colspan="3">
                                <div class="text-center" style="text-align: center">
                                    <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
                                    <asp:Button ID="btn_gui" Style="height: 30px;" CssClass ="leo-button btn" runat="server" Text="Send mail" OnClick="btn_gui_Click" />
                                    <asp:SqlDataSource ID="ds_mail" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_mail]" InsertCommand="INSERT INTO dbo.wb_mail(mail_name) VALUES (@mail_name)">
                                        <InsertParameters>
                                            <asp:ControlParameter ControlID="txt_mail" Name="mail_name" PropertyName="Text" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>


                                </div>
                            </td>
                        </tr>


                    </tbody>
                </table>
                <asp:GridView ID="gv_mail" runat="server" DataSourceID="ds_mail" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanged="gv_mail_PageIndexChanged" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:BoundField DataField="mail_name" HeaderText="Name Mail" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                   

                </asp:GridView>
            </div>

        </div>

        <!-- MODULE Home Featured Products -->
        <asp:SqlDataSource ID="ds_products_fb" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1 and id_products=@id_products order by order_products">
            <SelectParameters>
                <asp:ControlParameter ControlID="hd_id_fb" Name="id_products" PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:HiddenField ID="hd_id_fb" runat="server" />
        <div id="featured-products_block_center" class="block products_block clearfix thumnail">
            <h2 class="bg_gray"><span class="title_block_content">Sản phẩm mới</span><span style="float:right;"><asp:TextBox ID="txt_timkiem" runat="server"></asp:TextBox><asp:Button ID="btn_timkiem" runat="server" Text="Tìm kiếm" Style="height: 30px;" class="leo-button btn" OnClick="btn_timkiem_Click" /></span></h2>
            <asp:Label ID="lbl_thongbao" runat="server"></asp:Label>
            
            <asp:HiddenField ID="hfCustomerId" runat="server" />
            <div class="block_content">

                <div class="row-fluid">
                    <asp:HiddenField ID="hd_fb" ClientIDMode="Static" runat="server" />
                    <asp:ListView ID="lv_products" runat="server" DataSourceID="ds_product">
                        <ItemTemplate>

                            <div class="p-item span4 ajax_block_product product_block item thumnail">
                                <div class="list-products thumnail">
                                    <div class="product-container clearfix">
                                        <div class="center_block">
                                            <a href='Detail.aspx?id=<%# Eval("id_products") %>&&id_type=<%# Eval("type_products") %>' title="<%#Eval("name_products")%>">
                                                <img src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="" class="img-responsive">
                                            </a>


                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </div>
                                        <div class="right_block">
                                            <h3 class="s_title_block">
                                                <div style="float: left; font-style: oblique; color: blue">Giá: <%# Eval("price_products") %></div>
                                            </h3>
                                            <h3 class="s_title_block">
                                                <div style="float: left; font-style: oblique; color: blue">Mã sản phẩm : <%# Eval("id_products") %></div>
                                            </h3>
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

                                            <asp:Button ID="bt_fb" Style="height: 30px;" class="leo-button btn" runat="server" CommandArgument='<%#Eval("id_products")%>' Text="Post Facebook" OnClick="Button1_Click" />

                                        </div>

                                    </div>
                                </div>


                            </div>

                        </ItemTemplate>
                    </asp:ListView>

                </div>


                <asp:SqlDataSource ID="ds_product" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1 and id_products =@id_products  order by order_products, id_products desc">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hfCustomerId" Name="id_products" PropertyName="Value" />
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



        <!-- /MODULE Home Featured Products -->



    </section>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Right" runat="server">
    <uc1:ctr_right runat="server" ID="ctr_right" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footer" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
