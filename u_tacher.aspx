<%@ Page Title="教师用户管理" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="u_tacher.aspx.cs" Inherits="u_tacher" %>

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
                    <asp:Label ID="Label2" runat="server" Text="教师姓名:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="89px" Font-Size="X-Small"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" Font-Size="X-Small" />
                    &nbsp;&nbsp;&nbsp;
                    
            </tr>
            <tr>
                <td colspan="3" align="left" valign="top" style="width: 600px; ">
                
                     <asp:datagrid id="sms_teacher" runat="server" Width="757px" DataKeyField="Teacherid" 
									OnEditCommand="DataGrid_edit" OnDeleteCommand="DataGrid_delete" OnCancelCommand="DataGrid_cancel" OnPageIndexChanged="DataGrid_Page"
									AllowPaging="True" AutoGenerateColumns="False"
									CellPadding="4" GridLines="None" ForeColor="#333333">
									<SelectedItemStyle ForeColor="#333333" BackColor="#D1DDF1" Font-Bold="True"></SelectedItemStyle>
									<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
									<EditItemStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
									<HeaderStyle Font-Bold="True" BackColor="#507CD1" HorizontalAlign="Center" ForeColor="White"></HeaderStyle>
									<Columns>
										<asp:HyperLinkColumn DataNavigateUrlField="Teacherid" DataNavigateUrlFormatString="teacherlist.aspx?id={0}"
											DataTextField="Teacherid" HeaderText="教师号(加为管理员)"></asp:HyperLinkColumn>
										
										<asp:HyperLinkColumn DataNavigateUrlField="Teacherid" DataNavigateUrlFormatString="m_teacherlist.aspx?id={0}"
											DataTextField="Teachername" HeaderText="姓名(点击进入详细页面)"></asp:HyperLinkColumn>
									
										<asp:BoundColumn DataField="sex" HeaderText="性别"></asp:BoundColumn>
										<asp:BoundColumn DataField="DepartmentID" HeaderText="学院编号"></asp:BoundColumn>
										<asp:BoundColumn DataField="Departmentname" HeaderText="所在学院"></asp:BoundColumn>
									<asp:ButtonColumn Text="删除" CommandName="Delete"></asp:ButtonColumn>
								
									</Columns>
									<PagerStyle NextPageText=" 下一页" Font-Size="12pt" PrevPageText="上一页" HorizontalAlign="Center"
										ForeColor="White" BackColor="#2461BF"></PagerStyle>
                         <ItemStyle Font-Size="Small" HorizontalAlign="Center" BackColor="#EFF3FB" />
					</asp:datagrid>
              </td>
            </tr>
            </table>
              <asp:Label ID="sms_lbl_note" runat="server" Width="718px"></asp:Label>
</asp:Content>

