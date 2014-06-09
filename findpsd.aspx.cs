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

public partial class findpsd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = TextBox1.Text.Trim ();
        Session["User"] = user;
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        // conn.ConnectionString=@System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString;
        string sqlstring = "select * from member where mno='" + user + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows[0]["mno"].ToString().Trim () == user)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Label1.Text = ds.Tables[0].Rows[0]["ques"].ToString();
        }
        else
        {
            Response.Write("<script language='javascript'>alert('用户名不存在')；history.back();</script>");
        }
        


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string ans = TextBox2.Text;
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        // conn.ConnectionString=@System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString;
        string sqlstring = "select * from member where mno='" + Session ["user"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows[0]["ans"].ToString().Trim() == ans)
        {
            Response.Write("<script>alert('问题回答正确!')</script>");
            Panel3.Visible = true;
            //Label2.Text = ds.Tables[0].Rows[0]["psd"].ToString();
            Random ro = new Random(unchecked((int)DateTime.Now.Ticks));
            String newpsd = ro.Next().ToString().Substring (0,6);
            Label2.Text = newpsd;
            newpsd = FormsAuthentication.HashPasswordForStoringInConfigFile(newpsd, "MD5");
            string sqlIns = "update member set psd='" + newpsd + "' where mno='" + Session["User"] + "'";
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
            con.Open();
            SqlCommand com = new SqlCommand(sqlIns, con);
            int i = com.ExecuteNonQuery();
            if(i!=0)
                Response.Write("<script>alert('请保存好新密码!')</script>");
        }
        else
        {
            Response.Write("<script>alert('问题回答错误!')</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}

