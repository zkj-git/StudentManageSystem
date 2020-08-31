<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="xinshouyemanager.crm.left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>出国在线客户关系管理系统</title>
     <link href="../crm/Inc/bs.css" rel="stylesheet" type="text/css">
<script>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="image/menuup.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="image/menudown.gif";
}
}
</script>

<style type="text/css">
BODY {BACKGROUND:799ae1; MARGIN: 0px;}
.fold{display:none}
.hand{cursor:pointer;}


.sec_menu {
	BORDER-RIGHT: white 1px solid;
	OVERFLOW: hidden;
	BORDER-LEFT: white 1px solid;
	BORDER-BOTTOM: white 1px solid;
	background-color: #9DD999;
}

.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 10px; COLOR: #215dc6; POSITION: relative; TOP: 2px 
}

.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 10px; COLOR: #428eff; POSITION: relative; TOP: 2px
}
body,td,th {
	font-size: 12px;
	color: #215dc6;
}
a:link {
	color: #215dc6;
}
a:visited {
	color: #215DC6;
}
.fold{display:none}
.hand{cursor:hand}
</style>

<SCRIPT language=javascript src="../crm/image/switch_files/navi.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
		if(window.location == window.top.location)
		{
			var pageFile = window.top.location.toString();
			pageFile = pageFile.substring(pageFile.lastIndexOf("/")+1,pageFile.length - 1);
			if(pageFile !="crm_admin_main.htm");
			{
				window.top.location = "crm_admin_main.htm";
			}
		}
		function init()
{
	window.onresize=reSize;
//	reSize();
}

function reSize() {
	document.all.main.style.height = Math.max(document.body.clientHeight - document.all.main.offsetTop, 0);
	t_menu.style.display = "";
}

function menu(str)
{
	if(str=="user")
		main.location="user/index.jsp";
	else if(str=="file")
		main.location="explorer/index.jsp";
	else if(str=="channel")
		main.location="channel/index.jsp";
	else if(str=="content")
		main.location="content/index.jsp";
	else if(str=="template")
		main.location="template/index.jsp";
	else if(str=="userinfo")
		main.location="user/my_info.jsp";
	else if(str=="config")
		main.location="system/index.jsp";
	else if(str=="publish")
		main.location="publish/index.jsp";
	else if(str=="person")
		main.location="person/index.jsp";
}
						</SCRIPT>

