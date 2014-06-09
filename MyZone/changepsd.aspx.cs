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


public partial class MyZone_changepsd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strpsd;
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        // conn.ConnectionString=@System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString;
        string sqlstring = "select * from member where mno='" + Session["user"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (TextBox2.Text != TextBox3.Text)
        {
            Response.Write("<script>alert('两次输入的密码不一致!')</script>");
        }
        else
        {
            strpsd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text.Trim(), "MD5");
            if (strpsd == ds.Tables[0].Rows[0]["psd"].ToString().Trim ())
            {
                string psd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text.Trim(), "MD5");
                string mno = Session["user"].ToString ();
                string sqlIns = "update member set psd='" + psd + "'where mno='" + mno + "'";

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
                con.Open();
                SqlCommand com = new SqlCommand(sqlIns, con);
                if (com.ExecuteNonQuery() > 0)
                {
                    Response.Write("<script>alert('密码修改成功!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('密码修改失败!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('原密码错误!')</script>");
                // ClientScript.RegisterStartupScript("", "<script>alert('原密码错误')</script>");
            }
        }
    }
}
