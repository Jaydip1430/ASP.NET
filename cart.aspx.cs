using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cart : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new ConnectionClass();

        if (Request.QueryString["cart_id"] != null)
        {
            con.allQuery("delete from addtocart where cart_id=" + Request.QueryString["cart_id"].ToString());
        }
        string user_id = Session["user_id"].ToString();
        string q = "select p.p_name,p.p_image,p.p_price,a.cart_id,a.quantity, p.p_price * a.quantity as total from product p,addtocart a where p.p_id=a.p_id and userid=" + user_id;
        rptCart.DataSource = con.allRecord(q);
        rptCart.DataBind();

        string qtotal = "select p.p_name,p.p_image,p.p_price,a.cart_id,a.quantity, p.p_price * a.quantity as total from product p,addtocart a where p.p_id=a.p_id and userid=" + user_id;
      
        DataTable dt = con.allRecord(qtotal);
        int total = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            total = total + int.Parse( dt.Rows[i]["total"].ToString());
        }

        lblTotal.Text = total.ToString();
    }
}