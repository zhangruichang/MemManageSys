using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class MyZone_ScanTasks : System.Web.UI.Page
{
    private string SqlConnectionString = WebConfigurationManager.ConnectionStrings["MemManaSysConnectionString1"].ConnectionString;
    private string MySelect;
    private SqlCommand MyCommand;
    private SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Session["UserInfo"] = "08122387";
        }
    }
    protected void Search_Click(object sender, EventArgs e)
    {
        if (all.Checked)
        {
            GridView1.DataSourceID = "SqlDataSource1";
        }
        else if (finish.Checked)
        {
            GridView1.DataSourceID = "SqlDataSource3";
        }
        else
        {
            GridView1.DataSourceID = "SqlDataSource2";
        }

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex >= 0)
        {
            e.Row.Cells[0].Attributes.Add("onclick", "return confirm('确认此操作?')");
        }
    }
}