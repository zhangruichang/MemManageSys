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
using System.Web.Configuration;

public partial class login : System.Web.UI.Page
{
    private string SqlConnectionString = WebConfigurationManager.ConnectionStrings["MemManaSysConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        ImageCheck.Attributes.Add("onmouseup", "javascript:refreshimg();");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String User = TextBox1.Text.Trim();
        String psd =FormsAuthentication .HashPasswordForStoringInConfigFile(TextBox2.Text.Trim(),"MD5");
        String level;
        String depart;
        string ismoney;
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        // conn.ConnectionString=@System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString;
        string sqlstring = "select * from member where mno='" + User + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>alert('用户名输入错误!')</script>");
        }
        else
        {
            string Psd_db = ds.Tables[0].Rows[0]["psd"].ToString();
            string mname = ds.Tables[0].Rows[0]["mname"].ToString().Trim();
            level = ds.Tables[0].Rows[0]["level_id"].ToString().Trim();
            depart=ds.Tables[0].Rows[0]["department"].ToString().Trim();
            ismoney=ds.Tables[0].Rows[0]["ismoney"].ToString();
            string ident;
            int issys = (int)ds.Tables[0].Rows[0]["issysmng"];
            Psd_db = Psd_db.Trim();
            if (psd == Psd_db)
            {
                if (TextBox3.Text.Trim() == Session["checkcode"].ToString())
                {
                    Session["User"] = User;
                    Session["psd"] = psd;
                    Session["mname"] = mname;
                    ident = DropDownList1.SelectedItem.Value;
                    Session["level"] = level;
                    Session["dep"] = depart;
                    Session["ismoney"] = ismoney;
                    if (ident == "普通会员")
                        Response.Redirect("MyZone/MemCenter.aspx");
                    else
                        Response.Redirect("admin/admin_home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('验证码输入错误!')</script>");
                    //Response.Redirect("login.aspx");
                }
            }
            else
            {
               // RegisterStartupScript("", "<script>alert('密码输入错误')</script>");
                Response.Write("<script>alert('密码输入错误!')</script>");
                //Response.Redirect("login.aspx");
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text= TextBox2.Text = TextBox3.Text = "";
    }
}
