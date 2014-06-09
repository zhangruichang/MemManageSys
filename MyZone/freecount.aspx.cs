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
public partial class MyZone_freecount : System.Web.UI.Page
{
    String[] sqlstring = new String[7];
    String[] si = new String[5];

    int[] a = { 1, 2, 3, 4, 5, 6, 7 };
    int num;
    int[] free = new int[4];
    int i = 0;
    int j = 3,zero=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter sda;
        DataSet ds;
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        // conn.ConnectionString=@"server=localhost;uid=zhang;pwd=359359;database=MemManaSys";
        string User = Session["User"].ToString();
        //for (i = 1; i <= 7; i++)
        //{
        sqlstring[0] = "select * from freetime where mno='" + User + "'  and dayofweek ='" + a[0] + "' ";
        sda = new SqlDataAdapter(sqlstring[0], conn);
        ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            for (int day = 1; day <= 5; day++)
            {
                si[day - 1] = "insert into Freetime values('" + User + "','" + day + "','" + zero + "')";
                SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
                con1.Open();
                SqlCommand com1 = new SqlCommand(si[day - 1], con1);
                if (com1.ExecuteNonQuery() > 0)
                    //Response.Write("<script>alert('插入一条记录!')</script>");
                con1.Close();
            }
        }
        sda = new SqlDataAdapter(sqlstring[0], conn);
        ds = new DataSet();
        sda.Fill(ds);
        num = (int)ds.Tables[0].Rows[0]["DecimalNum"];
        while (j >= 0)
        {
            free[3 - j] = num / (int)Math.Pow(2.0, (double)j);
            num -= free[3 - j] * (int)Math.Pow(2.0, (double)j);
            j--;
        }
        //  }
        for (i = 0; i < 4 && !IsPostBack; i++)
        {
            if (free[i] == 1)
                CheckBoxList1.Items[i].Selected = true;
            else
                CheckBoxList1.Items[i].Selected = false;
        }
        j = 3;
        sqlstring[1] = "select * from freetime where mno='" + User + "'  and dayofweek ='" + a[1] + "' ";
        sda = new SqlDataAdapter(sqlstring[1], conn);
        DataSet ds2 = new DataSet();
        sda.Fill(ds2);
        num = (int)ds2.Tables[0].Rows[0]["DecimalNum"];
        while (j >= 0)
        {
            free[3 - j] = num / (int)Math.Pow(2.0, (double)j);
            num -= free[3 - j] * (int)Math.Pow(2.0, (double)j);
            j--;
        }
        //  }
        for (i = 0; i < 4 && !IsPostBack; i++)
        {
            if (free[i] == 1)
                CheckBoxList2.Items[i].Selected = true;
            else
                CheckBoxList2.Items[i].Selected = false;
        }
        j = 3;
        sqlstring[2] = "select * from freetime where mno='" + User + "'  and dayofweek ='" + a[2] + "' ";
        sda = new SqlDataAdapter(sqlstring[2], conn);
        DataSet ds3 = new DataSet();
        sda.Fill(ds3);
        num = (int)ds3.Tables[0].Rows[0]["DecimalNum"];
        while (j >= 0)
        {
            free[3 - j] = num / (int)Math.Pow(2.0, (double)j);
            num -= free[3 - j] * (int)Math.Pow(2.0, (double)j);
            j--;
        }
        //  }
        for (i = 0; i < 4 && !IsPostBack; i++)
        {
            if (free[i] == 1)
                CheckBoxList3.Items[i].Selected = true;
            else
                CheckBoxList3.Items[i].Selected = false;
        }
        j = 3;
        sqlstring[3] = "select * from freetime where mno='" + User + "'  and dayofweek ='" + a[3] + "' ";
        sda = new SqlDataAdapter(sqlstring[3], conn);
        DataSet ds4 = new DataSet();
        sda.Fill(ds4);
        num = (int)ds4.Tables[0].Rows[0]["DecimalNum"];
        while (j >= 0)
        {
            free[3 - j] = num / (int)Math.Pow(2.0, (double)j);
            num -= free[3 - j] * (int)Math.Pow(2.0, (double)j);
            j--;
        }
        //  }
        for (i = 0; i < 4 && !IsPostBack; i++)
        {
            if (free[i] == 1)
                CheckBoxList4.Items[i].Selected = true;
            else
                CheckBoxList4.Items[i].Selected = false;
        }
        j = 3;
        sqlstring[4] = "select * from freetime where mno='" + User + "'  and dayofweek ='" + a[4] + "' ";
        sda = new SqlDataAdapter(sqlstring[4], conn);
        DataSet ds5 = new DataSet();
        sda.Fill(ds5);
        num = (int)ds5.Tables[0].Rows[0]["DecimalNum"];
        while (j >= 0)
        {
            free[3 - j] = num / (int)Math.Pow(2.0, (double)j);
            num -= free[3 - j] * (int)Math.Pow(2.0, (double)j);
            j--;
        }
        //  }
        for (i = 0; i < 4 && !IsPostBack; i++)
        {
            if (free[i] == 1)
                CheckBoxList5.Items[i].Selected = true;
            else
                CheckBoxList5.Items[i].Selected = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
        con.Open();
        num = 0;
        for (i = 0; i < 4; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
                free[i] = 1;
            else
                free[i] = 0;
        }
        j = 3;
        while (j >= 0)
        {
            num += free[3 - j] * (int)Math.Pow(2.0, (double)j);

            j--;
        }

        string sqlIns1 = "update freetime set DecimalNum='" + num + "' where mno='" + Session["user"] + "'and  dayofweek='" + a[0] + "'";

        SqlCommand com1 = new SqlCommand(sqlIns1, con);
        if (com1.ExecuteNonQuery() > 0)
        {
            //Response.Write("<script>alert('修改成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('写入数据库失败!')</script>");
            Response.End();
        }
        num = 0;
        for (i = 0; i < 4; i++)
        {
            if (CheckBoxList2.Items[i].Selected)
                free[i] = 1;
            else
                free[i] = 0;
        }
        j = 3;
        while (j >= 0)
        {
            num += free[3 - j] * (int)Math.Pow(2.0, (double)j);

            j--;
        }

        string sqlIns2 = "update freetime set DecimalNum='" + num + "' where mno='" + Session["user"] + "'and  dayofweek='" + a[1] + "'";

        SqlCommand com2 = new SqlCommand(sqlIns2, con);
        if (com2.ExecuteNonQuery() > 0)
        {
            //Response.Write("<script>alert('修改成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('写入数据库失败!')</script>");
            Response.End();
        }
        num = 0;
        for (i = 0; i < 4; i++)
        {
            if (CheckBoxList3.Items[i].Selected)
                free[i] = 1;
            else
                free[i] = 0;
        }
        j = 3;
        while (j >= 0)
        {
            num += free[3 - j] * (int)Math.Pow(2.0, (double)j);

            j--;
        }
        string sqlIns3 = "update freetime set DecimalNum='" + num + "' where mno='" + Session["user"] + "'and  dayofweek='" + a[2] + "'";
        SqlCommand com3 = new SqlCommand(sqlIns3, con);
        if (com3.ExecuteNonQuery() > 0)
        {
            //Response.Write("<script>alert('修改成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('写入数据库失败!')</script>");
            Response.End();
        }
        num = 0;
        for (i = 0; i < 4; i++)
        {
            if (CheckBoxList4.Items[i].Selected)
                free[i] = 1;
            else
                free[i] = 0;
        }
        j = 3;
        while (j >= 0)
        {
            num += free[3 - j] * (int)Math.Pow(2.0, (double)j);
            j--;
        }
        string sqlIns4 = "update freetime set DecimalNum='" + num + "' where mno='" + Session["user"] + "'and  dayofweek='" + a[3] + "'";
        SqlCommand com4 = new SqlCommand(sqlIns4, con);
        if (com4.ExecuteNonQuery() > 0)
        {
            //Response.Write("<script>alert('修改成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('写入数据库失败!')</script>");
            Response.End();
        }
        num = 0;
        for (i = 0; i < 4; i++)
        {
            if (CheckBoxList5.Items[i].Selected)
                free[i] = 1;
            else
                free[i] = 0;
        }
        j = 3;
        while (j >= 0)
        {
            num += free[3 - j] * (int)Math.Pow(2.0, (double)j);

            j--;
        }
        string sqlIns5 = "update freetime set DecimalNum='" + num + "' where mno='" + Session["user"] + "'and  dayofweek='" + a[4] + "'";
        SqlCommand com5 = new SqlCommand(sqlIns5, con);
        if (com5.ExecuteNonQuery() > 0)
        {
            Response.Write("<script>alert('修改成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('写入数据库失败!')</script>");
        }
    }

}
