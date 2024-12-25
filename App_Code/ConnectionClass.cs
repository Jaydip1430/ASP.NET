using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ConnectionClass
/// </summary>
/// 



public class ConnectionClass
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adp;
    DataSet ds;
    DataTable dt;


	public ConnectionClass()
	{

		//
		// TODO: Add constructor logic here
		//
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True");
        con.Open();
    }
    public int allQuery(string query)
    {
        cmd = new SqlCommand(query,con);
        return cmd.ExecuteNonQuery();
    }
    public DataTable allRecord(string query)
    {
        cmd = new SqlCommand(query, con);
        adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        dt = new DataTable();
        dt = ds.Tables[0];
        return dt;
    }



}