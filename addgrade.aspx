<%@ Page Title="学生成绩录入" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="addgrade.aspx.cs" Inherits="addgrade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div>
            &nbsp;<table border="0" cellspacing="1" width="100%">
                <tr>
                    <td style="width: 276px; height: 1px">
                        &nbsp;</td>
                    <td style="width: 224px; height: 1px">
                        &nbsp;</td>
                    <td style="width: 305px; height: 1px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 276px; height: 35px">
                        &nbsp;
                    </td>
                    <td style="width: 224px; height: 35px">
                        &nbsp;</td>
                    <td style="width: 305px; height: 35px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
        <asp:SiteMapPath id="SiteMapPath1" runat="server" SiteMapProvider="defaultSiteMap" Font-Size="Small">
    </asp:SiteMapPath>
                    </td>
                    <td style="width: 305px">
                    </td>
                </tr>
            </table>
            <div>
                <table bgcolor="#000000" border="0" cellspacing="1" width="760">
                    <tr>
                        <td bgcolor="#ffffff" style="height: 17px; font-size: small; width: 56px;">
                            当前用户</td>
                        <td bgcolor="#ffffff" colspan="4" style="height: 17px" width="91%">
                            &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" rowspan="6" style="width: 56px">
                            <asp:Label ID="Label8" runat="server" Text="成绩录入" Font-Size="Small" Width="81px"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 16px; height: 22px">
                            <asp:Label ID="Label1" runat="server" Text="课程号：" Width="90px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="3" style="height: 22px">
                            <asp:Label ID="Label4" runat="server" Width="121px" Font-Size="Small"></asp:Label></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 16px; height: 20px">
                            <asp:Label ID="Label3" runat="server" Text="课程名称：" Width="86px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="3" style="height: 20px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="128px" AutoPostBack="true" OnSelectedIndexChanged="LBox2_OnSelectedIndexChanged" Font-Size="X-Small">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 16px; height: 22px">
                            <asp:Label ID="Label2" runat="server" Text="学号：" Width="73px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="3" style="height: 22px">
                            <asp:Label ID="Label5" runat="server" Width="124px" Font-Size="Small"></asp:Label></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 16px; height: 14px">
                            <asp:Label ID="Label7" runat="server" Text="学生姓名：" Width="84px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="3" style="height: 14px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="118px" Font-Size="X-Small"></asp:TextBox>
                            <asp:Button ID="validate" runat="server" Height="19px" Text="验证" Width="37px" OnClick="validate_Click" Font-Size="X-Small"  ToolTip="点击确认输入学生是否存在!"/></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 16px; height: 17px">
                            <asp:Label ID="Label10" runat="server" Text="已修学分：" Width="81px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="3" style="height: 17px">
                            <asp:Label ID="Label6" runat="server" Width="60px" Font-Size="Small"></asp:Label></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 16px; height: 32px">
                            <asp:Label ID="Label9" runat="server" Text="成绩：" Width="56px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="3" style="height: 32px">
                            <asp:TextBox ID="TextBox2" runat="server" Width="84px" Font-Size="X-Small"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="height: 34px" colspan="5">
                            <span style="width: 3px; height: 21px">&nbsp;&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#ffffff" colspan="5" style="height: 26px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" Font-Size="X-Small" />&nbsp;
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" Font-Size="X-Small" />
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Label ID="sms_lbl_note" runat="server" CssClass="text" Width="223px" Font-Size="Small"></asp:Label>
        </div>
    
    </div>
</asp:Content>

