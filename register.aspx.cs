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
using System.Text.RegularExpressions;

public partial class register : System.Web.UI.Page
{
    static bool isreg = false;
    protected bool isName()
    {
        bool blIsName = false;
        string a = TextBox1.Text;
        string sqlSel = "select count(*) from member where mno='" + a + "' ";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand(sqlSel, con);
        if (Convert.ToInt32(com.ExecuteScalar()) > 0)
        {
            blIsName = true;
        }
        else
        {
            blIsName = false;
        }
        return blIsName;
    }
    protected bool isNameFormar()
    {
        bool b = false  ;
        Regex re = new Regex("[0-9]{8}");
        if (re.IsMatch(TextBox1.Text.Trim ()))
        {
            b = true;
            Label1.ForeColor = System.Drawing.Color.Black;
            Label1.Text = "用户名格式正确！";
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "用户名格式错误";
        }
        return b;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (isNameFormar())
        {
            if (isName())
            {
                Label1.Text = "用户名已存在!";
                Response.Write("<script>alert('用户名已存在!')</script>");
            }
            else if(TextBox2.Text !=TextBox11.Text )
                Response.Write("<script>alert('两次输入的密码不一致!')</script>");
            else
            {
                int a = 0;
                string mno = TextBox1.Text;
                string psd = FormsAuthentication .HashPasswordForStoringInConfigFile(TextBox2.Text,"MD5");
                string mname = TextBox3.Text;
                string age = TextBox5.Text;
                string sex;
                if (RadioButtonList1.SelectedValue.Trim() == "男")
                {
                    sex = "男";
                }
                else
                {
                    sex = "女";
                }
                string col = DropDownList1 .Text;
                string prof = TextBox7.Text;
                string department = DropDownList2.Text;
                string ques = TextBox9.Text;
                string ans = TextBox10.Text;
                string mon = "false";
                string []si=new string[5];
                int zero=0,levelid=3;
                string sqlIns = "insert into member(mno,mname,msex,mage,coll,prof,psd,level_id,ismoney,department,ques,ans,issysmng) values('" + mno + "', '" + mname + "','" + sex + "','" + age + "','" + col + "','" + prof + "','" + psd + "','"+levelid +"','"+mon+"','"+department +"','" + ques + "','" + ans + "','" + a + "')";
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
                if (mno != "" && psd != "" && mname != "" && age != "" && sex != "" && col != "" && prof != "" && department != "" && ques != "" && ans != "")
                {
                    con.Open();
                    SqlCommand com = new SqlCommand(sqlIns, con);
                    if (com.ExecuteNonQuery() > 0)
                    {
                        Response.Write("<script>alert('注册成功!')</script>");
                        isreg = true;
                        Session["user"] = mno;
                        Session["psd"] = psd;
                        Button1.Visible = false;
                    }
                    else
                    {
                        Response.Write("<script>alert('请正确填写信息!')</script>");
                    }
                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('请填写完整的基本信息!')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('请正确填写信息!')</script>");
        }
    }
    

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        isNameFormar();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (isreg == true)
        {
            Response.Redirect("register2.aspx");
        }
        else
        {
            Response.Write("<script>alert('还没注册!')</script>");
        }
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
       // isAgeFormar();
        
    }
    protected bool isAgeFormar()
    {
        bool b = false;
        Regex re = new Regex("[0-9]{2}");
        if (re.IsMatch(TextBox5.Text.Trim()))
        {
            b = true;
            Label3.ForeColor = System.Drawing.Color.Black;
            Label3.Text = "年龄格式正确！";
        }
        else
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "年龄应为数字";
        }
        return b;
    }
}


