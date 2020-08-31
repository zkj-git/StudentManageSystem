<%@ Page Language="C#" AutoEventWireup="true" CodeFile="class.aspx.cs" Inherits="_class" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="/aspnet_client/System_Web/2_0_50727/CrystalReportWebFormViewer3/css/default.css"
        rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:SiteMapPath id="SiteMapPath1" runat="server" Font-Size="Small" SiteMapProvider="defaultSiteMap"></asp:SiteMapPath>
        <table bgcolor="#FFCC00" border="0" cellspacing="1" width="760">
            <tr>
                <td colspan="5" rowspan="7" align="center" background="Image/top_files/Topback.GIF" bgcolor="#fee602" style="height: 24px; width: 746px;">
                    <asp:Label ID="Label1" runat="server" Text="专业名称：" Font-Size="Small"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="92px" Font-Size="X-Small" >
                    </asp:DropDownList>
                    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="查询" Width="43px" Height="20px" OnClick="Button1_Click" Font-Size="X-Small" />
              <asp:Button ID="add" runat="server" Text="添加" Width="43px" Height="20px" OnClick="add_Click" Font-Size="X-Small"  /></td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td bgcolor="#ffffff" colspan="5" style="height: 65px; width: 746px;">
                    <span style="width: 3px; height: 21px">&nbsp;<asp:DataList ID="sms_class" runat="server" RepeatColumns="4" Width="749px" OnEditCommand ="DataList_EditCommand" OnCancelCommand="Datalist_CancelCommand" OnUpdateCommand="Datalist_UpdateCommand"  OnDeleteCommand="Datalist_DeleteCommand" >
                        <ItemTemplate>                            
                            <table>
                                <tr>
                                    <td colspan="3">
                                        <b>
                                            <%# Eval("classname") %>
                                        </b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 102px">
                                        <asp:Label ID="Label2" runat="server" Text="班号：" Width="66px"></asp:Label></td>
                                    <td style="width: 124px">
                                        
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("classid") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 102px; height: 21px;">
                                        <asp:Label ID="Label4" runat="server" Text="所属专业：" Width="80px"></asp:Label></td>
                                    <td style="width: 124px; height: 21px;">
                                        <%# Eval("specialityname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 102px">
                                        <asp:Label ID="Label5" runat="server" Text="入学时间：" Width="81px"></asp:Label></td>
                                    <td style="width: 124px">
                                        <%# Eval("entranceyear") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 102px">
                                        <asp:Label ID="Label6" runat="server" Text="班长：" Width="58px"></asp:Label></td>
                                    <td style="width: 124px">
                                        <%# Eval("studentname") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="【编辑】"/>
                                        <asp:LinkButton ID="LinkButton0" runat="server" CommandName="Delete" Text="【删除】"/>
                                  </td>
                                        
                                </tr>
                            </table>  
                        </ItemTemplate>
                        <EditItemTemplate><table style="width: 241px; height: 141px">
                            <tr>
                                <td colspan="3">
                                    <b>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("classname") %>' Font-Size="X-Small"></asp:TextBox>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 102px">
                                    <asp:Label ID="Label2" runat="server" Text="班号：" Width="66px"></asp:Label></td>
                                <td style="width: 171px">
                                    <asp:Label ID="Lblcid" runat="server" Width="72px" Text='<%# Eval("classid") %>' Font-Size="X-Small"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 102px; height: 21px;">
                                    <asp:Label ID="Label4" runat="server" Text="所属专业：" Width="80px"></asp:Label></td>
                                <td style="width: 171px; height: 21px;">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="94px" Text='<%# Eval("specialityname") %>' Font-Size="X-Small"></asp:TextBox>
                              </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 102px; height: 26px;">
                                    <asp:Label ID="Label5" runat="server" Text="入学时间：" Width="81px"></asp:Label></td>
                                <td style="width: 171px; height: 26px;">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="55px"  Text='<%# Eval("entranceyear") %>' Font-Size="X-Small"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 102px; height: 22px;">
                                    <asp:Label ID="Label6" runat="server" Text="班长：" Width="58px"></asp:Label></td>
                                <td style="width: 171px; height: 22px;">
                                    
                                    <asp:TextBox ID="TextBox1" runat="server" Width="56px" Text='<%# Eval("studentname") %>' Font-Size="X-Small"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Height="21px" Enabled ="false" Text="查对" Width="39px" OnClick="Button2_Click" /></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 21px">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update">【更新】</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cancel">【取消】</asp:LinkButton></td>
                            </tr>
                        </table>
                        
                        
                        </EditItemTemplate>
                        <EditItemStyle BackColor="GhostWhite" Font-Size="Small" />
                        <AlternatingItemStyle BackColor="GhostWhite" Font-Size="Small" />
                        <ItemStyle Font-Size="Small" />
                        <SeparatorStyle BackColor="GhostWhite" />
                        <FooterStyle BackColor="White" />
                    </asp:DataList></span><asp:Label ID="message" runat="server" Enabled ="false" Text='<%# Eval("studentname") %>'/></td>
            </tr>
            <tr>
                <td align="center" bgcolor="#ffffff" colspan="5" style="font-size: small; text-decoration: none; width: 746px;">
                    &nbsp;&nbsp;
                    共有<asp:Label id="lblRecordCount" ForeColor="Red" runat="server" Font-Size="Small" />条记录
                    &nbsp; 当前为<asp:Label id="lblCurrentPage" ForeColor="Red" runat="server" Font-Size="Small" />/<asp:Label id="lblPageCount" ForeColor="Red" runat="server" Font-Size="Small" />页

                   <asp:LinkButton id="lbnPrevPage" Text="上一页" CommandName="prev" runat="server" OnCommand="Page_OnClick" Font-Size="Small"/>
                   <asp:LinkButton id="lbnNextPage" Text="下一页" CommandName="next" runat="server" OnCommand="Page_OnClick" Font-Size="Small" />
                </td>
            </tr>
      </table>
    </form>
</body>
</html>
