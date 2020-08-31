<%@ Page Title="课程资料管理" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Size="Small" SiteMapProvider="defaultSiteMap">
        </asp:SiteMapPath>
        &nbsp;
        <table style="width: 715px; height: 205px">
            <tr>
                <td colspan="3" style="height: 9px; width: 789px; background-image: url(Image/top_files/Topback.GIF);" align="center">
                    <asp:Label ID="Label4" runat="server" Text="课程类别" Font-Size="Small"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="94px" >
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Text="课程名称" Font-Size="Small"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Width="120px" Font-Size="X-Small"></asp:TextBox>
                    &nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Size="Small" Text="课程代码"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="112px" Font-Size="X-Small"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="查找" Width="43px" Font-Size="XX-Small" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="43px" Font-Size="XX-Small" />
                            <asp:LinkButton runat="server" ID="LinkButton5" Text="【添加】" OnClick="LinkButton5_Click" Font-Size="Small" ></asp:LinkButton></td>
                <td align="center" colspan="1" style="width: 801px; height: 9px; background-image: url(Image/top_files/Topback.GIF);">
                </td>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="height: 220px; width: 789px;">
         <asp:GridView ID ="sms_student" runat ="server" DataKeyNames="courseID" AllowPaging="True" AutoGenerateColumns="False" 
            OnPageIndexChanging="Data_Page" Width="760px" HorizontalAlign="Center" BackColor="WhiteSmoke" >
      
		 
		 <HeaderStyle Font-Bold="True" BackColor="Gold" Font-Size="Small"></HeaderStyle>
		 <FooterStyle BackColor="Tan"></FooterStyle>
             
             <Columns>
                 <asp:TemplateField HeaderText="课程号" SortExpression="courseid">
                     <EditItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("courseid") %>'></asp:Label>
                     </EditItemTemplate>
                     <ItemTemplate>  
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("courseid", "addcourse.aspx?id={0}") %>'
                              ImageUrl="~/Image/e.jpg" Text="编辑"></asp:HyperLink>  
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("courseid", "addcourse.aspx?id={0}") %>'
                              Text='<%# Bind("courseid") %>'></asp:HyperLink>                        
                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("courseid") %>' Visible="false" ></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="详细资料">
                     <ItemTemplate>
                         <asp:linkbutton ID="Linkbutton1" runat="server" Text='<%# Eval("coursename") %>'  OnClick="Linkbutton1_Click"></asp:linkbutton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="课程类别">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("typename")%>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("typename") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="学分">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("credithour") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("credithour") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
          
                 <asp:TemplateField HeaderText="选择">
                       <ItemTemplate>
                          <asp:CheckBox ID="chkSelect" runat="server" />
                       </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <RowStyle Font-Size="Small" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#FFC0C0" BorderColor="#C0C0FF" />
             <PagerStyle HorizontalAlign="Center" />
             
            <PagerTemplate>
                            <table>
                                <tr>
                                    <td>
                         <asp:Label  ID="LabelCurrentPage" runat="server" Font-Size="Small">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label></td>
                                    <td>
                         <asp:Label ID="LabelPageCount" runat="server" Font-Size="Small">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label></td>
                                    <td>
                         <asp:LinkButton ID="LinkButtonFirstPage" runat="server" Font-Size="Small" CommandArgument="First" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页</asp:LinkButton></td>
                                    <td>
                         <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" Font-Size="Small" CommandArgument="Prev" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页</asp:LinkButton></td>
                                    <td>
                         <asp:LinkButton ID="LinkButtonNextPage" runat="server" Font-Size="Small" CommandArgument="Next" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页</asp:LinkButton></td>
                                     <td>
                         <asp:LinkButton ID="LinkButtonLastPage" runat="server" Font-Size="Small" CommandArgument="Last" CommandName="Page" Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页</asp:LinkButton></td>
   
                                </tr>
                            </table>
                        </PagerTemplate> 


         
         </asp:GridView>    
                </td>
                <td colspan="1" rowspan="1" style="width: 143px; height: 220px">
        <asp:DataList ID="DataList1"  runat="server" Width="162px" DataKeyField="courseid" 
            OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_ConcelCommand" OnUpdateCommand="DataList1_UpdateCommand"  >
                     <ItemTemplate>
                           <table>
                               <tr>
                                   <td colspan="3">  <b><%# Eval("coursename") %></b> 
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="width: 81px">
                                       <asp:Label ID="Label20" runat="server" Text="课程代码:" Font-Size="Small"></asp:Label></td>
                                   <td style="width: 145px; font-size: small;"><%# Eval("courseid") %>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="width: 81px">
                                       <asp:Label ID="Label19" runat="server" Text="课程类别:" Font-Size="Small"></asp:Label></td>
                                   <td style="width: 145px; font-size: small;"> <%# Eval("coursetypeid") %>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="width: 81px">
                                       <asp:Label ID="Label21" runat="server" Text="类别名称：" Width="88px" Font-Size="Small"></asp:Label></td>
                                   <td style="width: 145px; font-size: small;"> <%# Eval("typename")%>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="width: 81px">
                                       <asp:Label ID="Label18" runat="server" Text="学分:" Font-Size="Small"></asp:Label></td>
                                   <td style="width: 145px; font-size: small;"><%# Eval("credithour")%>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="width: 81px">
                                       <asp:Label ID="Label16" runat="server" Text="总学时:" Font-Size="Small"></asp:Label></td>
                                   <td style="width: 145px; font-size: small;"> <%# Eval("totalperiod")%>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="width: 81px">
                                       <asp:Label ID="Label17" runat="server" Text="周学时:" Font-Size="Small"></asp:Label></td>
                                   <td style="width: 145px; font-size: small;">   <%# Eval("weekperiod")%>
                                   </td>
                               </tr>
                               <tr>
                                   <td colspan="2" style="width: 81px">
                                       <asp:Label ID="Label15" runat="server" Text="备注:" Font-Size="Small"></asp:Label></td>
                                   <td style="width: 145px; font-size: small;"><%# Eval("remark") %>
                                   </td>
                               </tr>
                           </table>
                           <asp:LinkButton runat="server" ID="LBE" CommandName="Edit" Text="【編輯】" Font-Size="Small" ></asp:LinkButton>
                         <p>
                         </p>
                    </ItemTemplate>
                 <EditItemTemplate>
                       
                       <br> 
                       <br>
                     <table>
                         <tr>
                             <td colspan="3"><b><%# Eval("coursename") %></b> 
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2" style="width: 9669555px; height: 21px;">
                                 <asp:Label ID="Label20" runat="server" Text="课程代码:" Font-Size="Small"></asp:Label>
                             </td>
                             <td style="width: 87px; height: 17px; font-size: small;"><%# Eval("courseid") %>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2" style="width: 9669555px; height: 17px">
                                 <asp:Label ID="Label19" runat="server" Text="课程类别:" Font-Size="Small"></asp:Label>
                             </td>
                             <td style="width: 87px; height: 17px; font-size: small;"> <%# Eval("coursetypeid") %>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2" style="width: 9669555px; height: 17px">
                                 <asp:Label ID="Label21" runat="server" Text="类别名称：" Width="88px" Font-Size="Small"></asp:Label></td>
                             <td style="width: 87px; height: 17px; font-size: small;"> <%# Eval("typename")%>
                             </td>
                         </tr>
                         <tr>
                             <td colspan="2" style="width: 9669555px; height: 24px;">
                                 <asp:Label ID="Label18" runat="server" Text="学分:" Font-Size="Small"></asp:Label></td>
                             <td style="width: 87px; height: 24px;">
                                 <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Small">
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                     <asp:ListItem>5</asp:ListItem>
                                     <asp:ListItem>6</asp:ListItem>
                                 </asp:DropDownList></td>
                         </tr>
                         <tr>
                             <td colspan="2" style="width: 9669555px; height: 2px;">
                                 <asp:Label ID="Label16" runat="server" Text="总学时:" Font-Size="Small"></asp:Label></td>
                             <td style="height: 2px; width: 87px;" align="left">
                                  <asp:TextBox ID="TextBox5" runat="server" text='<%# Eval("totalperiod")%>' Height="12px" Width="78px" Font-Size="Small"></asp:TextBox>&nbsp;</td>
                         </tr>
                         <tr>
                             <td colspan="2" style="width: 9669555px">
                                 <asp:Label ID="Label17" runat="server" Text="周学时:" Font-Size="Small"></asp:Label></td>
                             <td style="width: 87px">
                                 <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Small" >
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                     <asp:ListItem>5</asp:ListItem>
                                     <asp:ListItem>6</asp:ListItem>
                                     <asp:ListItem>7</asp:ListItem>
                                     <asp:ListItem>8</asp:ListItem>
                                 </asp:DropDownList></td>
                         </tr>
                         <tr>
                             <td colspan="2" style="width: 9669555px; height: 24px">
                                 <asp:Label ID="Label15" runat="server" Text="备注:" Font-Size="Small"></asp:Label>
                             </td>
                             <td style="width: 87px; height: 24px">
                                 <asp:TextBox ID="TextBox8" runat="server"  Text='<%# Eval("remark") %>' Height="41px" TextMode="MultiLine" Width="137px" Font-Size="Small"></asp:TextBox></td>
                         </tr>
                         <tr>
                             <td colspan="3" style="height: 15px">
                                 <asp:LinkButton runat="server" ID="LBU" CommandName="update" Text="【更新】" Font-Size="Small"></asp:LinkButton><asp:LinkButton runat="server" ID="LBC" CommandName="cancel" Text="【取消】" Font-Size="Small"></asp:LinkButton></td>
                         </tr>
                     </table>
                    </EditItemTemplate>
        </asp:DataList></td>
            </tr>
            <tr>
                <td align="right" colspan="3" rowspan="2" style="width: 789px">
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Small" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Size="Small">反选</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small">全选</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Small" OnClick="LinkButton4_Click">取消</asp:LinkButton></td>
                <td align="right" colspan="1" rowspan="2" style="width: 143px">
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="height: 10px; width: 789px;">
        <asp:Label ID="sms_lbl_note" runat="server" Text="......"></asp:Label>
                    <asp:Label ID="Label14" runat="server"  Visible="false"></asp:Label></td>
                <td colspan="1" rowspan="1" style="width: 143px; height: 10px">
                </td>
            </tr>
        </table>

    </div>         
</asp:Content>

