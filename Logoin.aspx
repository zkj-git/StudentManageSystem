<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logoin.aspx.cs" Inherits="Logoin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理系统</title>
   <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles." />
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link href="Css/reset.css" rel="stylesheet" />
    <link href="Css/style.css" rel="stylesheet" />
    <style type="text/css">
       body{ text-align:center;
         height:100px;
         width:100%;
        /* background-image:url(Image/top.jpg);  */
        background:url(Image/bg1.jpg);
       }
        .bg {
    height:100px;
         width:100%;  
        }

  .BTNpost {width:100px;height:29px;background:url(Image/login/btn_lg1.png);border:none;cursor:pointer;}
  .BTNpost2 {width:100px;height:29px;background:url(Image/login/btn_lg2.png);border:none;cursor:pointer;}
   
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div  class="bg">
		<div class="login">
			<div class="login-top">
				学生信息管理系统
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="Image/name.png"/></div>
				<div class="login-center-input">
					<asp:TextBox ID="username" runat="server"></asp:TextBox>
					<div class="login-center-input-text">用户名</div>
				</div>
			</div>
			<div class="login-center clearfix">
				<div class="login-center-img"><img src="Image/password.png"/></div>
				<div class="login-center-input">
					<asp:TextBox ID="mypassword" runat="server" TextMode="Password"></asp:TextBox>
					<div class="login-center-input-text">密码</div>
				</div>
			</div>
			<div class="login-button">
				<asp:Button ID="Button1" runat="server" Text="" CssClass="BTNpost" title="登录" onmouseover="Chclass(this,'BTNpost2')"
                                onmouseout="Chclass(this,'BTNpost')" OnClick="Button1_Click"  />
			</div><br />
        
        <asp:Label ID="message" runat="server" Text="" BackColor="Transparent" ForeColor="Red"></asp:Label>
		</div>
		<div class="sk-rotating-plane"></div>
</div>

<!-- scripts -->
<script type="text/javascript" src="js/particles.min.js"></script>
<script type="text/javascript" src="js/app.js"></script>
    </form>
</body>
<script type="text/javascript">
    function Chclass(obj, C_name) {
        obj.className = C_name;
    }
</script>
</html>
