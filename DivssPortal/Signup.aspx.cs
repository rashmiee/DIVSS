using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DivssPortal.DivssServiceRef;

namespace DivssPortal
{
    public partial class Signup : System.Web.UI.Page
    {
        DivssService webService = new DivssService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loging_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string Email = txtEmail.Text;
            string Password = txtPassword.Text;

            bool status = webService.InsertuserInfoSignup(username, Password, Email);

            if (status==true)
            {
                Session["Usercode"] = username;
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}