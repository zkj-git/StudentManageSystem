<%@ Page Title="学生成绩查询" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="grade.aspx.cs" Inherits="grade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div> 
        <asp:DataList ID="RepeaterC" runat="server" Width="760px" RepeatColumns="10" RepeatDirection="Horizontal" RepeatLayout="Flow">
         <ItemTemplate>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("courseid", "grade.aspx?id={0}") %>' Text='<%# Bind("coursename") %>' Font-Size="Small"></asp:HyperLink>
                            <img src="Image/top_files/splitline_01.gif"/>
                        </td>
                    </ItemTemplate>
        </asp:DataList>          
            <table bordercolor="#FFCC00" style="width: 760px; height: 205px">
                <tr>
                    <td align="center" colspan="3" style="width: 801px; height: 9px; background-image: url(Image/top_files/Topback.GIF);">
                        <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="课程类别"></asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="94px" ToolTip="请选择要查询的课程名称!">
                        </asp:DropDownList>
                        <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="学生姓名"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Small" Width="120px" EnableViewState="false" ToolTip="请输入要查询的学生姓名,并点击查询按钮!"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="学号"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" Width="112px" Font-Size="X-Small" ToolTip="请输入要查询的学生学号,并点击查询按钮!"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Small" OnClick="Button1_Click"
                            Text="查找" Width="43px" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="43px" Font-Size="X-Small" />
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text="【添加】" Font-Size="Small"></asp:LinkButton></td>
                    <td align="center" colspan="1" style="font-size: 12pt; width: 143px; height: 9px">
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td colspan="3" rowspan="1" style="width: 801px; height: 220px">
                        <asp:GridView ID="sms_grade" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnRowEditing="RowEditing" OnRowCancelingEdit="RowCancel"  OnRowUpdating="RowUpdata"
                            DataKeyNames="courseID" HorizontalAlign="Center" OnPageIndexChanging="Data_Page" Width="760px"  OnRowDataBound="RowDataBound" PageSize="8">
                            <HeaderStyle BackColor="Gold" Font-Bold="True" Font-Size="Small" />
                            <FooterStyle BackColor="Tan" />
                            <Columns>
                               
                                <asp:TemplateField HeaderText="课程号" SortExpression="courseid">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("courseid") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Image/e.jpg" NavigateUrl='<%# Eval("courseid", "addcourse.aspx?id={0}") %>'
                                            Text="编辑"></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("courseid", "addcourse.aspx?id={0}") %>'
                                            Text='<%# Bind("courseid") %>'></asp:HyperLink>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("courseid") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="详细资料">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="Linkbutton1" runat="server" OnClick="Linkbutton1_Click" Text='<%# Eval("coursename") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="学号">
                                    <EditItemTemplate>
                                        <asp:label ID="TextBox1" runat="server" Text='<%# Bind("studentid")%>'/>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblsid" runat="server" Text='<%# Bind("studentid") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="学生姓名">
                                    <EditItemTemplate>
                                        <asp:label ID="sname" runat="server" Text='<%# Bind("studentname") %>'/>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="sname" runat="server" Text='<%# Bind("studentname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="成绩">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="gradeTexBox" runat="server" Text='<%# Bind("grade") %>' Width="41px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="grade" runat="server" Text='<%# Bind("grade") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="选择">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkSelect" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 
                                 <asp:CommandField HeaderText="编辑" ShowEditButton="True" CancelText="取消" EditText="编辑" UpdateText="更新" />
                              

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
                            <AlternatingRowStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                    </td>
                    <td colspan="1" rowspan="1" style="width: 143px; height: 220px">
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td align="right" colspan="3" rowspan="2" style="width: 801px">
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" OnClick="LinkButton2_Click">反选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">全选</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton></td>
                    <td align="right" colspan="1" rowspan="2" style="width: 143px">
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                </tr>
                <tr style="font-size: 12pt">
                    <td colspan="3" rowspan="1" style="width: 801px; height: 10px">
                        <asp:Label ID="sms_lbl_note" runat="server" Text="......"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Visible="False" Font-Size="Small"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox></td>
                    <td colspan="1" rowspan="1" style="width: 143px; height: 10px">
                    </td>
                </tr>
          </table>    
    </div>
</asp:Content>

