using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webdogo.ctr
{
    public partial class ctr_detail_sp : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                hd_id.Value = Request.QueryString["id"];
            }
            if (Request.QueryString["id_type"] != null)
            {
                hd_type_product.Value = Request.QueryString["id_type"];
            }

        }
    }
}