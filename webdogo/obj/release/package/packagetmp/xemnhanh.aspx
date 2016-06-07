<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xemnhanh.aspx.cs" Inherits="webdogo.xemnhanh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rpt_product_top" runat="server" DataSourceID="ds_product">
                <ItemTemplate>
                    <div id="pb-right-column" class="span5">
                        <!-- product img-->
                        <div class="alld_product">
                            <div class="row-fluid">

                                <!-- thumbnails -->
                                <div id="views_block" class="row-fluid ">
                                    <div id="thumbs_list">
                                        <ul id="thumbs_list_frame" style="list-style: none;">


                                            <li id="thumbnail_135">
                                                <img width="315" height="350" id="thumb_135" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img_main_products").ToString().Split('_')[0] %>/<%#Eval("img_main_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                            </li>
                                            <li id="thumbnail_136">
                                                <img width="315" height="350" id="Img1" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img1_products").ToString().Split('_')[0] %>/<%#Eval("img1_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                            </li>
                                            <li id="thumbnail_137">
                                                <img width="315" height="350" id="Img2" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img2_products").ToString().Split('_')[0] %>/<%#Eval("img2_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                            </li>
                                            <li id="Li1">
                                                <img width="315" height="350" id="Img3" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img3_products").ToString().Split('_')[0] %>/<%#Eval("img3_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                            </li>
                                            <li id="Li2">
                                                <img width="315" height="350" id="Img4" src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("img4_products").ToString().Split('_')[0] %>/<%#Eval("img4_products") %>" alt="" class="hinh_phu thum_sp img-responsive">
                                            </li>



                                        </ul>
                                    </div>

                                    <!-- usefull links-->
                                </div>
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
            <h2 class="bg_gray" style="background: #F3F3F1; text-align: center;"><span class="title_block_content"><a href='Detail.aspx?id=<%# Eval("id_products") %>' title="<%#Eval("name_products")%>">Xem Chi Tiết
                                           
            </a></span></h2>



            <asp:SqlDataSource ID="ds_product" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where  status_products=1 and type_products=@type_products and id_products=@id_products order by order_products">
                <SelectParameters>
                    <asp:ControlParameter ControlID="hd_type_product" Name="type_products" PropertyName="Value" />
                    <asp:ControlParameter ControlID="hd_id_products" Name="id_products" PropertyName="Value" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:HiddenField ID="hd_type_product" runat="server" />
            <asp:HiddenField ID="hd_id_products" runat="server" />
        </div>
    </form>
</body>
</html>
