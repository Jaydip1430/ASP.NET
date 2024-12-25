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
        if (Session["user_id"] == null)
        {
            Response.Redirect("login.aspx");
        }

        con = new ConnectionClass();
        string q = "select * from product where p_id=" + Request.QueryString["p_id"].ToString() ;
        rptrProduct.DataSource = con.allRecord(q);
        rptrProduct.DataBind();

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string userid = Session["user_id"].ToString();
        string qty = "1";
        string p_id = Request.QueryString["p_id"].ToString();

        string q = "insert into addtocart(userid,quantity,p_id)values('" +
            userid + "','" +
            qty + "','" +
            p_id + "')";

        con.allQuery(q);
        Response.Redirect("cart.aspx");

     }
}