<link href="../crm/style.css" rel="stylesheet" type="text/css" />
<link href="../crm/Css/userlogin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {color: #CCCCCC}
.STYLE3 {
	color: #000000;
	font-weight: bold;
}
.STYLE4 {color: #000000}
-->
</style>
</head>
<body scrolling=no cellSpacing=0>
    <form id="form1" runat="server">
   
<table width="100" height="3"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td></td>
  </tr>
</table>
<table width="130" border="0" align="center" cellpadding="0" cellspacing="1">
	<tr>
		<td valign="bottom" height="42">
		<img height="50" src="../crm/image/title.gif" width="130" border="0"></td>
	</tr>
</table>

<table cellspacing="0" cellpadding="0" width="130" align="center">
	<tr>
<td></td>
	</tr>

	<tr>
		<td id="imgmenu2" class="menu_title" onClick="showsubmenu(2)"  height="25">
<table width="0%"  border="0" cellpadding="0" cellspacing="0" background="../crm/image/menudown3.gif" bgcolor="#7F97DA">
      <tr>
        <td width="32" height="28"><div align="center"><img src="../crm/image/shuxing.gif" width="32" height="32" /></div></td>
        <td width="6"><img src="../crm/image/l1.gif" width="1" height="23"></td>
        <td width="105"><div align="center" class="STYLE4"><strong><a name="2" id="2"></a>教师管理</strong></div></td>
        <td width="11"><div align="left"><img src="../crm/image/l2.gif" width="10" height="11"></div></td>
      </tr>
    </table></td>
	</tr>
	<tr>
	  <td id="submenu2" style="DISPLAY: none">
		<div class="sec_menu">
			<table width="100%" height="3"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td></td>
              </tr>
            </table>
			<table width="110" border="0" align="center" cellpadding="0" cellspacing="0" id="table2">
				
				<tr><td width="110" height="22"><div align="center">教师资料管理</div></td>
			    </tr>
			    <tr><td width="110" height="22"><div align="center" class="STYLE4">教师资料添加</div></td>
			    </tr>
				
			   
		  </table>
   		</div>	  </td>
	</tr>
	<tr>
		<td id="imgmenu3" class="menu_title" onClick="showsubmenu(3)"  height="25">
		<table width="0%"  border="0" cellpadding="0" cellspacing="0" background="../crm/image/menudown3.gif" bgcolor="#7F97DA">
      <tr>
        <td width="32" height="28"><div align="center"><img src="../crm/image/yonghu.gif" width="32" height="32" /></div></td>
        <td width="6"><img src="../crm/image/l1.gif" width="1" height="23"></td>
        <td width="105"><div align="center" class="STYLE3">学生管理</div></td>
        <td width="11"><div align="left"><img src="../crm/image/l2.gif" width="10" height="11"></div></td>
      </tr>
    </table></td>
	</tr>
	  <td id="submenu3" style="DISPLAY: none">
		<div class="sec_menu">
			<table width="100%" height="5"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table width="110" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="110" height="22"><div align="center">学生资料管理</div></td>
                  </tr>
                  <tr>
                    <td width="110" height="22"><div align="center">学生资料添加</div></td>
                  </tr>
				   <tr>
                    <td width="110" height="22"><div align="center">学生所在院系资料</div></td>
                  </tr>
				   <tr>
                    <td width="110" height="22"><div align="center">学生所在专业资料</div></td>
                  </tr>
				   <tr>
                    <td width="110" height="22"><div align="center"><%=Session["user_login_name"].ToString() %>退出系统</div></td>
                  </tr>
                  <script language="javascript">
						function logout()
						{
							if(confirm("真的要退出吗？"))
							{
								top.location='logout.aspx';
							}
						}
						</script>
                </table></td>
              </tr>
            </table>
		</div></td>
	</tr>
<tr>
  <tr>
		<td id="imgmenu4" class="menu_title" onClick="showsubmenu(4)"  height="25">
		<table width="0%"  border="0" cellpadding="0" cellspacing="0" background="../crm/image/menudown3.gif" bgcolor="#7F97DA">
      <tr>
        <td width="32" height="28"><div align="center"><img src="../crm/image/guanggao.gif" width="32" height="32" /></div></td>
        <td width="6"><img src="../crm/image/l1.gif" width="1" height="23"></td>
        <td width="105"><div align="center" class="STYLE4"><strong>课程管理</strong></div></td>
        <td width="11"><div align="left"><img src="../crm/image/l2.gif" width="10" height="11"></div></td>
      </tr>
    </table></td>
	</tr>
	  <td id="submenu4" style="DISPLAY: none">
		<div class="sec_menu">
			<table width="100%" height="5"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table width="110" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="110" height="22"><div align="center">课程资料管理</div></td>
                  </tr>
				  <tr>
                    <td width="110" height="22"><div align="center">课程资料添加</div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
		</div></td>
	</tr>
<tr>
<tr>
		<td id="imgmenu5"  class="menu_title" onClick="showsubmenu(5)"  height="25">
		<table width="0%"  border="0" cellpadding="0" cellspacing="0" background="../crm/image/menudown3.gif" bgcolor="#7F97DA">
      <tr>
        <td width="32" height="28"><div align="center"><img src="../crm/image/diqu.gif" width="32" height="32" /></div></td>
        <td width="6"><img src="../crm/image/l1.gif" width="1" height="23"></td>
        <td width="105"><div align="center" class="STYLE3">成绩管理</div></td>
        <td width="11"><div align="left"><img src="../crm/image/l2.gif" width="10" height="11"></div></td>
      </tr>
    </table></td>
	</tr>
	  <td id="submenu5" style="DISPLAY: none">
		<div class="sec_menu">
			<table width="100%" height="5"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table width="110" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="110" height="22"><div align="center">学生成绩查询</div></td>
                  </tr>
				  <tr>
                    <td width="110" height="22"><div align="center">学生成绩录入</div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
		</div></td>
	</tr>
<tr>  
<tr>
		<td id="imgmenu6"  class="menu_title" onClick="showsubmenu(6)"  height="25">
		<table width="0%"  border="0" cellpadding="0" cellspacing="0" background="../crm/image/menudown3.gif" bgcolor="#7F97DA">
      <tr>
        <td width="32" height="28"><div align="center"><img src="../crm/image/fabu.gif" width="32" height="32" /></div></td>
        <td width="6"><img src="../crm/image/l1.gif" width="1" height="23"></td>
        <td width="105"><div align="center" class="STYLE3">班级管理</div></td>
        <td width="11"><div align="left"><img src="../crm/image/l2.gif" width="10" height="11"></div></td>
      </tr>
    </table></td>
	</tr>
	  <td id="submenu6" style="DISPLAY: none">
		<div class="sec_menu">
			<table width="100%" height="5"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table width="110" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="110" height="22"><div align="center">班级资料管理</div></td>
                  </tr>
				  <tr>
                    <td width="110" height="22"><div align="center">班级资料添加</div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
		</div></td>
	</tr>
<tr>            
<script language='JavaScript'>
showsubmenu(2);
</script>
    </div>
    <table width="130" height="23%" border="0" align="center" cellpadding="0" cellspacing="0" 
            bgcolor="#019C00">
      <tbody>
        <tr>
          <td width="9" 
                background="../crm/image/topback.gif" 
                height="37"></td>
          <td width="48" background="../crm/image/topback.gif"><a href="http://www.chuguo.cn/index.htm"><img height="26" 
                  src="../crm/image/icon_top_info.gif" width="26" 
                  border="0" /></a> </td>
          <td width="48" background="../crm/image/topback.gif"><a 
                  class="menuItem" title="Hishop 用户论坛" href="http://bbs.chuguo.cn/" 
                  target="_top"><img height="26" 
                  src="../crm/image/icon_top_help.gif" width="26" 
                  border="0" /> </a></td>
          <td width="48" background="../crm/image/topback.gif"><a href="javascript:logout()"><img height="26" 
                  src="../crm/image/icon_top_exit.gif" width="26" 
                  border="0" /></a> </td>
          <td width="17" 
                background="../crm/image/topback.gif"></td>
        </tr>
        <tr>
          <td colspan="5" height="100%"></td>
        </tr>
      </tbody>
    </table>
    </table>
    </form>
</body>
</html>
