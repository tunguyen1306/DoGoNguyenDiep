using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webdogo
{
    public partial class xemnhanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                hd_type_product.Value = Request.QueryString["id"];
            }
            if (Request.QueryString["id_pro"] != null)
            {
                hd_id_products.Value = Request.QueryString["id_pro"];
            }
        }
    }
}