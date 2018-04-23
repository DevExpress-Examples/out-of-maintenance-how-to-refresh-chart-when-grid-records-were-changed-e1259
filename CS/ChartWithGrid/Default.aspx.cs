using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace ChartWithGrid
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void WebChartControl1_CustomCallback(object sender, DevExpress.XtraCharts.Web.CustomCallbackEventArgs e)
        {
            if (e.Parameter == "GridChanged")
                WebChartControl1.DataBind();
        }
    }
}
