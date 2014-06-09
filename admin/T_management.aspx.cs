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

public partial class admin_T_management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string text1 = DropDownList1.SelectedItem.Text, text2 = DropDownList2.SelectedItem.Text;
        string text= "全部";
        if (text1 == text&&text2==text)
        {
            GridView1.DataSourceID = "SqlDataSource4";
        }
        else if (text1== text&&text2!=text)
        {
            GridView1.DataSourceID = "SqlDataSource3";
        }
        else if (text1!= text&&text2==text)
        {
            GridView1.DataSourceID = "SqlDataSource2";

        }
        else
        {
            GridView1.DataSourceID = "SqlDataSource1";
        }
    }
}
