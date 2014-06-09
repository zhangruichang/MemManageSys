<%@ Page Title="文件上传" Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="MyZone_UploadFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image2" runat="server" 
        ImageUrl="~/images/QQ截图20110903101306.png" />
    <br />
    <script language="javascript" type="text/javascript">
    //添加一个上传控件
    function AddFileCtrol() {
        //新建一个Div元素
        var innerDiv = document.createElement("div");
        //添加到Div元素中
        document.getElementById("ctl00_ContentPlaceHolder1_dv1").appendChild(innerDiv);

        //建立input元素
        var fileCtrol = document.createElement("input");
        //设置元素的名称
        fileCtrol.name = "upFile";
        //设置元素的类型
        fileCtrol.type = "file";
        //添加到span元素
        innerDiv.appendChild(fileCtrol);

        //建立input元素
        var btnCtrol = document.createElement("input");
        //设置元素的名称
        btnCtrol.name = "btnDelete";
        //设置元素的类型
        btnCtrol.type = "button";
        //设置元素的显示文字
        btnCtrol.setAttribute("value", "删除")
        //绑定函数到onclick事件
        btnCtrol.onclick = function () { DeleteFileCtrol(this.parentNode) };
        //添加到div元素
        innerDiv.appendChild(btnCtrol);
    }
    //删除一个上传控件
    function DeleteFileCtrol(obj) {
        document.getElementById("ctl00_ContentPlaceHolder1_dv1").removeChild(obj);
    }

        </script>
    <input id="btnAttch" type="button" value="添加附件" onclick="AddFileCtrol();"><br/>
    <div id="dv1" runat="server" >
    </div>
    <br />
    <asp:Button ID="btnUpload1" runat="server" Text="上传" Visible="False" 
        />
    <br />
    <asp:ImageButton ID="btnUpload" runat="server" 
        ImageUrl="~/images/1QQ截图20110903101922.png" onclick="btnUpload_Click" />
</asp:Content>

