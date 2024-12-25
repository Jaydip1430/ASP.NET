using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class productAdd : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        string p_name = pname.Text;
        string p_price = pprice.Text;
        string p_image = pimage.FileName;
        string p_description = pdescription.Text;
        string cat_id = catid.Text;

        string q = "insert into product(p_name,p_price,p_image,p_description,cat_id) values('" + p_name + "','" + p_price + "','" + p_image + "','" + p_description + "','" + cat_id + "')";
        int n = con.allQuery(q);
    }
}