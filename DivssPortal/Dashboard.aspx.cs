using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DivssPortal.DivssServiceRef;

namespace DivssPortal
{
    public partial class Dashboard : System.Web.UI.Page
    {
        DivssService webService = new DivssService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Usercode"] == null)
            {
                Response.Redirect("Loging.aspx");
            }
            else
            {
                INV_MAST Details = new INV_MAST();

                Details = webService.GetLatestValuesForDashboard("CP001");

                string salesstr = Convert.ToString(Details.TOTAL);
                int index = salesstr.IndexOf('.');
                if (index > 0)
                {
                    lblSales.Text = salesstr.Substring(0, index);
                }

                lblCustomerVisited.Text = Convert.ToString(Details.AUTO_ID);
            }

            
        }
    }
}