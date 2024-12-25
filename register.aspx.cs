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
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string username = txt_username.Text;
        string useraddress = txt_useraddress.Text;
        string city = txt_city.Text;
        string pincode = txt_pincode.Text;
        string mobileno = txt_mobileno.Text;
        string email = txt_email.Text;
        string password = txt_password.Text;




        string q = "insert into user_registration(username,useraddress,city,pincode,mobileno,email,password) values('" +
            username + "','" +
             useraddress + "','" +
              city + "','" +
               pincode + "','" +
                mobileno+ "','" +
                 email+ "','" +
            password + "')";

        con.allQuery(q);
        Response.Redirect("login.aspx");

    }
}