using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shop : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new ConnectionClass();
        string q = "select * from product";
        if (Request.QueryString["cat_id"] != null)
        {
            q = "select * from product where cat_id = " + Request.QueryString["cat_id"].ToString();

        }
        rptrProduct.DataSource = con.allRecord(q);
        rptrProduct.DataBind();

    }
}