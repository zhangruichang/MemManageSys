<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" title="网聚社会员管理系统"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 277px;
        }
        .style2
        {
            width: 1387px;
            margin-right: 0px;
        }
        .style3
        {
            width: 180px;
        }
        .style4
        {
            height: 20px;
            width: 898px;
            text-align: left;
        }
        .style5
        {
            height: 194px;
            width: 1033px;
        }
        .style6
        {
            width: 1033px;
        }
        .style7
        {
            padding: inherit;
            width: 898px;
            height: 107px;
            font-family: 微软雅黑;
            font-size: large;
            text-align: center;
        }
        .style8
        {
            width: 1204px;
            height: 434px;
        }
        .style10
        {
            width: 570px;
        }
        .style11
        {
            height: 20px;
            width: 898px;
            text-align: justify;
        }
        .style13
        {
            position: static;
            line-height: 22px;
            width: 543px;
            color: rgb(128, 0, 0);
            font-size: medium;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 10px;
            margin-bottom: 0px;
        }
        .style14
        {
            position: static;
            line-height: 22px;
            color: rgb(153, 51, 102);
            font-size: medium;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 10px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: none">
    <table class="style1">
        <tr>
            <td class="style5">
                <table class="style2">
                    <tr>
                        <td class="style3">
                            <asp:Image ID="Image1" runat="server" Height="173px" 
                                ImageUrl="~/images/logo.png" Width="184px" />
                        </td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/bck.png" 
                                onclick="ImageButton1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <table class="style2">
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <table class="style8" style="border-top-style: solid">
                                <tr>
                                    <td class="style10" 
                                        style="border-width: thin; border-color: #00FF00; border-style: none double none none">
                                        <asp:Image ID="Image3" runat="server" Height="334px" ImageUrl="~/images/3.jpg" 
                                            style="margin-top: 0px" Width="566px" />
                                    </td>
                                    <td>
                                        <span class="Apple-style-span" 
                                            style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
                                        <span class="Apple-style-span" 
                                            style="border-collapse: collapse; color: rgb(51, 51, 51); font-family: 'Trebuchet MS', Arial, 'Bitstream Vera Sans', sans-serif, 宋体; font-size: x-large; line-height: 25px;">
                                        <h2 class="style13">
                                            社团特色：</h2>
                                        </span>
                                        <span class="Apple-style-span" 
                                            
                                            style="border-collapse: collapse; color: rgb(51, 51, 51); font-family: 'Trebuchet MS', Arial, 'Bitstream Vera Sans', sans-serif, 宋体; line-height: 25px;">
                                        <p style="margin: 1.12em 0px; line-height: 22px; width: 548px; height: 209px;">
                                            本社以Photoshop平面设计、Dreamweaver网页设计、网站与论坛建设管理、PHP网站编程四大核心业务为主。兼有动画设计、视频制作、装机与软硬件操作教程的学习实践。将网络技术与实战结合的富有活力和凝聚力的学习团队；本社也网聚共同爱好、具有各种IT技术的同学交流合作。加入本社，将体验到信息技术带来的乐趣，并协同努力完成每个实践项目。</p>
                                        </span></span>
                                    </td>
                                </tr>
                            </table>
                            <table class="style8" 
                                style="border-bottom-style: groove; border-bottom-width: medium">
                                <tr>
                                    <td class="style10" 
                                        
                                        style="border-right-style: double; border-color: #FFFFFF #00FF00 #FFFFFF #FFFFFF">
                                        <span class="Apple-style-span" 
                                            style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Simsun; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
                                        <span class="Apple-style-span" 
                                            style="border-collapse: collapse; color: rgb(51, 51, 51); font-family: 'Trebuchet MS', Arial, 'Bitstream Vera Sans', sans-serif, 宋体; font-size: x-large; line-height: 25px;">
                                        <h2 class="style14">
                                            招募要求：</h2>
                                        </span>
                                        <span class="Apple-style-span" 
                                            
                                            style="border-collapse: collapse; color: rgb(51, 51, 51); font-family: 'Trebuchet MS', Arial, 'Bitstream Vera Sans', sans-serif, 宋体; line-height: 25px;">
                                        <p style="margin-top: 1.12em; margin-right: 0px; margin-bottom: 1.12em; margin-left: 0px; line-height: 22px; ">
                                            1. 只要你对网络技术、平面设计或互联网扩展业务有浓厚兴趣（零基础），愿意积极学习实践，与社员交流、分享、合作的同道者。</p>
                                        <p style="margin-top: 1.12em; margin-right: 0px; margin-bottom: 1.12em; margin-left: 0px; line-height: 22px; ">
                                            2 求贤若渴。招募技术指导与社团管理人才，具体要求：</p>
                                        <p style="margin-top: 1.12em; margin-right: 0px; margin-bottom: 1.12em; margin-left: 0px; line-height: 22px; ">
                                            技术指导与教学：已有一方面或多方面的技术基础的包括但不限于（Photoshop，Dreamweaver，DIV+CSS，Flash，CorelDRAW，illustrator，Office系列，PPT，PHP，ASP.net，CMS内容管理系统，BBS论坛版主/管理员，网站建设）诚邀有一定造诣的同道者加入。</p>
                                        <p style="margin-top: 1.12em; margin-right: 0px; margin-bottom: 1.12em; margin-left: 0px; line-height: 22px; ">
                                            社团管理与发展：已有一方面或多方面的管理基础的包括但不限于（项目管理与发展、团队建设、财务管理、营销推广）诚邀有一定造诣的同道者加入。</p>
                                        </span></span>
                                    </td>
                                    <td style="border-left-style: solid; border-left-width: thin; border-left-color: #00FF00">
                                        <asp:Image ID="Image4" runat="server" Height="400px" ImageUrl="~/images/1.jpg" 
                                            Width="619px" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/4.jpg" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
