using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class MyZone_DeliverTasks : System.Web.UI.Page
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
    private string Receiver;
    private string con;
    private bool tag=true;
    private string oldreceiver;
    private string state;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 0; i < 24; i++)
            {
                Hour.Items.Add(Convert.ToString(i));
            }
            for (int i = 0; i < 60; i++)
            {
                Minute.Items.Add(Convert.ToString(i));
            }
            ID = Request.QueryString["id"];
           // Session["User"] = "08122387";
            
            Classify();
            
            if (ID != null)
            {
                //Response.Write("Tony");
                Deliver.Text = "修改";
                
                using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
                {
                    MyConnection.Open();
                    string MySelect = "select title,area,start,type,task_level,content,mno,who, receiver,state from task where task_id=@task_id";
                    SqlCommand SelectCommand = new SqlCommand(MySelect, MyConnection);
                    SelectCommand.Parameters.AddWithValue("@task_id", ID);
                    SqlDataReader rdr = SelectCommand.ExecuteReader();
                    if (rdr.Read())
                    {
                        //拆分字符串
                        int i;
                        string[] a=new string[4];
                        string[] result=rdr["start"].ToString().Split(new char[]{' ',':',':'});
                        //Response.Write(result.Length);
                        for (i = 0; i < 4; i++)
                        {
                            a[i] = result[i];
                            //Response.Write(a[i]+" ");
                        }
                        a[0].Replace('/','-');
                        //Response.Write(a[0] + " ");

                        TitleBox.Text = rdr["title"].ToString();
                        SpotBox.Text = rdr["area"].ToString();
                        TimeBox.Text = a[0];
                        //Response.Write(rdr["receiver"].ToString());
                        DropDownList2.SelectedValue = rdr["type"].ToString().Trim();
                        DropDownList1.SelectedValue = rdr["task_level"].ToString().Trim();
                        //Response.Write(DropDownList1.SelectedValue);
                        DropDownList4.SelectedValue = rdr["state"].ToString().Trim();
                        
                        if (rdr["receiver"].ToString() != null && rdr["receiver"].ToString().Trim() != "")
                        {
                            Response.Write("你");
                            DropDownList3.SelectedValue = rdr["receiver"].ToString();
                        }
                        else
                        {
                            DropDownList3.Enabled = false;

                            Response.Write("楠楠");
                        }

                        Hour.SelectedValue = a[1];
                        Minute.SelectedValue = a[2];
                        ContentBox.Text = rdr["content"].ToString();
                        IssueBox.Text = rdr["who"].ToString();
                    }
                    MyConnection.Close();
                }
            }
            //SendMessage(81);
        }
        TitleBox.Focus();
        
    }
    protected void Deliver_Click(object sender, EventArgs e)
    {
        ID = Request.QueryString["id"];
        Response.Write(ID);
        this.Validate();
        if (!this.IsValid)
        {
            //string errorMessage = "<b>发现了如下错误信息:</b><br/>";
            //TextBox ctrlInput;
            //foreach (BaseValidator ctrl in this.Validators)
            //{
            //    if (!ctrl.IsValid)
            //    {
            //        errorMessage += ctrl.ErrorMessage + "<br/>";
            //        ctrlInput = (TextBox)this.FindControl(ctrl.ControlToValidate);
            //        errorMessage += "<br/>";
            //    }
            //}
            //lblMessage.Text = errorMessage;
            return;
        }

        TitleStr = Convert.ToString(TitleBox.Text);
        Spot = Convert.ToString(SpotBox.Text);
        Level = Convert.ToString(DropDownList1.SelectedValue);
        Vertion = Convert.ToString(DropDownList2.SelectedValue);
        Content = Convert.ToString(ContentBox.Text);
        Issue = Convert.ToString(IssueBox.Text);
        if (Level == "个人级")
        {
            Receiver = Convert.ToString(DropDownList3.SelectedValue);
        }
        con = Convert.ToString(DropDownList4.SelectedValue);

        Response.Write(Receiver);
        Time = Convert.ToString(TimeBox.Text);
        Time.Replace('-','/');
        Time = Time + " " + Hour.SelectedValue + ":" + Minute.SelectedValue + ":00";

        if (ID == null)  //deliver the task
        {
            if (tag)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "jskey", "alert('发布成功！')", true);
                tag = false;
                using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
                {
                    MyConnection.Open();

                    string MyInsert = "insert into task(title,area,start,type,task_level,content,mno,who,receiver)values('" + TitleStr + "','" + Spot + "','" + Time + "','" + Vertion + "','" + Level + "','" + Content + "','" + Session["User"] + "','" + Issue + "','"+Receiver+"')";
                    SqlCommand InsertCommand = new SqlCommand(MyInsert, MyConnection);
                    InsertCommand.ExecuteNonQuery();
                    //Response.Write(Task_id)
                    MyConnection.Close();

                    MyConnection.Open();
                    string MySelect = "select task_id from task where title=@title and area=@area and who=@who and start=@start";
                    SqlCommand SelectCommand = new SqlCommand(MySelect, MyConnection);
                    SelectCommand.Parameters.AddWithValue("@title",TitleStr);
                    SelectCommand.Parameters.AddWithValue("@area", Spot);
                    SelectCommand.Parameters.AddWithValue("@who", Issue);
                    SelectCommand.Parameters.AddWithValue("@start", Time);
                    SqlDataReader rdr = SelectCommand.ExecuteReader();
                    if (rdr.Read())
                    {
                        TitleBox.Text = rdr["task_id"].ToString();
                    }
                    Task_id = TitleBox.Text;
                    Response.Write(int.Parse(Task_id));
                    SendMessage(int.Parse(Task_id));
                    MyConnection.Close();
                }
                Deliver.Enabled = false;
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "jskey", "alert('任务已经发布！请回返回上一级查看')", true);
            }

        }
        else//修改任务
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "jskey", "alert('修改成功！')", true);
            using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
            {
                MyConnection.Open();
                string MySelect1 = "select receiver from task where task_id=@task_id";
                SqlCommand SelectCommand1 = new SqlCommand(MySelect1, MyConnection);
                SelectCommand1.Parameters.AddWithValue("@task_id", ID);
                SqlDataReader rdr1 = SelectCommand1.ExecuteReader();
                if(rdr1.Read ())
                    oldreceiver = rdr1["receiver"].ToString();
                MyConnection.Close();

                MyConnection.Open();

                string MyUpdate = "update task set title=@title,area=@area,start=@start,type=@type,task_level=@task_level,content=@content,who=@who,state=@state,receiver=@receiver where task_id=@task_id";
                SqlCommand UpdateCommand = new SqlCommand(MyUpdate, MyConnection);
                UpdateCommand.Parameters.AddWithValue("@title",TitleStr);
                UpdateCommand.Parameters.AddWithValue("@area",Spot);
                UpdateCommand.Parameters.AddWithValue("@start",TimeBox.Text.ToString());
                UpdateCommand.Parameters.AddWithValue("@type",Vertion);
                UpdateCommand.Parameters.AddWithValue("@task_level",Level);
                UpdateCommand.Parameters.AddWithValue("@content",Content);
                UpdateCommand.Parameters.AddWithValue("@who",Issue);
                UpdateCommand.Parameters.AddWithValue("@task_id", ID);
                UpdateCommand.Parameters.AddWithValue("@state", con);
                if (Receiver==null )
                    Receiver = Session["User"].ToString().Trim();
                UpdateCommand.Parameters.AddWithValue("@receiver", Receiver );
                UpdateCommand.ExecuteNonQuery();

                MyConnection.Close();

                MyConnection.Open();
                string Mydelete = "delete taskdo where mno=@mno and task_id=@task_id";
                SqlCommand deleteCommand = new SqlCommand(Mydelete, MyConnection);
                deleteCommand.Parameters.AddWithValue("@mno", oldreceiver);
                //UpdateCommand1.Parameters.AddWithValue("@state", con);
                deleteCommand.Parameters.AddWithValue("@task_id", ID);
                deleteCommand.ExecuteNonQuery();
                MyConnection.Close();

                DateTime dt = DateTime.Now;
                if (con == "未完成")
                    state = "未领取";
                else if (con == "已完成")
                {
                    MyConnection.Open();
                    string MyUpdate1 = "update task set [end]=@end where task_id=@task_id";
                    SqlCommand UpdateCommand1 = new SqlCommand(MyUpdate1, MyConnection);
                    UpdateCommand1.Parameters.AddWithValue("@task_id",ID);
                    UpdateCommand1.Parameters.AddWithValue("@end", dt );
                    
                    UpdateCommand1.ExecuteNonQuery();
                    MyConnection.Close();
                    state = "已完成";
                }
                MyConnection.Open();
                string My = "insert into taskdo(mno,task_id,state)values('" + Receiver  + "','" + ID + "','" + state + "')";
                SqlCommand insertCommand = new SqlCommand(My, MyConnection);
                //insertCommand.Parameters.AddWithValue("@mno", Receiver);
               // insertCommand.Parameters.AddWithValue("@state", con);
               // insertCommand.Parameters.AddWithValue("@task_id", ID);
                insertCommand.ExecuteNonQuery();
                MyConnection.Close();
            }
        }
    }
    protected void Back_Click(object sender, EventArgs e)  //back
    {
        Response.Redirect("ScanTasks.aspx");
    }
    protected void SendMessage(int task_id)
    {
        using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
        {
            SqlConnection YourConnection = new SqlConnection(SqlConnectionString);
            string Dept;
            string Member;
            string MySelect;
            string MyInsert;
            SqlCommand InsertCommand;
            SqlCommand MyCommand;
            SqlDataReader rdr;
            MyConnection.Open();
            YourConnection.Open();

            //Response.Write(task_id);
            //Response.Write(DropDownList3.SelectedValue);

            if (DropDownList1.SelectedValue == "个人级")
            {
                MyInsert = "insert into taskdo(mno,task_id)values(@mno,@task_id)";
                MyCommand = new SqlCommand(MyInsert, MyConnection);
                MyCommand.Parameters.AddWithValue("@mno", DropDownList3.SelectedValue);
                MyCommand.Parameters.AddWithValue("@task_id", task_id);
                MyCommand.ExecuteNonQuery();
            }

            else if (DropDownList1.SelectedValue == "部门级")
            {
                MySelect = "select department from  member where mno=@mno";
                MyCommand = new SqlCommand(MySelect, MyConnection);
                MyCommand.Parameters.AddWithValue("@mno", Session["User"]);
                Response.Write(Session["User"]);
                rdr = MyCommand.ExecuteReader();
                if (rdr.Read())
                {
                    TitleBox.Text = rdr["department"].ToString();
                }

                MyConnection.Close();

                Dept = TitleBox.Text;
                Response.Write(Dept);

                MyConnection.Open();

                MySelect = "select mno from member where department=@department and mno!=@mno";
                MyCommand = new SqlCommand(MySelect, MyConnection);
                MyCommand.Parameters.AddWithValue("@mno", Session["User"]);
                MyCommand.Parameters.AddWithValue("department", Dept);
                rdr = MyCommand.ExecuteReader();
                while (rdr.Read())
                {
                    Member = rdr["mno"].ToString();
                    Response.Write(Member);
                    MyInsert = "insert into taskdo(mno,task_id)values(@mno,@task_id)";
                    InsertCommand = new SqlCommand(MyInsert, YourConnection);
                    InsertCommand.Parameters.AddWithValue("@mno", Member);
                    InsertCommand.Parameters.AddWithValue("@task_id", task_id);
                    InsertCommand.ExecuteNonQuery();
                }
            }
            else
            {
                MySelect = "select mno from member where mno!=@mno";
                MyCommand = new SqlCommand(MySelect, MyConnection);
                MyCommand.Parameters.AddWithValue("@mno", Session["User"]);
                rdr = MyCommand.ExecuteReader();
                while (rdr.Read())
                {
                    Member = rdr["mno"].ToString();
                    Response.Write(Member);
                    MyInsert = "insert into taskdo(mno,task_id)values(@mno,@task_id)";
                    InsertCommand = new SqlCommand(MyInsert, YourConnection);
                    InsertCommand.Parameters.AddWithValue("@mno", Member);
                    InsertCommand.Parameters.AddWithValue("@task_id", task_id);
                    InsertCommand.ExecuteNonQuery();
                }
            }

            YourConnection.Close();
            MyConnection.Close();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "个人级")
        {
            label1.Visible = false;
            DropDownList3.Visible = false;
        }
        else
        {
            label1.Visible = true;
            DropDownList3.Visible = true;
        }
    }
    protected void Classify()
    {
        using (SqlConnection MyConnection = new SqlConnection(SqlConnectionString))
        {
            MyConnection.Open();
            
            int level_id;
            string MySelect = "select level_id from  member where mno=@mno";
            SqlCommand MyCommand = new SqlCommand(MySelect, MyConnection);
            MyCommand.Parameters.AddWithValue("@mno", Session["User"]);
            //Response.Write(Session["User"]);
            SqlDataReader rdr = MyCommand.ExecuteReader();
            if (rdr.Read())
            {
                TitleBox.Text = rdr["level_id"].ToString();
            }
            level_id = int.Parse(TitleBox.Text);
            TitleBox.Text = "";
            Response.Write(level_id);
            DropDownList1.Items.Add("个人级");
            if (level_id == 1)
            {
                DropDownList1.Items.Add("部门级");
                DropDownList1.Items.Add("社团级");
            }
            else if (level_id == 2)
            {
                DropDownList1.Items.Add("部门级");
            }
            else { }

            MyConnection.Close();
        }
    }
}