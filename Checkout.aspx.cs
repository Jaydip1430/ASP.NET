using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class _Default : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();

        string user_id =  Session["user_id"].ToString();
        DataTable dt = con.allRecord("select * from user_registration where user_id=" + user_id);
        txt_username.Text = dt.Rows[0]["username"].ToString();
        txt_useraddress.Text = dt.Rows[0]["useraddress"].ToString();

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string user_id = Session["user_id"].ToString();
        string q = "select * from addtocart where userid=" + user_id;
        DataTable dt = con.allRecord(q);

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string product_id = dt.Rows[i]["p_id"].ToString();
            string quantity= dt.Rows[i]["quantity"].ToString();
            string date = DateTime.Now.ToShortDateString();
            string address = txt_useraddress.Text;

            string qins = "insert into orders(product_id,quantity,date,address,userid) values('" +
                product_id + "','" +
                quantity + "','" +
                date + "','" +
                address + "','" +
                user_id + "')";
            con.allQuery(qins);
        }

        con.allQuery("delete from addtocart where userid=" + user_id);
        Response.Redirect("thankyou.aspx");

 }
}