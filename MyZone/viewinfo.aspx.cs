using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class MyZone_viewinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ////Session["User"] = "08122387";
        //string User = Session["User"].ToString();
        //SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        //// conn.ConnectionString=@System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString;
        //string sqlstring = "select * from member where mno='" + User + "'";
        //string sqlstring2 = "select * from contact where mno='" + User + "'";
        //SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        //SqlDataAdapter sda2 = new SqlDataAdapter(sqlstring2, conn);
        //DataSet ds = new DataSet();
        //DataSet ds2 = new DataSet();
        //sda.Fill(ds);
        //sda2.Fill(ds2);
        //if (ds.Tables[0].Rows.Count != 0)
        //{
        //    Label1.Text = ds.Tables[0].Rows[0]["mno"].ToString();
        //    Label2.Text = ds.Tables[0].Rows[0]["mname"].ToString();
        //    Label3.Text = ds.Tables[0].Rows[0]["msex"].ToString();
        //    Label4.Text = ds.Tables[0].Rows[0]["mage"].ToString();
        //    Label5.Text = ds.Tables[0].Rows[0]["coll"].ToString();
        //    Label6.Text = ds.Tables[0].Rows[0]["prof"].ToString();
        //    Label7.Text = ds.Tables[0].Rows[0]["department"].ToString();
        //    Label8.Text = ds.Tables[0].Rows[0]["ismoney"].ToString();


        //}
        //if (ds2.Tables[0].Rows.Count != 0)
        //{
        //    Label9.Text = ds2.Tables[0].Rows[0]["phone"].ToString();
        //    Label10.Text = ds2.Tables[0].Rows[0]["qq"].ToString();
        //    Label11.Text = ds2.Tables[0].Rows[0]["email"].ToString();
        //    Label12.Text = ds2.Tables[0].Rows[0]["bbs_user"].ToString();
        //    Label13.Text = ds2.Tables[0].Rows[0]["zhifubao"].ToString();
        //    if (Label12.Text == "")
        //        Label12.Text = "暂无";
        //    if (Label13.Text == "")
        //        Label13.Text = "暂无";

        //}
    }
}
