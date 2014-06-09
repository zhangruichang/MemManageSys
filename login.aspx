<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="网聚社会员管理系统登录页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 119px;
    }
    
        .style11
        {
            color: #FF0066;
        }
    
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function refreshimg() {
            var timenow = new Date().getTime();
            var ccImg = document.getElementById("ImageCheck");
            ccImg.src = "Code.aspx?" + timenow;
        }
  </script>
    <table class="style1">
    <tr>
        <td class="style2">
            <asp:Image ID="Image5" runat="server" Height="144px" ImageUrl="~/images/封0101.jpg" 
                Width="114px" />
        </td>
        <td>
            用户名&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            密&nbsp;&nbsp;&nbsp; 码&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            验证码&nbsp;&nbsp;
            
            
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
            <asp:Image runat="server" ID="ImageCheck" ImageUrl="Code.aspx" onclick="this.src=this.src+'?'" />
            <span class="style11">
            <a>看不清请点击图片刷新</a></span>
            <br />
            <br />
            身&nbsp;&nbsp;&nbsp; 份&nbsp;&nbsp; 
            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="89px">
                <asp:ListItem Value="普通会员"></asp:ListItem>
                <asp:ListItem Value="管理员"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
                Text="登录" Width="67px" />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="24px" Text="重置" Width="73px" 
                onclick="Button2_Click" />
        &nbsp;&nbsp; <a href="findpsd.aspx">&nbsp;找回密码</a></td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

