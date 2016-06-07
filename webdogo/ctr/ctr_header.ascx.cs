using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webdogo.ctr
{
    public partial class ctr_header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rpt_thongtin_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv != null)
            {
                Repeater rp = e.Item.FindControl("rpmenucon") as Repeater;
                hdid.Value = dv.Row["id_menu"].ToString();
                DataTable dt = (dsMenucon.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();

            }
        }
    }
}