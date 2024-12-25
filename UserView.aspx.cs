using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Register : System.Web.UI.Page
{
    ConnectionClass con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        if (Request.QueryString["user_id"] != null)
        {
            con.allQuery("delete from User_registration where user_id=" + Request.QueryString["user_id"].ToString());

        }
        rptr.DataSource = con.allRecord("select * from User_registration");
        rptr.DataBind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        /*
        string username = username.Text;
        string useraddress = txt_useraddress.Text;
        string city = txt_city.Text;
        string pincode = txt_pincode.Text;
        string mobileno = txt_mobileno.Text;
        string email = txt_email.Text;
        string password = txt_password.Text;

        string q = "insert into User_registration(username,useraddress,city,pincode,mobile no,e-mail,password) values('" +
            cat_name + "','" +
            cat_image + "')";
         */
    }

}