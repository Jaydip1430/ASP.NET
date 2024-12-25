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

        string userid = Session["user_id"].ToString();

        string q = "select p.p_name,p.p_image,p.p_price,a.quantity, p.p_price * a.quantity as total from product p,orders a where p.p_id=a.product_id and userid=" + userid;
        rptCart.DataSource = con.allRecord(q);
        rptCart.DataBind();

        string qtotal = "select p.p_name,p.p_image,p.p_price,a.quantity, p.p_price * a.quantity as total from product p,orders a where p.p_id=a.product_id and userid=" + userid;
      
        DataTable dt = con.allRecord(qtotal);
        int total = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            total = total + int.Parse( dt.Rows[i]["total"].ToString());
        }

        lblTotal.Text = total.ToString();
    }
}