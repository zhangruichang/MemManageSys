using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyZone_DownloadFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //第一次打开页面绑定文件信息到GridView控件
        if (!IsPostBack)
        {
            //绑定文件信息数据
            this.grdFileList.DataSource = new DataClass().GetFilesInfo();
            this.grdFileList.DataBind();
        }
    }

    /// <summary>
    /// 组合保存文件的地址和文件名作为URL链接以供下载
    /// </summary>
    /// <param name="strAddress">服务器保存的文件实际路径</param>
    /// <param name="strFileName">服务器保存的实际文件名</param>
    /// <returns></returns>
    public string GetFileUrl(string strAddress, string strFileName)
    {
        return strAddress + strFileName;
    }
}
