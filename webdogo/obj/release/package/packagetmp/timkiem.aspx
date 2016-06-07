<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="timkiem.aspx.cs" Inherits="webdogo.timkiem" %>


<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="fb" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="silde" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <script src="js/devoops.js"></script>
    <%--    <script src="js/devoops.min.js"></script>--%>
    <link href="plugins/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <link href="plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="plugins/xcharts/xcharts.min.css" rel="stylesheet">
    <link href="plugins/select2/select2.css" rel="stylesheet">
    <link href="css/style_timkiem.css" rel="stylesheet" />
    <link href="css/style.min.css" rel="stylesheet" />
    <script src="js/jquery-1.7.2.min.js"></script>

    <section id="center_column" class="span9">

        <div class="block products_block clearfix" id="Div1">
            <h2 class="bg_gray"><span class="title_block_content">Sản phẩm mới</span><span style="float: right;"><asp:TextBox ID="txt_timkiem" runat="server"></asp:TextBox><asp:Button ID="btn_timkiem" runat="server" Text="Tìm kiếm" Style="height: 30px;" CssClass="leo-button btn" /></span></h2>
            <div style="background-color: #fff; margin-top: -10px; padding: 15px; font-family: Tahoma !important; font-size: 13px !important; line-height: 25px !important;" class="block_content">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-content no-padding">
                            <table class="table table-bordered table-striped table-hover table-heading table-datatable" id="datatable-1">
                             
                             <asp:ListView ID="lv_products" runat="server" DataSourceID="ds_product">
                        <ItemTemplate>

                            <div class="p-item span4 ajax_block_product product_block item thumnail">
                                <div class="list-products thumnail">
                                    <div class="product-container clearfix">
                                        <div class="center_block">
                                            <a href='Detail.aspx?id=<%# Eval("id_products") %>&&id_type=<%# Eval("type_products") %>' title="<%#Eval("name_products")%>">
                                                <img src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="" class="img-responsive">
                                            </a>


                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

                                            

                                        </div>

                                    </div>
                                </div>


                            </div>

                        </ItemTemplate>
                    </asp:ListView>

                            </table>

                            <asp:SqlDataSource ID="ds_product" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1   order by order_products, id_products desc"></asp:SqlDataSource>



                        </div>
                    </div>
                </div>

            </div>

        </div>

    </section>
    <script type="text/javascript">
        // Run Datables plugin and create 3 variants of settings
        function AllTables() {
            TestTable1();
            TestTable2();
            TestTable3();
            LoadSelect2Script(MakeSelect2);
        }
        function MakeSelect2() {
            $('select').select2();
            $('.dataTables_filter').each(function () {
                $(this).find('label input[type=text]').attr('placeholder', 'Search');
            });
        }
        $(document).ready(function () {
            // Load Datatables and run plugin on tables 
            LoadDataTablesScripts(AllTables);
            // Add Drag-n-Drop feature
            //WinMove();
        });
</script>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="footer" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
