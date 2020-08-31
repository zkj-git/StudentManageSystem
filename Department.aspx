<%@ Page Title="学生所在院资料" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div>
    <asp:SiteMapPath id="SiteMapPath1" runat="server" SiteMapProvider="defaultSiteMap" Font-Size="Small">
    </asp:SiteMapPath>
        <table style="width: 760px; height: 392px">
            <tr>
                <td style="height:10px; background-image: url(Image/top_files/Topback.GIF); width: 763px;" colspan="3" align="center">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="89px">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Height="20px" Text="查询" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Height="20px" Text="返回" OnClick="Button2_Click" />
                    &nbsp;                     
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" Font-Underline="False" OnClick="LinkButton1_Click">『添加』</asp:LinkButton></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 260px; width: 763px;" align="left" valign="top">
                  <asp:Repeater ID="RepeaterD" runat="server" EnableTheming="True" OnItemCommand="RepeaterIC">
                    <ItemTemplate>
                   <table bgcolor="#000000" border="0" cellspacing="1" width="760">
                        
                        <tr>
                            <td bgcolor="#ffffff" rowspan="6" style="width: 77px">
                                &nbsp;<asp:Label ID="Label8" runat="server" Font-Size="Small" Text="院系资料" Width="80px"></asp:Label></td>
                            <td bgcolor="#ffffff" colspan="2" rowspan="2">
                                &nbsp;</td>
                            <td bgcolor="#ffffff" colspan="2" rowspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" rowspan="2" style="width: 65px">
                                &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Small" Height="1px" Text="院系代码："
                                    Width="86px"></asp:Label></td>
                            <td bgcolor="#ffffff" rowspan="2" style="width: 125px">
                                <asp:Label ID="LabDepid" runat="server" Font-Size="Small" Width="120px" Text='<%# Eval("departmentid") %>'/> 
                                <asp:TextBox ID="TxtDepid" runat="server" Font-Size="Small" Visible="false" Width="120px" Height="15px" Text='<%# Eval("departmentid") %>'/>                             
                            </td>
                            <td bgcolor="#ffffff" rowspan="2" style="width: 86px">
                                <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="院系名称："/>
                            </td>
                            <td bgcolor="#ffffff" rowspan="2" style="width: 159px">
                                <asp:Label ID="LabDepname" runat="server" Font-Size="Small" Width="120px" Text='<%# Eval("departmentname") %>'/>                                
                                 <asp:TextBox ID="TxtDepname" runat="server" Font-Size="Small" Visible="false" Width="120px" Height="15px" Text='<%# Eval("departmentname") %>'/>   
                            </td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td bgcolor="#ffffff" style="width: 65px; height: 10px">
                                &nbsp;<asp:Label ID="Label7" runat="server" Font-Size="Small" Text="系主任：" Width="85px"></asp:Label></td>
                            <td bgcolor="#ffffff" style="width: 125px; height: 10px">
                                <asp:Label ID="LabDephead" runat="server" Font-Size="Small" Width="120px" Text='<%# Eval("departmenthead") %>'/>
                                <asp:TextBox ID="TxtDephead" runat="server" Font-Size="X-Small" Visible="false" Width="120px" Height="15px" Text='<%# Eval("departmenthead") %>'/>     
                            </td>
                            <td bgcolor="#ffffff" style="width: 86px; height: 10px">
                            </td>
                            <td bgcolor="#ffffff" style="width: 159px; height: 10px">
                              <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" CommandName="edit">编辑</asp:LinkButton>
                              <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" CommandName="update" Visible="false">更新</asp:LinkButton>
                              <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" CommandName="cancel" Visible="false">取消</asp:LinkButton>
                              <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" CommandName="delete">删除</asp:LinkButton>                
                            </td>                             
                        </tr>            
                     
                    </table>
                    </ItemTemplate>                  
                 </asp:Repeater>
                    
                   
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 763px; height: 21px">
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>

