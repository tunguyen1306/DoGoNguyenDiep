using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webdogo.ctr
{
    public partial class ctr_products : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                hd_type_product.Value = Request.QueryString["id"];


            }

            if (Request.QueryString["id_menu"] != null)
            {
                hd_id_menu_products.Value = Request.QueryString["id_menu"];
                DataTable dt = (ds_menu.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                if (dt != null)
                {
                    lbl_name.Text = dt.Rows[0]["menu_products_name"].ToString();
                }
            }
        }
    }
}