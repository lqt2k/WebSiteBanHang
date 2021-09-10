using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class ChiTietMatHang : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["QLQAConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
            con.Open();
            String strcmd = "Select * from SANPHAM WHERE MASP = " + Request.QueryString["MASP"];
            SqlDataAdapter da = new SqlDataAdapter(strcmd, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            con.Close();
    }
}