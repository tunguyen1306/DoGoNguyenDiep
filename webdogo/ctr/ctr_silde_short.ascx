<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_silde_short.ascx.cs" Inherits="webdogo.ctr.ctr_silde_short" %>

    <style>
        #slideshow1 {
            padding-bottom: 0px;
        }

        .camera_wrap1 {
            display: block;
            height: 304px !important;
            margin-bottom: 24px;
            min-height: 304px !important;
        }

        .leo-adv1 a {
            display: none;
        }

        .leocamera_container1, .row-fluid .span81 {
            width: 100%;
        }

        #slideshow1 .main_silde1 {
            padding: 10px 0;
        }
    </style>

<section id="slideshow1">
    <div class="main_silde1">
        <div class="container">
            <div class="row-fluid">
                <div class="leocamera_container1 span81">
                    <div class="camera_wrap1 default" id="leo-camera" style="margin-bottom: 23px; height: 470px;">

                        <asp:Repeater ID="rpt_banner" runat="server" DataSourceID="ds_banner">
                            <ItemTemplate>
                                <div data-thumb="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("image_banner").ToString().Split('_')[0] %>/<%#Eval("image_banner") %>" data-src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("image_banner").ToString().Split('_')[0] %>/<%#Eval("image_banner") %>">
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="ds_banner" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_banner] where status_banner=1 and type_banner=0 order by order_banner"></asp:SqlDataSource>


                    </div>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $('#leo-camera').camera({
                            height: '304px',
                            alignment: 'center',
                            autoAdvance: true,
                            barDirection: 'leftToRight',
                            barPosition: 'top',
                            cols: 6,
                            easing: 'easeInOutExpo',
                            fx: 'random',
                            hover: false,
                            loader: 'pie',
                            navigation: true,
                            navigationHover: true,
                            pagination: true,
                            playPause: true,
                            pauseOnClick: false,
                            thumbnails: false
                        });
                    });
</script>
             
            </div>
        </div>
    </div>
</section>
