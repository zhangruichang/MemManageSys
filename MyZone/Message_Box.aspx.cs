using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class MyZone_Message_Box : System.Web.UI.Page
{
    private string SqlConnectionString = WebConfigurationManager.ConnectionStrings["MemManaSysConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ismoney"].ToString() == "False")
        {
            Response.Write("<script>alert('您还未缴费，只有查看任务权限!')</script>");
            Server.Transfer("Memcenter.aspx", false);
        }
        string MySelect,MyUpdate,receiver="",id="",str1="未领取",str2="",mno,type;
        int rows;
        SqlCommand MyCommand,UpdateCommand3;
        SqlDataReader rdr;
        TimeSpan ts;
        using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
        {
            SqlConnection Your = new SqlConnection(SqlConnectionString);
            
            MyConnection.Open();
            Your.Open();
            MySelect = "select distinct start,receiver,task.mno,task_level,task.task_id from task,taskdo where taskdo.state=@state and task.task_id=taskdo.task_id";
            MyCommand = new SqlCommand(MySelect, MyConnection);
            MyCommand.Parameters.AddWithValue("@state",str1 );
            rdr = MyCommand.ExecuteReader();
            if (rdr.Read())
            {
                
            }
            while (rdr.Read())
            {
                str2 = rdr["start"].ToString().Trim();
                receiver = rdr["receiver"].ToString().Trim();
                    id = rdr["task_id"].ToString().Trim();
                    mno = rdr["mno"].ToString().Trim();
                    type = rdr["task_level"].ToString().Trim();
                    ts = DateTime.Now - Convert.ToDateTime(str2);
                    if (ts.Days > 3)
                    {
                        if (receiver == ""||(receiver ==mno&&type=="社团级"))
                        {
                            MyUpdate = "update taskdo set taskdo.state=@state where task_id=@id";
                            UpdateCommand3 = new SqlCommand(MyUpdate, Your);
                            UpdateCommand3.Parameters.AddWithValue("@id", id);
                            UpdateCommand3.Parameters.AddWithValue("@state", "过期");
                            rows = UpdateCommand3.ExecuteNonQuery();
                        }
                        else
                        {
                            MyUpdate = "update taskdo set taskdo.state=@state where mno=@mno and task_id=@id";
                            UpdateCommand3 = new SqlCommand(MyUpdate, Your);
                            UpdateCommand3.Parameters.AddWithValue("@id", id);
                            UpdateCommand3.Parameters.AddWithValue("@mno", receiver);
                            UpdateCommand3.Parameters.AddWithValue("@state", "过期");
                            rows = UpdateCommand3.ExecuteNonQuery();
                        }
                    }
            }
            Your.Close();
            MyConnection.Close();
        }
    }
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridView1.DataSourceID = "SqlDataSource2";
    //}
    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource4";
    }
    //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridView1.DataSourceID = "SqlDataSource2";
    //}
    //protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    GridView1.DataSourceID = "SqlDataSource2";
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "全部")
        {
            if (DropDownList2.SelectedValue == "全部")
            {
                if (DropDownList3.SelectedValue == "全部")
                    GridView1.DataSourceID = "SqlDataSource10";
                else
                    GridView1.DataSourceID = "SqlDataSource9";
            }
            else
            {
                if (DropDownList3.SelectedValue == "全部")
                    GridView1.DataSourceID = "SqlDataSource8";
                else
                    GridView1.DataSourceID = "SqlDataSource1";
            }
        }
        else
        {
            if (DropDownList2.SelectedValue == "全部")
            {
                if (DropDownList3.SelectedValue == "全部")
                    GridView1.DataSourceID = "SqlDataSource7";
                else
                    GridView1.DataSourceID = "SqlDataSource5";
            }
            else
            {
                if (DropDownList3.SelectedValue == "全部")
                    GridView1.DataSourceID = "SqlDataSource6";
                else
                    GridView1.DataSourceID = "SqlDataSource2";
            }
        }
        
    }
}