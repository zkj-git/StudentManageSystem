﻿<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="addDepartment.aspx.cs" Inherits="addDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="style.css" type="text/css" rel="stylesheet" />
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
                        <td bgcolor="#ffffff" style="height: 17px" width="9%">
                            当前用户</td>
                        <td bgcolor="#ffffff" colspan="4" style="height: 17px" width="91%">
                            &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" rowspan="3">
                            <asp:Label ID="Label10" runat="server" Text="院系资料"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 65px; height: 22px">
                            <asp:Label ID="Label1" runat="server" Text="院系代码：" Width="62px"></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 160px; height: 22px">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="text" Width="144px"></asp:TextBox></td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                            <asp:Label ID="Label2" runat="server" Text="院系名称："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 159px; height: 22px">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px; height: 22px">
                            <asp:Label ID="Label3" runat="server" Text="辅导员："></asp:Label></td>
                        <td bgcolor="#ffffff" style="width: 160px; height: 22px">
                            &nbsp;<asp:TextBox ID="TextBox5" runat="server" CssClass="text" Width="142px"></asp:TextBox></td>
                        <td bgcolor="#ffffff" style="width: 86px; height: 22px">
                            </td>
                        <td bgcolor="#ffffff" style="width: 159px; height: 22px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="width: 65px; height: 17px">
                            </td>
                        <td bgcolor="#ffffff" colspan="3" style="height: 17px">
                            </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="height: 69px">
                            </td>
                        <td bgcolor="#ffffff" colspan="4" style="height: 69px">
                            <span style="width: 3px; height: 21px">&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#ffffff" colspan="5">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添 加" />
                            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="放 弃" />
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返 回" />
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Label ID="sms_lbl_note" runat="server"></asp:Label>
        </div>
    
    </div>
</asp:Content>

