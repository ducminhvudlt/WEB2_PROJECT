using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserName"] != null)
            {
                lblUserName.Text = Session["UserName"].ToString();
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            Session["UserName"] = null;
            Response.Redirect("~/Login.aspx");
        }
    }
}
