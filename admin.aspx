<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <LINK href="style.css" type="text/css" rel="stylesheet" />
   
        &nbsp;<asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Small" SiteMapProvider="defaultSiteMap">
        </asp:SiteMapPath>
        <table style="width: 760px;">
            <tr>
                <td align="center" bgcolor="#ffffff" colspan="3" style="width: 552px; height: 1px; background-image: url(Image/top_files/Topback.GIF);">
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="77px" Font-Size="X-Small">
                    </asp:DropDownList>
                    <asp:Label ID="Label2" runat="server" Text="管理员姓名:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="89px" Font-Size="X-Small"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" Font-Size="X-Small" />
                    &nbsp;&nbsp;&nbsp;
                    
            </tr>
            <tr>
                <td colspan="3" align="left" valign="top" style="width: 600px; ">
                
                     
                <asp:GridView ID="adminuser" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            DataKeyNames="username" HorizontalAlign="Center" OnPageIndexChanging="Data_Page"
                            Width="760px" PageSize="15" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="20px">
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <RowStyle Height="20px" BackColor="#EFF3FB" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Size="Small" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="username" SortExpression="username">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("username", "#") %>'
                                            Text=""></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("username", "Editstu.aspx?id={0}") %>'
                                            Text='<%# Bind("username") %>'></asp:HyperLink>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("username") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="类型" SortExpression="type">
                                    <ItemTemplate>
                                         <asp:HyperLink ID="HyperLink3" runat="server"  NavigateUrl='<%# Eval("usertype", "#") %>'
                                            Text=""></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("usertype", "#") %>'
                                            Text='<%# Bind("usertype") %>'></asp:HyperLink>                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="选择删除">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle Font-Size="Small" HorizontalAlign="Center" BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#D1DDF1" BorderColor="#C0C0FF" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <PagerTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LabelCurrentPage" runat="server" Font-Size="Small">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label></td>
                                        <td>
                                            <asp:Label ID="LabelPageCount" runat="server" Font-Size="Small">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>" Font-Size="Small">首页</asp:LinkButton></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                                CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>"
                                                Font-Size="Small">上一页</asp:LinkButton></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"
                                                Font-Size="Small">下一页</asp:LinkButton></td>
                                        <td>
                                            <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                                Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>"
                                                Font-Size="Small">尾页</asp:LinkButton></td>
                                    </tr>
                                </table>
                            </PagerTemplate>
                        </asp:GridView>
                
                     
              </td>
            </tr>
            </table>
              <asp:Label ID="sms_lbl_note" runat="server" Width="718px"></asp:Label>
</asp:Content>

