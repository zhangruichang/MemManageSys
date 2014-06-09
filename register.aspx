<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="会员注册" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .bartype
{
  color:Blue;
  background-color:Green ;
}
 .barborder
{
 border-style:solid ;
 border-width: 1px;
 width: 200px;
 vertical-align:middle ;
}
      .aaa
      {
     background-color:#047AFD;
         color:#ffffff;
         font-family:Arial ;
         font-size:5pt;
         padding:2px 3px 2px 3px;
      }
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 86px;
    }
    .style3
    {
        width: 455px;
    }
        .style4
        {
            color: #FF0066;
        }
        .style11
        {
            color: rgb(255, 102, 0);
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
        function passHint() {
            var txt = document.getElementById('ctl00_ContentPlaceHolder1_TextBox2').value;
            if (txt.length < 6) {
                document.all("tab").backcolor = "red";
                document.all("tab2").bgColor = "";
                else{
                document.all("tab").bgColor="";
                document.all("tab2").bgColor="red";
                }
            }
        }
    </script>
    <table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            用&nbsp;户名&nbsp;&nbsp; &nbsp; 
            <asp:TextBox ID="TextBox1" runat="server" 
                ontextchanged="TextBox1_TextChanged" Height="20px" Width="148px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="style11" 
                
                style="font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span></span><span class="style11">用学号注册</span><span class="style4">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="用户名格式错误" 
                ValidationExpression="[0-9]{8}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            密&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox2" runat="server"  
                TextMode="Password" Height="20px" Width="146px"></asp:TextBox>
            <asp:PasswordStrength ID="TextBox2_PasswordStrength" runat="server" 
                TargetControlID="TextBox2" DisplayPosition="RightSide" TextCssClass="aaa" HelpHandlePosition="AboveRight"

            MinimumNumericCharacters="2" MinimumSymbolCharacters="2" StrengthIndicatorType="BarIndicator"

            PrefixText="密码强度：" PreferredPasswordLength="6" RequiresUpperAndLowerCaseCharacters="true"

            TextStrengthDescriptions="很差;差;一般;好;很好" CalculationWeightings="40;20;20;20" BarIndicatorCssClass="bartype"

            BarBorderCssClass="barborder">
            </asp:PasswordStrength>
            <span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span>密码为6-10位<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="密码格式错误" Font-Size="Medium" 
                ValidationExpression="^[A-Za-z0-9]{6,10}$"></asp:RegularExpressionValidator>
            </span><br />
            <br />
            确认密码&nbsp; 
            <asp:TextBox ID="TextBox11" runat="server" TextMode="Password" Height="20px" 
                Width="148px"></asp:TextBox>
            <span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span></span><br />
            <br />
            姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名&nbsp; 
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="147px"></asp:TextBox>
            <span class="style4">
            <span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span>用填写真实姓名<span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; "><asp:RegularExpressionValidator 
                ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="姓名格式错误" Font-Size="Medium" 
                Height="20px" ValidationExpression="^[\u4e00-\u9fa5]{2,4}$"></asp:RegularExpressionValidator>
            </span></span></span><br />
            <br />
            性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别&nbsp;&nbsp; 
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="男"></asp:ListItem>
                <asp:ListItem Value="女"></asp:ListItem>
            </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style4">
            <span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span></span><br />
            <br />
            年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 龄&nbsp; 
            <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" 
                Height="20px" Width="147px"></asp:TextBox>
            <span class="style4">
            <span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span></span>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="年龄格式错误" 
                ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <br />
            学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 院&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="department" 
                DataValueField="department" Height="19px" Width="146px">
            </asp:DropDownList>
            <span class="style4">
            <span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            &nbsp;*</span></span></span><br />
            <br />
            专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 业&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="148px"></asp:TextBox>
            <span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span></span><br />
            <br />
            社团部门&nbsp;&nbsp;<asp:DropDownList 
                ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource4" DataTextField="depofunion" 
                DataValueField="depofunion" Height="25px" Width="123px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;<span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">&nbsp;&nbsp;
            *</span></span></span><br />
            <br />
            问&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 题&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox9" runat="server" Height="20px" Width="147px"></asp:TextBox>
            <span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span>便于找回密码，请谨慎填写</span><br />
            <br />
            答&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 案&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox10" runat="server" Height="20px" Width="147px"></asp:TextBox>
            <span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
            <span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">
            *</span></span></span><br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
                Text="确定" Width="61px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="填写联系信息" 
                onclick="Button2_Click" Height="23px" Width="120px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注：打<span class="style4"><span class="Apple-style-span" 
                style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span class="Apple-style-span" 
                style="color: rgb(255, 0, 0); font-size: 12px; text-align: -webkit-left; -webkit-border-horizontal-spacing: 1px; -webkit-border-vertical-spacing: 1px; ">*</span></span></span>为必填选项<br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                SelectCommand="SELECT * FROM [dep]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                SelectCommand="SELECT * FROM [union]"></asp:SqlDataSource>
            <br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

