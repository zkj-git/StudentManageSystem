<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生信息管理系统</title>
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css"/>
    <link rel="stylesheet" href="Css/leftnav.css" media="screen" type="text/css"/>

    <style>
     
    .top{
        margin: 0 auto;
        width:100%;
        height:37px;
        /*background:url(Image/top_files/Topback.GIF);*/
        background:url(Image/top_files/Topback.GIF);
    }
        .auto-style1 {
            width: 2px;
            height: 22px;
        }
        .nav {
        width:100%;
        height:37px;
        border:0;
        /*background:url(Image/top_files/Logo.GIF);*/
        background-color:#dedada;
        }
    </style>

    <!--js-->
    <script>
        function showsubmenu(sid) {
            whichEl = eval("submenu" + sid);
            imgmenu = eval("imgmenu" + sid);
            if (whichEl.style.display == "none") {
                eval("submenu" + sid + ".style.display=\"\";");
                imgmenu.background = "image/menuup.gif";
            }
            else {
                eval("submenu" + sid + ".style.display=\"none\";");
                imgmenu.background = "image/menudown.gif";
            }
        }
</script>
<script src="Image/switch_files/navi.js"></script>
<script>
    /* if (window.location == window.top.location) {
         var pageFile = window.top.location.toString();
         pageFile = pageFile.substring(pageFile.lastIndexOf("/") + 1, pageFile.length - 1);
         if (pageFile != "crm_admin_main.htm");
         {
             window.top.location = "index.aspx";
         }
     }*/
    function init() {
        window.onresize = reSize;
        //	reSize();
    }

    function reSize() {
        document.all.main.style.height = Math.max(document.body.clientHeight - document.all.main.offsetTop, 0);
        t_menu.style.display = "";
    }

</script>
</head>
<body style="margin:0 auto; background:url(Image/bg1.jpg);">
<form id="form1" runat="server">
 <div style="margin:0 auto;">
<div class="top">
    <span style="margin-left:20px;font-family:叶根友毛笔行书2.0版;font-size:32px;color:#ffffff"">Student information management system</span>
  </div> 
<div class="nav">
    <table style="width: 100%; height:37px; text-align:center; border:0px solid #00ff21">
    <tr>
         <td style="width:100px;">管理中心</td>
         <td style="width:1px;">
             <img alt="" class="auto-style1" src="Image/top_files/splitline_01.gif" />
         </td>
         <td style="width:100px;"><a href="addlogoin.aspx" target="mainFrame">用户管理</a></td>
         <td style="width:1px;">
             <img alt="" class="auto-style1" src="Image/top_files/splitline_01.gif" />
         </td>
         <td>&nbsp;</td>
    </tr>
    </table>
</div>


 
<div style="width:100%;height:750px;">
    <!-- 左边菜单-->
    <div class="account-l fl">
        <a class="list-title">基本操作</a>
        <ul id="accordion" class="accordion">
            <li>
                <div class="link"><i class="fa fa-mortar-board"></i>教师管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="shop"><a href="teacher.aspx" target="_self">教师资料管理</a></li>
                    <li id="publicproducts"><a href="addteacher.aspx" target="_self">教师资料添加</a></li>
                </ul>
            </li>
            <li>
                <div class="link"><i class="fa fa-group"></i>学生管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="publishpurchase"><a href="student.aspx" target="_self">学生资料管理</a></li>
                    <li id="postneeds"><a href="addstu.aspx" target="_self">学生资料添加</a></li>
                    <li id="getneeds"><a href="department.aspx" target="_self">学生所在院所资料</a></li>
                    <li id="mypricesheet"><a href="speciality.aspx" target="_self">学生所在专业资料</a></li>
                    <li id="concernshop"><a onclick="logout();">退出系统</a></li>
                    <script language="javascript">
                        function logout() {
                            if (confirm("真的要退出吗？")) {
                                top.location = 'Logoin.aspx';
                            }
                        }
						</script>
                </ul>
            </li>
            <li>
                <div class="link"><i class="fa fa-pencil-square-o"></i>课程管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="buyerxunpanlist"><a href="course.aspx" target="_self">课程资料管理</a></li>
                    <li id="publishrequire"><a href="addcourse.aspx" target="_self">课程资料添加</a></li>
                </ul>
            </li>
            <li>
                <div class="link"><i class="fa fa-file-text"></i>成绩管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="myorder"><a href="grade.aspx" target="_self">学生成绩查询</a></li>
                    <li id="myrefund"><a href="addgrade.aspx" target="_self">学生成绩录入</a></li>
                </ul>
            </li>
            <li>
                <div class="link"><i class="fa fa-navicon"></i>班级管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="myloan"><a href="m_class.aspx" target="_self">班级资料管理</a></li>
                    <li id="financialmanage"><a href="addclass.aspx" target="_self">班级资料添加</a></li> 
                </ul>
            </li>
         
            <!-- 视情况而定 -->
            <li>
                <div class="link"><i class="fa fa-user"></i>用户管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="censusmanager"><a>学生用户</a></li>
                    <li id="statisticmanager"><a>教师用户</a></li>
                </ul>
            </li>
         
        </ul>
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script src='JS/leftnav.js'></script>
    </div>
    </div>
    <!--右边菜单-->
    <div style=" margin-left:50px;float:left;width:760px;height:750px">
       
    </div>
</div>
</form>
</body>
</html>
