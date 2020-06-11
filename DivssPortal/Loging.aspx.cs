using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DivssPortal.DivssServiceRef;

namespace DivssPortal
{
    public partial class Loging : System.Web.UI.Page
    {
        DivssService webService = new DivssService();

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Loging_Click(object sender, EventArgs e)
        {
            USER_INFO details = new USER_INFO();
            details = webService.GeluserInfoLoging(TxtUsername.Text, txtPassword.Text);

            if(details.USER_NAME != "" || details.USER_NAME != null)
            {
                Session["Usercode"] = details.USER_NAME;
                Response.Redirect("Dashboard.aspx");
            }
        }

    }
}