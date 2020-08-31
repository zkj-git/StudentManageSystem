<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Editstu.aspx.cs" Inherits="Editstu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
       <table width="760px" border="0" cellspacing="1">
            <tr>
                <td style="height: 1px; width: 373px;">
                    &nbsp;</td>
                <td style="height: 1px; width: 224px;">
                    &nbsp;</td>
                <td style="height: 1px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 35px; width: 373px;">
                    &nbsp;
                </td>
                <td style="height: 35px; width: 224px;">
                    &nbsp;</td>
                <td style="height: 35px">
                </td>
            </tr>
            <tr>
                <td style="width: 373px">
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Small" SiteMapProvider="defaultSiteMap">
                    </asp:SiteMapPath>
                </td>
                <td style="width: 224px">
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
        <div>
            <table bgcolor="#000000" border="0" cellspacing="1" width="760px">
                <tr>
                    <td bgcolor="#ffffff" width="9%" style="height: 17px">
                        当前用户</td>
                    <td bgcolor="#ffffff" colspan="4" width="91%" style="height: 17px">
                        &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" rowspan="6">
                        学生<br />
                        资料 &nbsp;&nbsp;</td>
                    <td bgcolor="#ffffff" style="width: 65px; height: 22px">
                    <asp:Label ID="Label1" runat="server" Text="学号：" Width="62px"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 160px; height: 22px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="90px" CssClass="text"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                    <asp:Label ID="Label2" runat="server" Text="学生姓名:"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 22px;">
                    <asp:Label ID="Label3" runat="server" Text="性别："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 160px; height: 22px;">
                        &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                            RepeatLayout="Flow" Width="74px">
                            <asp:ListItem Selected="True">男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px;">
                        <asp:Label ID="Label5" runat="server" Text="所在班级："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 22px;">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="85px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 22px;">
                        <asp:Label ID="Label4" runat="server" Text="出生日期："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 160px; height: 22px;">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="text" Width="142px"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px;">
                        <asp:Label ID="Label6" runat="server" Text="联系电话："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 22px;">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 18px">
                        <asp:Label ID="Label8" runat="server" Text="已修学分："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 160px; height: 18px">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="text" Width="146px"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 18px">
                        <asp:Label ID="Label9" runat="server" Text="入学时间："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 18px">
                        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Width="59px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 10px;">
                        <asp:Label ID="Label7" runat="server" Text="密码："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 160px; height: 10px;">
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="text" TextMode="Password" Width="145px"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 10px;">
                        </td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 10px;">
                        </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 17px">
                        <asp:Label ID="Label10" runat="server" Text="家庭住址："></asp:Label></td>
                    <td bgcolor="#ffffff" colspan="3" style="height: 17px">
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="text" Width="574px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="height: 69px">
                        备注</td>
                    <td bgcolor="#ffffff" colspan="4" style="height: 69px">
                        <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox6" runat="server"
                            CssClass="text" Height="102px" TextMode="MultiLine" Width="672px"></asp:TextBox></span></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#ffffff" colspan="5">
                        <asp:Button ID="Button1" runat="server"  Text="保 存" OnClick="Button1_Click" />                      
                        <asp:Button ID="Button6" runat="server"  Text="放 弃" OnClick="Button6_Click" />
                        <asp:Button ID="Button3" runat="server"  Text="返 回" OnClick="Button3_Click" />
                        
                       </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="sms_lbl_note" runat="server"></asp:Label>
</asp:Content>

