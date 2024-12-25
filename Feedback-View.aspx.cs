using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        if (Request.QueryString["feedback_id"] != null)
        {
            con.allQuery("delete from feedback where feedback_id=" + Request.QueryString["feedback_id"].ToString());

        }
        rptr.DataSource = con.allRecord("select * from feedback");
        rptr.DataBind();
    }
}