<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="facebook.aspx.cs" Inherits="webdogo.facebook" %>

<%@ Register Src="~/ctr/ctr_header.ascx" TagPrefix="uc1" TagName="ctr_header" %>
<%@ Register Src="~/ctr/ctr_right.ascx" TagPrefix="uc1" TagName="ctr_right" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>









<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <uc1:ctr_header runat="server" ID="ctr_header" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="silde" runat="server">
    
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
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
<div class="block products_block clearfix" id="Div1">
    <h2 class="bg_gray"><span class="title_block_content">Send mail</span></h2>
    <div style="background-color:#fff;margin-top:-10px;padding:15px;font-family:Tahoma !important;font-size:13px !important;line-height:25px !important;" class="block_content">
        <table style="text-align:left;padding:5px;" class="tempTable">
            <tbody><tr>
                <td colspan="3">
                    <div class="text-center" style="text-align: center">
                          <asp:Button ID="btn_gui" Style="height: 30px;" class="leo-button btn" runat="server" Text="Send mail"  OnClick="btn_gui_Click" />
    <asp:SqlDataSource ID="ds_mail" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_mail]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server"></asp:Label>


                    </div>
                </td>
            </tr>
          
            
        </tbody></table>
    </div>
    
</div>


<!-- /MODULE Home Featured Products -->


	
</section>
 
<section id="center_column" class="span9">



    <!-- MODULE Home Featured Products -->

    
<%--<script>
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
                alert(accessToken);
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

</script>--%>
<script>
    // This is called with the results from from FB.getLoginStatus().
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        if (response.status === 'connected') {
            // Logged into your app and Facebook.
            testAPI();
        } else if (response.status === 'not_authorized') {
            // The person is logged into Facebook, but not your app.
            document.getElementById('status').innerHTML = 'Please log ' +
              'into this app.';
        } else {
            // The person is not logged into Facebook, so we're not sure if
            // they are logged into this app or not.
            document.getElementById('status').innerHTML = 'Please log ' +
              'into Facebook.';
        }
    }

    // This function is called when someone finishes with the Login
    // Button.  See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState() {
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });
    }

    window.fbAsyncInit = function () {
        FB.init({
            appId: '324503021040953',
            cookie: true,  // enable cookies to allow the server to access 
            // the session
            xfbml: true,  // parse social plugins on this page
            version: 'v2.1' // use version 2.1
        });

        // Now that we've initialized the JavaScript SDK, we call 
        // FB.getLoginStatus().  This function gets the state of the
        // person visiting this page and can return one of three states to
        // the callback you provide.  They can be:
        //
        // 1. Logged into your app ('connected')
        // 2. Logged into Facebook, but not your app ('not_authorized')
        // 3. Not logged into Facebook and can't tell if they are logged into
        //    your app or not.
        //
        // These three cases are handled in the callback function.

        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });

    };

    // Load the SDK asynchronously
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    // Here we run a very simple test of the Graph API after login is
    // successful.  See statusChangeCallback() for when this call is made.
    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function (response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML =
              'Thanks for logging in, ' + response.name + '!';
        });
    }
</script>

    
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

<div id="status">
</div>
 <asp:SqlDataSource ID="ds_products_fb" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1 and id_products=@id_products order by order_products">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="hd_id_fb" Name="id_products" PropertyName="Value" />
                                    </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:HiddenField ID="hd_id_fb" runat="server" />
    <div id="featured-products_block_center" class="block products_block clearfix thumnail">
        <h2 class="bg_gray"><span class="title_block_content">Sản phẩm mới   <asp:Label ID="lbl_thongbao" runat="server"></asp:Label>
            
        </span></h2>
   
                <%--    <div id="fb-root"></div>

                    <div class="fb-login-button" style="top: -66px; left: 595px;" data-scope="email,publish_actions,manage_notifications,user_likes" data-show-faces="true" data-width="400" data-max-rows="1"></div>--%>

              
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


                                    </div>
                                    <div class="right_block">
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
