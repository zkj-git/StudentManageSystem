<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacherlist.aspx.cs" Inherits="teacherlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<LINK href="style.css" type="text/css" rel="stylesheet">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <table border="0" cellspacing="1" width="760px">
                <tr>
                    <td style="width: 268px; height: 1px">
                        &nbsp;</td>
                    <td style="width: 224px; height: 1px">
                        &nbsp;</td>
                    <td style="height: 1px; width: 305px;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 268px; height: 35px">
                        &nbsp;
                    </td>
                    <td style="width: 224px; height: 35px">
                        &nbsp;</td>
                    <td style="height: 35px; width: 305px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 268px">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Small" SiteMapProvider="defaultSiteMap">
                        </asp:SiteMapPath>
                        <sitemapnode title="��ʦ��Ϣ���" url="addteacher.aspx">
</sitemapnode>
                    </td>
                    <td style="width: 224px">
                    </td>
                    <td style="width: 305px">
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table bgcolor="#000000" border="0" cellspacing="1" width="760px">
                <tr>
                    <td bgcolor="#ffffff" style="height: 17px" width="9%">
                        ��ǰ�û�</td>
                    <td bgcolor="#ffffff" colspan="4" style="height: 17px" width="91%">
                        &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" rowspan="5">
                        ��ʦ���� &nbsp;&nbsp;</td>
                    <td bgcolor="#ffffff" style="width: 65px; height: 22px">
                        <asp:Label ID="Label1" runat="server" Text="��ʦ�ţ�" Width="62px"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 22px">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="81px"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                        <asp:Label ID="Label2" runat="server" Text="��ʦ����:"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 173px; height: 22px">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="text"  ></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 20px">
                        <asp:Label ID="Label3" runat="server" Text="�Ա�"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 20px">
                        &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Selected="True">��</asp:ListItem>
                            <asp:ListItem>Ů</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 20px">
                        <asp:Label ID="Label5" runat="server" Text="����Ժϵ��"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 173px; height: 20px">
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="157px">
                            <asp:ListItem Value="a">�����ϵ</asp:ListItem>
                            <asp:ListItem Value="b">���ù���ϵ</asp:ListItem>
                            <asp:ListItem Value="e">����ϵ</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 22px">
                        <asp:Label ID="Label4" runat="server" Text="ְ�ƣ�"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 22px">
                        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>��ʦ</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>����Ա</asp:ListItem>
                            <asp:ListItem>һ��</asp:ListItem>
                        </asp:DropDownList></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                        <asp:Label ID="Label6" runat="server" Text="��ϵ�绰��"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 173px; height: 22px">
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox></td>
                </tr>
                <tr>
                    <td bgcolor="#ffffff" style="width: 65px; height: 18px">
                        &nbsp;<asp:Label ID="Label10" runat="server" Text="��ͥסַ��"></asp:Label></td>
                    <td bgcolor="#ffffff" style="width: 166px; height: 18px">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="text"></asp:TextBox></td>
                    <td bgcolor="#ffffff" style="width: 86px; height: 18px">
                        &nbsp;<asp:Label ID="Label7" runat="server" Text="���룺"></asp:Label></td>
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
                        ��ע</td>
                    <td bgcolor="#ffffff" colspan="4" style="height: 69px">
                        <span style="width: 3px; height: 21px">&nbsp;<asp:TextBox ID="TextBox6" runat="server"
                            CssClass="text" Height="102px" TextMode="MultiLine" Width="669px"></asp:TextBox></span></td>
                </tr>
                <tr>
                    <td align="center" bgcolor="#ffffff" colspan="5" style="height: 26px">
                        <asp:Button ID="Button1" runat="server" Text="�� ��" OnClick="Button1_Click" />
                        <asp:Button ID="Button6" runat="server" Text="�� ��" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="�� ��" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
        <asp:Label ID="sms_lbl_note" runat="server" Width="223px"></asp:Label>
    </form>
</body>
</html>
