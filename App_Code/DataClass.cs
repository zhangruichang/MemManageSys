using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text;
using System.IO;

/// <summary>
///DataClass 的摘要说明
/// </summary>
public class DataClass
{
    public DataClass()
    {
    }
    /// <summary>
    /// 获取Sql Server 2008数据库连接
    /// </summary>
    /// <returns>返回一个已经建立的连接</returns>
    private SqlConnection GetSqlServerConn()
    {
        SqlConnection sqlConn;                  //定义SQl Server连接对象
        //读取web.config配置文件的ConnectionString节点获取连接字符串
        string strConn = WebConfigurationManager.ConnectionStrings["MemManaSysConnectionString1"].ConnectionString;
        sqlConn = new SqlConnection(strConn);   //生成数据库连接对象
        sqlConn.Open();                         //打开数据库连接
        return sqlConn;                         //返回数据库连接对象以供调用
    }

    /// <summary>
    /// 关闭已打开的数据库连接
    /// </summary>
    private void CloseSqlServerConn(SqlConnection sqlConn)
    {
        if (sqlConn.State == ConnectionState.Open)  //如果数据库连接处于关闭状态，则打开此连接
        {
            sqlConn.Close();
        }
    }

    /// <summary>
    /// 获得上传文件的信息
    /// </summary>
    /// <returns>返回得到的文件信息</returns>
    public DataTable GetFilesInfo()
    {
        SqlConnection sqlConn;
        SqlDataAdapter sqlAdpt;
        DataTable dtFilesInfo;
        string strComm = "select NewFileName,OldFileName,SaveAddress,UploadTime,TypeName from tabUploadFile";
        try
        {
            sqlConn = GetSqlServerConn();
            sqlAdpt = new SqlDataAdapter(strComm, sqlConn);//使用数据适配器读取数据
            dtFilesInfo = new DataTable();
            sqlAdpt.Fill(dtFilesInfo);//填充数据到DataTable
            return dtFilesInfo;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    /// 保存上传文件信息信息
    /// </summary>
    /// <param name="fileColl">所有上传文件的信息</param>
    /// <returns>返回保存的信息结果</returns>
    public bool SaveFilesInfo(HttpFileCollection fileColl)
    {
        SqlConnection sqlConn;
        SqlCommand sqlComm;
        string strComm = @"insert into 
                        tabUploadFile(NewFileName,OldFileName,SaveAddress,UploadTime,TypeName) 
                        values(@NewFileName,@OldFileName,@SaveAddress,@UploadTime,@TypeName)";
        sqlConn = GetSqlServerConn();//调用方法获取数据库连接       
        SqlTransaction sqlTran = sqlConn.BeginTransaction();//开始数据库事务
        StringBuilder sbFileName;
        try
        {
            sqlComm = new SqlCommand(strComm, sqlConn);
            sqlComm.Transaction = sqlTran;//指定命令要使用的事务

            //循环保存上传信息
            for (int i = 0; i < fileColl.Count; i++)
            {
                if (!String.IsNullOrEmpty(fileColl[i].FileName))
                {
                    //使用年月日时分秒毫秒生成文件名
                    sbFileName = new StringBuilder();
                    sbFileName.Append(DateTime.Now.Year);
                    sbFileName.Append(DateTime.Now.Month);
                    sbFileName.Append(DateTime.Now.Day);
                    sbFileName.Append(DateTime.Now.Hour);
                    sbFileName.Append(DateTime.Now.Minute);
                    sbFileName.Append(DateTime.Now.Second);
                    sbFileName.Append(DateTime.Now.Millisecond);
                    sbFileName.Append(Path.GetExtension(fileColl[i].FileName));

                    //为SQL命令指定对应参数
                    sqlComm.Parameters.Clear();
                    sqlComm.Parameters.AddWithValue("@NewFileName", sbFileName.ToString());
                    sqlComm.Parameters.AddWithValue("@OldFileName", Path.GetFileName(fileColl[i].FileName));
                    sqlComm.Parameters.AddWithValue("@SaveAddress", System.Web.HttpContext.Current.Server.MapPath("~/UpLoaded/"));
                    sqlComm.Parameters.AddWithValue("@UploadTime", DateTime.Now);
                    sqlComm.Parameters.AddWithValue("@TypeName", Path.GetExtension(fileColl[i].FileName));
                    sqlComm.ExecuteNonQuery();//执行SQL命令
                    //保存对应的文件到服务器
                    fileColl[i].SaveAs(System.Web.HttpContext.Current.Server.MapPath("~/UpLoaded/") + sbFileName.ToString());
                }
            }
            sqlTran.Commit();//提交事务保存数据
            return  true;
        }
        catch (Exception ex)
        {
            sqlTran.Rollback();//发生异常回滚事务
            CloseSqlServerConn(sqlConn);//关闭数据库连接
            return false;
        }
    }
}
