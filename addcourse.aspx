<%@ Page Title="课程资料添加" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="addcourse.aspx.cs" Inherits="addcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <table border="0" cellspacing="1" width="100%">
            <tr>
                <td style="width: 222px; height: 1px">
                    &nbsp;</td>
                <td style="width: 224px; height: 1px">
                    &nbsp;</td>
                <td style="width: 305px; height: 1px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 222px; height: 35px">
                    &nbsp;
                </td>
                <td style="width: 224px; height: 35px">
                    &nbsp;</td>
                <td style="width: 305px; height: 35px">
                </td>
            </tr>
            <tr>
                <td style="width: 222px">
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Small" SiteMapProvider="defaultSiteMap">
                    </asp:SiteMapPath>
                </td>
                <td style="width: 224px">
                </td>
                <td style="width: 305px">
                </td>
            </tr>
        </table>
        <div>
            <table bgcolor="#000000" border="0" cellspacing="1" width="760">
                <tr>
                    <td bgcolor="#ffffff" style="height: 17px; font-size: small;" width="9%">
                        当前用户</td>
                    <td bgcolor="#ffffff" colspan="4" style="height: 17px" width="91%">
                        &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" rowspan="6">
                        <asp:Label ID="Label8" runat="server" Text="课程信息" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 17px; height: 22px">
                        <asp:Label ID="Label1" runat="server" Text="课程号：" Width="90px" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" colspan="3" style="height: 22px">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="125px" Font-Size="X-Small"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 17px; height: 20px">
                        <asp:Label ID="Label3" runat="server" Text="课程名称：" Width="86px" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" colspan="3" style="height: 20px">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="text" Width="127px" Font-Size="X-Small"></asp:TextBox>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 17px; height: 22px">
                        <asp:Label ID="Label4" runat="server" Text="课程类别：" Width="84px" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" colspan="3" style="height: 22px">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="text" Width="89px" Font-Size="X-Small">
                            <asp:ListItem Value="002">专业基础课</asp:ListItem>
                            <asp:ListItem Value="001">公共课</asp:ListItem>
                            <asp:ListItem Value="003">专业课</asp:ListItem>
                            <asp:ListItem Value="004">专业选修课</asp:ListItem>
                            <asp:ListItem Value="005">校级必修课</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 17px; height: 18px">
                        <asp:Label ID="Label10" runat="server" Text="学分：" Width="53px" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" style="height: 18px" colspan="3">
                        <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="X-Small">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 17px; height: 17px">
                    <asp:Label ID="Label7" runat="server" Text="总学时：" Width="68px" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" colspan="3" style="height: 17px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="text" Width="51px" Font-Size="X-Small"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 17px; height: 17px">
                        <asp:Label
                            ID="Label2" runat="server" Text="周学时：" Width="73px" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" colspan="3" style="height: 17px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="height: 69px">
                        <asp:Label ID="Label5" runat="server" Text="备注：" Width="73px" Font-Size="Small"></asp:Label></td>
                    <td bgcolor="#ffffff" colspan="4" style="height: 69px">
                        <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox6" runat="server"
                            CssClass="text" Height="102px" TextMode="MultiLine" Width="669px" Font-Size="Small"></asp:TextBox>&nbsp;</span></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#ffffff" colspan="5" style="height: 26px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" Font-Size="XX-Small" />&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" Font-Size="XX-Small" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="sms_lbl_note" runat="server" CssClass="text" Width="223px" Font-Size="X-Small"></asp:Label>
    
    </div>
</asp:Content>

