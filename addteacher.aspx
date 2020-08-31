<%@ Page Title="教师资料添加" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="addteacher.aspx.cs" Inherits="addteacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="style.css" type="text/css" rel="stylesheet" />
    <div>
        <div>
            <div>
                <table border="0" cellspacing="1" width="760px">
                    <tr>
                        <td style="width: 236px; height: 1px">
                            &nbsp;</td>
                        <td style="width: 224px; height: 1px">
                            &nbsp;</td>
                        <td style="width: 142px; height: 1px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 236px; height: 35px">
                            &nbsp;
                        </td>
                        <td style="width: 224px; height: 35px">
                            &nbsp;</td>
                        <td style="width: 142px; height: 35px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 236px">
                            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Small" SiteMapProvider="defaultSiteMap">
                            </asp:SiteMapPath>
                        </td>
                        <td style="width: 224px">
                        </td>
                        <td style="width: 142px">
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table bgcolor="#000000" border="0" cellspacing="1" width="760">
                    <tr>
                        <td bgcolor="#ffffff" style="height: 17px" width="9%">
                            当前用户</td>
                        <td bgcolor="#ffffff" colspan="4" style="height: 17px" width="91%">
                            &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" rowspan="5">
                            教师资料 &nbsp;&nbsp;</td>
                        <td bgcolor="#ffffff" style="width: 65px; height: 22px">
                            <asp:Label ID="Label1" runat="server" Text="教师号：" Width="62px"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 166px; height: 22px">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="97px"></asp:TextBox></td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                            <asp:Label ID="Label2" runat="server" Text="教师姓名:"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 173px; height: 22px">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px; height: 20px">
                            <asp:Label ID="Label3" runat="server" Text="性别："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 166px; height: 20px">
                            &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem Selected="True">男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:RadioButtonList></td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 20px">
                            <asp:Label ID="Label5" runat="server" Text="所在院系："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 173px; height: 20px">
                            <asp:DropDownList ID="DropDownList3" runat="server" Width="160px" CssClass="text">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem Value="a">计算机系</asp:ListItem>
                                <asp:ListItem Value="b">经济管理系</asp:ListItem>
                                <asp:ListItem Value="e">外语系</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px; height: 22px">
                            <asp:Label ID="Label4" runat="server" Text="职称："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 166px; height: 22px">
                            &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" CssClass="text">
                                <asp:ListItem>讲师</asp:ListItem>
                                <asp:ListItem>教授</asp:ListItem>
                                <asp:ListItem>副教授</asp:ListItem>
                                <asp:ListItem>助教</asp:ListItem>
                                <asp:ListItem>辅导员</asp:ListItem>
                                <asp:ListItem>一般</asp:ListItem>
                            </asp:DropDownList></td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                            <asp:Label ID="Label6" runat="server" Text="联系电话："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 173px; height: 22px">
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px; height: 18px">
                            &nbsp;<asp:Label ID="Label10" runat="server" Text="家庭住址："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 166px; height: 18px">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="text"></asp:TextBox></td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 18px">
                            &nbsp;<asp:Label ID="Label7" runat="server" Text="密码："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 173px; height: 18px">
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="text"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px; height: 17px">
                        </td>
                        <td bgcolor="#ffffff" style="width: 166px; height: 17px">
                        </td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 17px">
                        </td>
                        <td bgcolor="#ffffff" style="width: 173px; height: 17px">
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="height: 69px">
                            备注</td>
                        <td bgcolor="#ffffff" colspan="4" style="height: 69px">
                            <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox6" runat="server"
                                CssClass="text" Height="102px" TextMode="MultiLine" Width="669px"></asp:TextBox></span></td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#ffffff" colspan="5" style="height: 26px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" />&nbsp;
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <asp:Label ID="sms_lbl_note" runat="server" Width="223px" CssClass="text"></asp:Label>
    
    </div>
</asp:Content>

