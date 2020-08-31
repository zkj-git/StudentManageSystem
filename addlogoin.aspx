<%@ Page Title="添加管理员" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="addlogoin.aspx.cs" Inherits="addlogoin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
    		<table cellSpacing="0" cellPadding="1" align="center" border="1" style="width: 319px">
				<tr style="BACKGROUND-COLOR: lightgrey">
					<td colSpan="2" align="center" background="Image/top_files/Topback.GIF" style="BACKGROUND-COLOR: silver; font-size: small; height: 24px;">添加管理员</td>
			  </tr>
				<tr>
					<td align="right" height="30" style="width: 260px">
                        <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="用户名："></asp:Label>&nbsp;&nbsp;</td>
					<td style="width: 399px">&nbsp;<asp:textbox id="txtuser" Width="155" Runat="server" Font-Size="X-Small"></asp:textbox>
						
						<asp:CustomValidator id="cuvuser" runat="server" ControlToValidate="txtuser" ErrorMessage="用户名已存在！" Display="Dynamic" Font-Size="Small">*</asp:CustomValidator></td>
				</tr>
				<tr>
					<td align="right" height="30" style="width: 260px">
                        <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="密码："></asp:Label>&nbsp;&nbsp;</td>
					<td style="width: 399px">&nbsp;<asp:textbox id="txtpwd" Width="155" Runat="server" TextMode="Password" Font-Size="X-Small"></asp:textbox>
						<asp:RegularExpressionValidator id="revpwd" runat="server" ErrorMessage="密码长度是6-15，由英文字母（a-z/A-Z），数字，下划线组成" ControlToValidate="txtpwd"
							ValidationExpression="[a-zA-Z0-9_]{6,15}$" Font-Size="Small">*</asp:RegularExpressionValidator></td>
				</tr>
				<tr>
					<td align="right" height="30" style="width: 260px">
                        <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="确认密码："></asp:Label>&nbsp;&nbsp;</td>
					<td style="width: 399px">&nbsp;<asp:textbox id="txtpwdRepeat" Width="155" Runat="server" TextMode="Password" Font-Size="X-Small"></asp:textbox>
						<asp:comparevalidator id="cvpwd" runat="server" ControlToValidate="txtpwdRepeat" ControlToCompare="txtpwd"
							ErrorMessage="*" Font-Size="Small"></asp:comparevalidator></td>
				</tr>
				<tr>
					<td align="right" height="30" style="width: 260px">
                        <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="用户类型："></asp:Label>&nbsp;&nbsp;</td>
					<td style="width: 399px">&nbsp;<asp:dropdownlist id="ddltype" Height="23" Width="155" Runat="server" Font-Size="X-Small">
							<asp:ListItem Value="&lt;--请选择--&gt;">&lt;--请选择--&gt;</asp:ListItem>
							<asp:ListItem Value="超级管理员">超级管理员</asp:ListItem>
							<asp:ListItem Value="普通管理员">普通管理员</asp:ListItem>
						</asp:dropdownlist></td>
				</tr>
				<tr>
					<td align="center" colSpan="2" height="32"><asp:button id="btninput" Runat="server" Text="添加" onclick="btninput_Click" Font-Size="X-Small"></asp:button>&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Small" Text="返回" /></td>
				</tr>
			</table>
				<table align="center" cellpadding="0" cellspacing="0" border="0" width="400">
				<tr>
					<td>
						<asp:ValidationSummary id="vsShow" runat="server" Height="80px" Width="300px" HeaderText="错误信息：" Font-Size="X-Small"></asp:ValidationSummary>
					</td>
				</tr>
			</table>
    
    </div>
</asp:Content>

