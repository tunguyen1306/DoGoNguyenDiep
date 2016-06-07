<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_fb.ascx.cs" Inherits="webdogo.ctr.ctr_fb" %>

<asp:Repeater ID="rpt_de_products" runat="server" DataSourceID="ds_product">
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

<asp:SqlDataSource ID="ds_product" runat="server" ConnectionString="<%$ ConnectionStrings:dogonguyendiepConnectionString %>" SelectCommand="SELECT * FROM [wb_products] where id_products=@id and status_products=1 order by order_products">
    <SelectParameters>
        <asp:QueryStringParameter Name="id" QueryStringField="id_products" DefaultValue="17" />
    </SelectParameters>


</asp:SqlDataSource>

