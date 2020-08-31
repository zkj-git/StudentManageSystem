<%@ Page Title="学生管理" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="u_student.aspx.cs" Inherits="u_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="defaultSiteMap" Font-Size="Small"></asp:SiteMapPath>
            &nbsp;
            <table style="width: 760px; height: 205px">
                <tr>
                    <td align="center" colspan="4" style="height: 9px; background-image: url(Image/top_files/Topback.GIF);">
                        <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="所在班级："></asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="94px">
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="学生姓名："></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Small" Width="120px"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="学生学号："></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="112px" Font-Size="X-Small"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Small" OnClick="Button1_Click"
                            Text="查找" Width="43px" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="43px" Font-Size="X-Small" />
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text="【添加】" Font-Size="Small"></asp:LinkButton></td>
                </tr>
                <tr style="font-size: 12pt">
                    <td colspan="4" rowspan="1" style="height: 220px">
                        <asp:GridView ID="sms_student" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            DataKeyNames="studentID" HorizontalAlign="Center" OnPageIndexChanging="Data_Page"
                            Width="760px" PageSize="15" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="20px">
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <RowStyle Height="20px" BackColor="#E3EAEB" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="Small" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="学号" SortExpression="courseid">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("studentid") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Image/e.jpg" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text="编辑"></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text='<%# Bind("studentid") %>'></asp:HyperLink>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("studentid") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="详细资料">
                                    <ItemTemplate>
                                         <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Image/e.jpg" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text="编辑"></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("studentid", "Editstu.aspx?id={0}") %>'
                                            Text='<%# Bind("studentname") %>'></asp:HyperLink>                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="所在班级">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("classname")%>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("classname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="性别">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sex") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("sex") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="选择删除">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle Font-Size="Small" HorizontalAlign="Center" BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#C5BBAF" BorderColor="#C0C0FF" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
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
                <tr style="font-size: 12pt">
                    <td align="right" colspan="4">
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" OnClick="LinkButton2_Click">反选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">全选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton></td>
                </tr>
                <tr style="font-size: 12pt">
                    <td colspan="3" style="width: 801px; height: 10px">
                        <asp:Label ID="sms_lbl_note" runat="server" Text="......"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Visible="False" Font-Size="Small"></asp:Label></td>
                    <td colspan="1" style="width: 3px; height: 10px">
                    </td>
                </tr>
            </table>
 </div></div>
</asp:Content>
