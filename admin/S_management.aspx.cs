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
using System.IO;

public partial class admin_S_management : System.Web.UI.Page
{
    int imgid,check=0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "网站logo")
            check = 1;
        else if (DropDownList1.SelectedValue == "活动记录图片")
        {
            check = 2;
        }
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MemManaSysConnectionString"].ConnectionString);
            if (FileUpload1.HasFile)
            {
                string fileContentType = FileUpload1.PostedFile.ContentType;
                if (fileContentType == "image/bmp" || fileContentType == "image/gif" || fileContentType == "image/jpeg")
                {
                    string name = FileUpload1.PostedFile.FileName;
                    FileInfo file = new FileInfo(name);
                    string fileName = getimageRandom() + file.Name; // 文件名称 
                    string webFilePath = Server.MapPath("../images/" + fileName); // 服务器端文件路径
                    FileUpload1.SaveAs(webFilePath); // 使用 SaveAs 方法保存文件 
                    if (check == 1)
                    {
                        Label1.Text = "提示：LOGO图片" + fileName + "”成功上传";
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "update pageinfo set pageinfo=@pageinfo where id=1";
                        cmd.Parameters.Add("@id", SqlDbType.TinyInt).Value = imgid;
                        cmd.Parameters.Add("@pageinfo", SqlDbType.NVarChar).Value = "images/" + fileName;
                        try
                        {
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                            Response.Write("<script>alert('修改成功!')</script>");
                        }
                        catch (System.Exception SQLExe)
                        { //Response.Write("修改失败！原因：" + SQLExe.ToString());
                            Response.Write("<script>alert('修改失败！原因：'+ SQLExe.ToString())</script>");
                        }
                    }
                    else if(check ==2)
                    {
                        Label1.Text = "提示：活动记录图片" + fileName + "”成功上传";
                        SqlCommand cmd1 = conn.CreateCommand();
                        cmd1.CommandType = CommandType.Text;
                        cmd1.CommandText = "insert into pageinfo(id,pageinfo) values(@id,@pageinfo)";
                        int x = Convert.ToInt32(TextBox1.Text.Trim());
                        cmd1.Parameters.Add("@id", SqlDbType.TinyInt).Value = x;
                        cmd1.Parameters.Add("@pageinfo", SqlDbType.NVarChar).Value = "images/" + fileName;
                        try
                        {
                            conn.Open();
                            cmd1.ExecuteNonQuery();
                            conn.Close();
                            Response.Write("<script>alert('修改成功!')</script>");
                        }
                        catch (System.Exception SQLExe)
                        { //Response.Write("修改失败！原因：" + SQLExe.ToString());
                            Response.Write("<script>alert('修改失败！原因：'+ SQLExe.ToString())</script>");
                        }
                    }
                }

                else
                { Label1.Text = "提示：图片文件类型不符"; }
            }
            else { Label1.Text = "提示：该新闻无图片。"; }
    }
    protected string getimageRandom() //用随机数和原文件名作为上传后的文件名
    {
        Random ro = new Random(unchecked((int)DateTime.Now.Ticks));
        String imageRandom = ro.Next().ToString();
        return imageRandom;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "活动记录图片")
        {
            Label2.Visible = true; TextBox1.Visible = true;
        }
        else
        {
            Label2.Visible = false; TextBox1.Visible = false;
        }
    }
}
