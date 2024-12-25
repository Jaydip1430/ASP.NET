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
        string cat_name = txt_cat_name.Text;
        string cat_image = catimage.FileName;

        string q = "insert into Category(cat_name,cat_image) values('" +
            cat_name + "','" +
            cat_image + "')";
        int n = con.allQuery(q);
    }
}