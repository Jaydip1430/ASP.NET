using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class contact : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string email= txtemail.Text;
        string pwd = txtPwd.Text;

        string qAdmin = "select * from admin_login where email_id='"+ email + "' and password='" + pwd + "'" ;
        string qUser = "select * from user_registration where email='" + email + "' and password='" + pwd + "'";

        DataTable dtAdmin = con.allRecord(qAdmin);
        DataTable dtUser = con.allRecord(qUser);

        if (dtAdmin.Rows.Count > 0)
        {
            Session["admin_id"] = dtAdmin.Rows[0][0].ToString(); 
            Response.Redirect("admin-home.aspx");
        }
        else if (dtUser.Rows.Count > 0)
        {
            Session["user_id"] = dtUser.Rows[0][0].ToString();
            Response.Redirect("index.aspx");
        }
        else
        {
            lblMsg.Text = "Invalid Username and password";
        }

    }
}