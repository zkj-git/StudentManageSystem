<%@ Page Title="学生所在专业资料" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="speciality.aspx.cs" Inherits="speciality" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <div>
            <div>
            <asp:SiteMapPath id="SiteMapPath1" runat="server" SiteMapProvider="defaultSiteMap" Font-Size="Small"></asp:SiteMapPath>
                <table style="width: 715px; height: 205px">
                    <tr>
                        <td colspan="3" align="center" background="Image/top_files/Topback.GIF" style="width: 801px; height: 7px">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="所属院系："></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="93px" Font-Size="X-Small">
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Font-Size="X-Small" OnClick="Button1_Click"
                                Text="查找" Width="43px" Height="20px" />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="43px" Font-Size="X-Small" Height="20px" />
                      <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text="【添加】" Font-Size="Small"></asp:LinkButton></td>
                        <td align="center" colspan="1" style="font-size: 12pt; width: 143px; height: 7px">
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td colspan="3" rowspan="1" style="width: 801px; height: 220px">
                            <asp:GridView ID="sms_grade" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                DataKeyNames="specialityid" HorizontalAlign="Center" OnPageIndexChanging="Data_Page"
                                OnRowCancelingEdit="RowCancel" OnRowDataBound="RowDataBound" OnRowEditing="RowEditing"
                                OnRowUpdating="RowUpdata" PageSize="8" Width="760px">
                                <HeaderStyle BackColor="Gold" Font-Bold="True" Font-Size="Small" />
                                <FooterStyle BackColor="Tan" />
                                <Columns>
                                    <asp:TemplateField HeaderText="专业代号" SortExpression="specialityid">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("specialityid") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Labspeid" runat="server" Text='<%# Eval("specialityid") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="专业名称">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("specialityname") %>' Width="91px"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("specialityname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="院系代码">
                                        <EditItemTemplate>
                                            <asp:Label ID="TextBox1" runat="server" Text='<%# Bind("departmentid")%>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblsid" runat="server" Text='<%# Bind("departmentid") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="院系名称">
                                        <EditItemTemplate>
                                            <asp:Label ID="sname" runat="server" Text='<%# Bind("departmentname") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="sname" runat="server" Text='<%# Bind("departmentname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="选择">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField CancelText="取消" EditText="编辑" HeaderText="编辑" ShowEditButton="True"
                                        UpdateText="更新" />
                                </Columns>
                                <RowStyle Font-Size="Small" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#FFC0C0" BorderColor="#C0C0FF" />
                                <PagerStyle HorizontalAlign="Center" />
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
                        <td colspan="1" rowspan="1" style="width: 143px; height: 220px">
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td align="right" colspan="3" style="width: 801px">
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" OnClick="LinkButton2_Click">反选</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">全选</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton></td>
                        <td align="right" colspan="1" style="width: 143px">
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td colspan="3" style="width: 801px; height: 10px">
                            <asp:Label ID="sms_lbl_note" runat="server" Text="......"></asp:Label>
                            <asp:Label ID="Label14" runat="server" Visible="False" Font-Size="Small"></asp:Label></td>
                        <td colspan="1" style="width: 143px; height: 10px">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    
    </div>
 
</asp:Content>

