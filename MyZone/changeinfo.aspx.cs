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
    string mno, mname, msex, mage, coll, prof, dep,phone,qq,email,bbs_user,zhifubao;
    protected void Page_Load(object sender, EventArgs e)
    {
        string User = Session["user"].ToString();
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        // conn.ConnectionString=@System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString;
        string sqlstring = "select * from member where mno='" + User + "'";
        string sqlstring2 = "select * from contact where mno='" + User + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        SqlDataAdapter sda2 = new SqlDataAdapter(sqlstring2, conn);
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        sda.Fill(ds);
        sda2.Fill(ds2);
        if (ds.Tables[0].Rows.Count != 0&&!IsPostBack)
        {
            TextBox1.Text = ds.Tables[0].Rows[0]["mno"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["mname"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["msex"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["mage"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["coll"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["prof"].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0]["department"].ToString();
            //TextBox8.Text = ds.Tables[0].Rows[0]["ismoney"].ToString();


        }
        if (ds2.Tables[0].Rows.Count != 0&&!IsPostBack)
        {
            TextBox9.Text = ds2.Tables[0].Rows[0]["phone"].ToString();
            TextBox10.Text = ds2.Tables[0].Rows[0]["qq"].ToString();
            TextBox11.Text = ds2.Tables[0].Rows[0]["email"].ToString();
            TextBox12.Text = ds2.Tables[0].Rows[0]["bbs_user"].ToString();
            TextBox13.Text = ds2.Tables[0].Rows[0]["zhifubao"].ToString();
            if (TextBox12.Text == "")
                TextBox12.Text = "暂无";
            if (TextBox13.Text == "")
                TextBox13.Text = "暂无";

        }
        mno = TextBox1.Text.Trim();
        mname = TextBox2.Text;
        msex = TextBox3.Text;
        mage = TextBox4.Text;
        coll = TextBox5.Text;
        prof = TextBox6.Text;
        dep = TextBox7.Text;
        phone = TextBox9.Text;
        qq = TextBox10.Text;
        email = TextBox11.Text;
        bbs_user = TextBox12.Text;
        zhifubao = TextBox13.Text;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MemCenter.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string user = "";
        //if (Session["user"] != null)
        //    user = Session["user"].ToString();
        //SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        //// conn.ConnectionString=@System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString;
        //string sqlstring = "select * from member where mno='" + user + "'";
        //SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        //DataSet ds = new DataSet();
        //sda.Fill(ds);
        //TextBox1.Text = ds.Tables[0].Rows[0]["mno"].ToString();
        //TextBox2.Text = ds.Tables[0].Rows[0]["mname"].ToString();
        //TextBox3.Text = ds.Tables[0].Rows[0]["msex"].ToString();
        //TextBox4.Text = ds.Tables[0].Rows[0]["mage"].ToString();
        //TextBox5.Text = ds.Tables[0].Rows[0]["coll"].ToString();
        //TextBox6.Text = ds.Tables[0].Rows[0]["prof"].ToString();
        //TextBox7.Text = ds.Tables[0].Rows[0]["department"].ToString();
        //sqlstring = "select * from contact where mno='" + user + "'";
        //SqlDataAdapter sda = new SqlDataAdapter(sqlstring, conn);
        //DataSet ds2 = new DataSet();
        //sda.Fill(ds2);
        //TextBox9.Text = ds.Tables[0].Rows[0]["phone"].ToString();
        //TextBox10.Text = ds.Tables[0].Rows[0]["qq"].ToString();
        //TextBox11.Text = ds.Tables[0].Rows[0]["email"].ToString();
        //TextBox12.Text = ds.Tables[0].Rows[0]["bbs_user"].ToString();
        //TextBox13.Text = ds.Tables[0].Rows[0]["zhifubao"].ToString();
        
        string sqlIns = "update member set mno='" + mno + "',mname='" + mname + "',msex='" + msex+ "',mage='" +mage + "',coll='" + coll + "',prof='" + prof  + "',department='"+dep +"' where mno='" + mno + "'";
        string sqlIns1 = "update contact set phone='" + phone + "',qq='" + qq + "',email='" + email + "',bbs_user='" + bbs_user  + "',zhifubao='" + zhifubao  + "'where mno='" + mno + "'";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
         con.Open();
         SqlCommand com = new SqlCommand(sqlIns, con);
         SqlCommand com2 = new SqlCommand(sqlIns1, con);
         int i = com.ExecuteNonQuery(), j = com2.ExecuteNonQuery();
         if (j == 0)
         {
             string sqlIns2="insert into contact(mno,phone,qq,email,bbs_user,zhifubao)values('"+mno+"','"+phone +"','"+qq+"','"+email+"','"+bbs_user+"','"+zhifubao +"')";
             SqlCommand com3 = new SqlCommand(sqlIns2, con);
             j = com3.ExecuteNonQuery();
         }
         if (i > 0||j>0)
         {
             Response.Write("<script>alert('资料修改成功!')</script>");
         }
         else
         {
             Response.Write("<script>alert('资料未经修改!')</script>");
         }
    }
}
