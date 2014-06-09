using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

public partial class MyZone_UploadFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnUpload_Click(object sender, ImageClickEventArgs e)
    {
        //获取当前请求中所有文件信息
        HttpFileCollection fileColl = Request.Files;
        DataClass dc = new DataClass();
        bool bResult = false;//判断保存是否成功
        try
        {
            bResult = dc.SaveFilesInfo(fileColl);
        }
        catch (Exception ex) { }
        if (bResult)
        {
            Response.Write("<script>alert('文件保存成功！')</script>");
        }
        else
        {
            Response.Write("<script>alert('文件保存失败！')</script>");
        }
    }
    
}