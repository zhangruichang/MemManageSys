using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_M_management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string text1 = DropDownList1.SelectedItem.Text, text2 = DropDownList2.SelectedItem.Value;
        string text = "全部";
        //string text2 = "男";
        //string text3 = "女";
        if (text1!="全部"&&text2!="全部")
        {
            GridView1.DataSourceID = "SqlDataSource1";
        }
        else if (text1!="全部"&&text2=="全部")
        {
            GridView1.DataSourceID = "SqlDataSource2";
        }
        else if (text1== text&&text2!=text)
        {
            GridView1.DataSourceID = "SqlDataSource3";
        }
        else
            GridView1.DataSourceID = "SqlDataSource4";
       
       
        


    }
    
}