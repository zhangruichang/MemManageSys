using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MyZone_Zone : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mname"] != null )
        {
            Label1.Text = Session["mname"].ToString ();
        }
        if (Session["level"].ToString()  == "1")
            Label2.Text = "社长";
        else if (Session["level"].ToString () == "2")
        {
            Label2.Text = Session["dep"].ToString();
            Label3.Text = "部长";
        }
        else
        {
            Label2.Text = Session["dep"].ToString();
            Label3.Text = "会员";
        }

    }
}
