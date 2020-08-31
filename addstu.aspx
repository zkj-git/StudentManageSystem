<%@ Page Title="添加学生信息" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="addstu.aspx.cs" Inherits="addstu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div>
       <table style="width:100%;" border="0" cellspacing="1">
            <tr>
                <td style="height: 1px; width: 214px;">
                    &nbsp;</td>
                <td style="height: 1px; width: 224px;">
                    &nbsp;</td>
                <td style="height: 1px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 35px; width: 214px;">
                    &nbsp;
                </td>
                <td style="height: 35px; width: 224px;">
                    &nbsp;</td>
                <td style="height: 35px">
                </td>
            </tr>
            <tr>
                <td style="width: 214px">
                </td>
                <td style="width: 224px">
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
        <div>
            <table bgcolor="#000000" border="0" cellspacing="1" width="100%">
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
                    <td bgcolor="#ffffff" style="width: 166px; height: 22px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="81px" CssClass="text"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                    <asp:Label ID="Label2" runat="server" Text="学生姓名:"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 22px">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 22px;">
                    <asp:Label ID="Label3" runat="server" Text="性别："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 22px;">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="text" Width="195px"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px;">
                        <asp:Label ID="Label5" runat="server" Text="所在班级："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 22px;">
                        &nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="text" Width="115px"></asp:TextBox>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="89px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack ="true">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 22px;">
                        <asp:Label ID="Label4" runat="server" Text="出生日期："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 22px;">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="text"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px;">
                        <asp:Label ID="Label6" runat="server" Text="联系电话："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 22px;">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 18px">
                        <asp:Label ID="Label8" runat="server" Text="已修学分："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 18px">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="text"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 18px">
                        <asp:Label ID="Label9" runat="server" Text="入学时间："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 18px">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 17px;">
                        <asp:Label ID="Label10" runat="server" Text="家庭住址："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 17px;">
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="text" Height="18px"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 17px;">
                        <asp:Label ID="Label7" runat="server" Text="密码："></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 17px;">
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 17px">
                    </td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 17px">
                    </td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 17px">
                    </td>
                    <td bgcolor="#ffffff" style="width: 159px; height: 17px">
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="height: 69px">
                        备注</td>
                    <td bgcolor="#ffffff" colspan="4" style="height: 69px">
                        <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox11" runat="server"
                            CssClass="text" Height="102px" TextMode="MultiLine" Width="669px"></asp:TextBox></span></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#ffffff" colspan="5">
                        <asp:Button ID="Button1" runat="server"  Text="保 存" OnClick="Button1_Click" />
                      
                        
                        <asp:Button ID="Button6" runat="server"  Text="放 弃" OnClick="Button6_Click" />
                        <asp:Button ID="Button3" runat="server"  Text="返 回" OnClick="Button3_Click" />
                        
                       </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" colspan="5">
                        <asp:Label ID="message" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
        </div>
</asp:Content>

