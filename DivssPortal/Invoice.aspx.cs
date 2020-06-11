using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DivssPortal.DivssServiceRef;

namespace DivssPortal
{
    public partial class Invoice : System.Web.UI.Page
    {
        DivssService webService = new DivssService();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usercode"] == null)
            {
                Response.Redirect("Loging.aspx");
            }

        }

        protected void txtSearch_Click(object sender, EventArgs e)
        {
            string InvNo = txtInvNo.Text;
            string CompId = "CP001";
            SearchInvoiceMastDetails(CompId, InvNo);
            SearchInvoiceDetails(CompId, InvNo);
        }

        public void SearchInvoiceDetails(string CompID, string InvNo)
        {
            List<INV_DETAILS> Details = webService.GelAllInvDetail_DetailsByInvNo(InvNo, CompID).ToList();
            InvDetailsGrid.DataSource = Details;
            InvDetailsGrid.DataBind();

        }

        public void SearchInvoiceMastDetails(string CompID, string InvNo)
        {
            INV_MAST Details = webService.GelAllInvMastDetailsByInvNo(InvNo, CompID);
            CUSTOMER_MAST CustDetails = webService.GetCustomersDetailsById(Details.CUSTOMER_CODE);

            lblClientName.Text = CustDetails.CUST_NAME;
            lblClientAddress.Text = CustDetails.ADDRESS;
            lblinvoiceNum.Text = Details.INV_NO;
            lblInvdate.Text = Convert.ToString(Details.INV_DATE);
            lblInvoiceAmt.Text = Convert.ToString(Details.TOTAL);
            lblInvTot.Text = Convert.ToString(Details.TOTAL);
        }


    }
}