using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class order_View : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        if (Request.QueryString["order_id"] != null)
        {
            con.allQuery("delete from Orders where order_id=" + Request.QueryString["order_id"].ToString());

        }
        rptr.DataSource = con.allRecord("select * from Orders");
        rptr.DataBind();
    }
}