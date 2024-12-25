using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class productView : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        if (Request.QueryString["p_id"] != null)
        {
            con.allQuery("delete from product where p_id=" + Request.QueryString["p_id"].ToString());

        }
        rptr.DataSource = con.allRecord("select * from product");
        rptr.DataBind();
    }
}