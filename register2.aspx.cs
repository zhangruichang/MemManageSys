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

public partial class register2 : System.Web.UI.Page
{
    //public System.Web.UI.WebControls.Button btnDelRow;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       // btnDelRow.Attributes.Add("onclick", "return confirm('确定要删吗?');");
        string phone=TextBox1 .Text;
        string qq=TextBox2 .Text;
        string email=TextBox3 .Text;
        string bbs_user=TextBox4 .Text;
        string zhifubao=TextBox5 .Text;
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        con.Open();
        string sqlIns = "insert into contact(mno,phone,qq,email,bbs_user,zhifubao) values('" + Session["user"] + "', '" + phone  + "','" + qq  + "','" + email  + "','" + bbs_user  + "','" + zhifubao  + "')";
        SqlCommand com = new SqlCommand(sqlIns, con);
        if (com.ExecuteNonQuery() > 0)
        {
            Response.Write("<script>alert('联系信息填写成功!')</script>");
            Button2.Visible = true;
            Button1 .Visible=false;
           // Response.Write("<script>alert('删除成功!')</script>");
           // System.Threading.Thread.Sleep(5000);
            //Response.Redirect ("login.aspx"); 
        }
        else
        {
        }
    }
}
