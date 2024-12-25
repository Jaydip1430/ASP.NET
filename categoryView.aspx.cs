using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class categoryAdd : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        if (Request.QueryString["cat_id"] != null)
        {
            con.allQuery("delete from category where cat_id=" + Request.QueryString["cat_id"].ToString());

        }

        rptr.DataSource = con.allRecord("select * from category");
        rptr.DataBind();
    }
}