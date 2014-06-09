using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;


public partial class MyZone_Tasks_Details : System.Web.UI.Page
{
    private string SqlConnectionString = WebConfigurationManager.ConnectionStrings["MemManaSysConnectionString1"].ConnectionString;
    private string ID;
    private string Task_id;
    private string TitleStr;
    private string Spot;
    private string Level;
    private string Vertion;
    private string Content;
    private string State;
    private string Issue;
    private string Time;
    private int id=100,day;
    protected void Page_Load(object sender, EventArgs e)
    {

        DateTime dt = DateTime.Now;
        if (!IsPostBack)
        {
            ID = Request.QueryString["id"];
            //ID = Convert.ToString(71);
            if (ID != null)
            {
                using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
                {
                    MyConnection.Open();
                    string MySelect = "select title,area,start,type,task_level,content,mno,who from task where task_id=@task_id";
                    SqlCommand SelectCommand = new SqlCommand(MySelect, MyConnection);
                    SelectCommand.Parameters.AddWithValue("@task_id", ID);
                    SqlDataReader rdr = SelectCommand.ExecuteReader();
                    if (rdr.Read())
                    {
                        TitleLabel.Text = rdr["title"].ToString();
                        SpotLabel.Text = rdr["area"].ToString();
                        TimeLabel.Text = rdr["start"].ToString();
                        //DropDownList2.SelectedValue = rdr["type"].ToString();
                        //DropDownList1.SelectedValue = rdr["task_level"].ToString();
                        ContentLabel.Text = rdr["content"].ToString();
                        who.Text = rdr["who"].ToString();
                    }
                    MyConnection.Close();
                    MyConnection.Open();
                    string select = "select start from task where task_id=@task_id";
                    SqlCommand SelectCommand1 = new SqlCommand(select, MyConnection);
                    SelectCommand1.Parameters.AddWithValue("@task_id", id);
                    SqlDataReader rdr1 = SelectCommand1.ExecuteReader();
                    if (rdr1.Read())
                    {
                        
                        TimeSpan ts =Convert .ToDateTime ( rdr1["start"].ToString().Trim()) - dt;
                        day=ts.Days;
                    }
                    MyConnection.Close();
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ID = Request.QueryString["id"];
        State = DropDownList4.Text;
        using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
        {
            MyConnection.Open();

            string MyUpdate = "update taskdo set state=@state where task_id=@task_id and mno=@mno";
            SqlCommand UpdateCommand = new SqlCommand(MyUpdate, MyConnection);
            
            UpdateCommand.Parameters.AddWithValue("@mno", Session["user"].ToString ());
            UpdateCommand.Parameters.AddWithValue("@task_id", ID);
            UpdateCommand.Parameters.AddWithValue("@state", State );
           
            UpdateCommand.ExecuteNonQuery();

            MyConnection.Close();
        }
        Response.Write("<script>alert('任务状态修改成功!')</script>");
    }
}