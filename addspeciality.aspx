<%@ Page Title="添加专业资料" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="addspeciality.aspx.cs" Inherits="addspeciality" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <LINK href="style.css" type="text/css" rel="stylesheet" />
    <div>
        <div>
            <div>
                <table border="0" cellspacing="1" width="100%">
                    <tr>
                        <td style="width: 214px; height: 1px">
                            &nbsp;</td>
                        <td style="width: 224px; height: 1px">
                            &nbsp;</td>
                        <td style="height: 1px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 214px; height: 35px">
                            &nbsp;
                        </td>
                        <td style="width: 224px; height: 35px">
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
                <table bgcolor="#000000" border="0" cellspacing="1" width="760">
                    <tr>
                        <td bgcolor="#ffffff" style="width: 77px; height: 17px">
                            <asp:Label ID="Label5" runat="server" Text="当前用户：" Font-Size="Small" Width="82px"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="4" style="height: 17px" width="91%">
                            &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" rowspan="4" style="width: 77px">
                            &nbsp;<asp:Label ID="Label8" runat="server" Text="专业资料：" Width="80px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" colspan="2">
                            &nbsp;</td>
                        <td bgcolor="#ffffff" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px">
                            &nbsp;<asp:Label ID="Label3" runat="server" Height="1px" Text="专业代码：" Width="86px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 125px">
                            <asp:Label ID="LabSpeidF" runat="server" Width="2px" Font-Size="Small"></asp:Label><asp:TextBox ID="TextBox7" runat="server" CssClass="text" Width="108px" Font-Size="Small"></asp:TextBox></td>
                        <td bgcolor="#ffffff" style="width: 86px">
                            <asp:Label ID="Label9" runat="server" Text="所属院系：" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 159px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="96px" OnSelectedIndexChanged="DDL2SelectedChanged" AutoPostBack="true" Font-Size="X-Small"> 
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px; height: 10px">
                            &nbsp;<asp:Label ID="Label7" runat="server" Text="专业名称：" Font-Size="Small" Width="85px"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 125px; height: 10px">
                            <asp:TextBox ID="TextBox11" runat="server" CssClass="text" Width="139px" Font-Size="Small"></asp:TextBox></td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 10px">
                            <asp:Label ID="Label1" runat="server" Text="院系代码：" Width="90px" Font-Size="Small"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 159px; height: 10px">
                            <asp:Label ID="Labdar" runat="server" Width="80px" Font-Size="Small"></asp:Label></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="height: 17px" colspan="4">
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 77px; height: 69px">
                        </td>
                        <td bgcolor="#ffffff" colspan="4" style="height: 69px">
                            <span style="width: 3px; height: 21px">&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#ffffff" colspan="5">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" Font-Size="Small" Height="20px" />
                            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="放 弃" Font-Size="Small" Height="20px" />
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" Font-Size="Small" Height="20px" />
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Label ID="sms_lbl_note" runat="server" Font-Size="Small"></asp:Label>
        </div>
    
    </div>
</asp:Content>

