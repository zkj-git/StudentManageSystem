<%@ Page Language="C#" autoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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
       /* background:url(Image/top_files/Topback.GIF);*/
       background:url(Image/top_files/top.png);
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
        .auto-style2 {
            width: 1174px;
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

    /*function menu(str) {
        if (str == "user")
            main.location = "user/index.jsp";
        else if (str == "file")
            main.location = "explorer/index.jsp";
        else if (str == "channel")
            main.location = "channel/index.jsp";
        else if (str == "content")
            main.location = "content/index.jsp";
        else if (str == "template")
            main.location = "template/index.jsp";
        else if (str == "userinfo")
            main.location = "user/my_info.jsp";
        else if (str == "config")
            main.location = "system/index.jsp";
        else if (str == "publish")
            main.location = "publish/index.jsp";
        else if (str == "person")
            main.location = "person/index.jsp";
    }*/
</script>
</head>
<body style="margin:0 auto; width:100%;height:700px; background:url(Image/bg1.jpg);">
<form id="form1" runat="server">
 <div style="margin:0 auto;">
<div class="top">
    <span style="margin-left:20px;font-family:叶根友毛笔行书2.0版;font-size:32px;color:#ffffff""></span>
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
         <td class="auto-style2">
             &nbsp;</td>
         <td style="width:100px;">当前登录用户：</td>
         <td style="width:1px;">
             <img alt="" class="auto-style1" src="Image/top_files/splitline_01.gif" />
         </td>
         <td style="width:100px;">
             <asp:Label ID="lblusername" runat="server" Text="" BackColor="Transparent" ForeColor="Red"></asp:Label>
         </td>
         <td style="width:1px;">
             <img alt="" class="auto-style1" src="Image/top_files/splitline_01.gif" />
         </td>
         <td style="width:100px;"><a onclick="logout();">退出系统</a></td>
            <script language="javascript">
                function logout() {
                    if (confirm("真的要退出吗？")) {
                        top.location = 'Logoin.aspx';
                    }
                }
						</script>
    </tr>
    </table>
</div>


 
<div style="width:100%;height:500px;">
    <!-- 左边菜单-->
   <div  style="width:200px;height:500px; float:left;">
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
                    <li id="censusmanager"><a href="u_student.aspx" target="_self">学生用户</a></li>
                    <li id="statisticmanager"><a href="u_tacher.aspx" target="_self">教师用户</a></li>
                    <li id="admin"><a>管理员</a></li>
                </ul>
            </li>
           <li>
                <div class="link"><i class="fa fa-gear"></i>系统管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li><a href="u_password.aspx" target="_self">修改密码</a></li>
                    <li id="oweindex"><a onclick="logout();">退出系统</a></li>
                </ul>
                <script language="javascript">
                    function logout() {
                        if (confirm("真的要退出吗？")) {
                            top.location = 'Logoin.aspx';
                        }
                    }
			</script>
            </li>
        </ul>
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script src='JS/leftnav.js'></script>
    </div>

     <!--右边菜单-->
    <div style=" margin-left:50px;float:left;width:760px;height:500px">
        <div>
        <div><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="defaultSiteMap" Font-Size="Small"></asp:SiteMapPath>
            &nbsp;
            <table style="width: 760px; height: 205px">
                <tr>
                    <td align="center" colspan="4" style="height: 9px; background-image: url(Image/top_files/Topback.GIF);">
                        <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="所在班级："></asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="94px">
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="学生姓名："></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Small" Width="120px"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="学生学号："></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="112px" Font-Size="X-Small"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Small" OnClick="Button1_Click"
                            Text="查找" Width="43px" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="43px" Font-Size="X-Small" />
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text="【添加】" Font-Size="Small"></asp:LinkButton></td>
                </tr>
                <tr style="font-size: 12pt">
                    <td colspan="4" rowspan="1" style="height: 220px">
                        <asp:GridView ID="sms_student" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            DataKeyNames="studentID" HorizontalAlign="Center" OnPageIndexChanging="Data_Page"
                            Width="760px" PageSize="15">
                            <HeaderStyle BackColor="Gold" Font-Bold="True" Font-Size="Small" />
                            <FooterStyle BackColor="Tan" />
                            <Columns>
                                <asp:TemplateField HeaderText="学号" SortExpression="courseid">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Image/e.jpg" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text="编辑"></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text='<%# Bind("studentid") %>'></asp:HyperLink>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("studentid") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="详细资料">
                                    <ItemTemplate>
                                         <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Image/e.jpg" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text="编辑"></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text='<%# Bind("studentname") %>'></asp:HyperLink>                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="所在班级">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("classname")%>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("classname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="性别">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sex") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("sex") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                   <asp:TemplateField HeaderText="已修学分">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="cre" runat="server" Text='<%# Bind("credithour") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="crelabel" runat="server" Text='<%# Bind("credithour") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>                                   
                                <asp:TemplateField HeaderText="家庭住址">
                                     <ItemTemplate>
                                        <asp:Label ID="addlabel" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                                    </ItemTemplate> 
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="联系电话">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="tele" runat="server" Text='<%# Bind("telephone") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="telelabel" runat="server" Text='<%# Bind("telephone") %>'></asp:Label>
                                    </ItemTemplate>
                               
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="选择删除">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle Font-Size="Small" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFC0C0" BorderColor="#C0C0FF" />
                            <PagerStyle HorizontalAlign="Center" />
                            <PagerTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LabelCurrentPage" runat="server" Font-Size="Small">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label></td>
                                        <td>
                                            <asp:Label ID="LabelPageCount" runat="server" Font-Size="Small">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>" Font-Size="Small">首页</asp:LinkButton></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                                CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>"
                                                Font-Size="Small">上一页</asp:LinkButton></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"
                                                Font-Size="Small">下一页</asp:LinkButton></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"
                                                Font-Size="Small">尾页</asp:LinkButton></td>
                                    </tr>
                                </table>
                            </PagerTemplate>
                            <AlternatingRowStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td align="right" colspan="4" rowspan="2">
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" OnClick="LinkButton2_Click">反选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">全选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton></td>
                </tr>
                <tr style="font-size: 12pt">
                </tr>
                <tr style="font-size: 12pt">
                    <td colspan="3" rowspan="1" style="width: 801px; height: 10px">
                        <asp:Label ID="sms_lbl_note" runat="server" Text="......"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Visible="False" Font-Size="Small"></asp:Label></td>
                    <td colspan="1" rowspan="1" style="width: 3px; height: 10px">
                    </td>
                </tr>
            </table>
 </div></div>
    </div>
    </div>


</div>
</form>
</body>
</html>

