<%@ Page Title="课程类别资料" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="coursetype.aspx.cs" Inherits="coursetype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div>
            <table style="width: 680px; height: 392px">
          <tr>
                    <td height="1" colspan="3" align="center" background="Image/top_files/Topback.GIF" >
                      <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="89px">
                        </asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Small" Height="20px" OnClick="Button1_Click" Text="查询" />
                         <asp:Button ID="Button2" runat="server" Font-Size="X-Small" Height="20px" OnClick="Button2_Click" Text="返回" />
                        &nbsp;
                        <asp:LinkButton ID="LinkButtonADD" runat="server" Font-Size="Small" Font-Underline="False"
                            OnClick="LinkButtonADD_Click">『添加』</asp:LinkButton></td>
              </tr>
                <tr>
                    <td align="right"colspan="3" style="height: 150px" valign="top">
                        <asp:Repeater ID="RepeaterD" runat="server" EnableTheming="True" OnItemCommand="RepeaterIC">
                            <ItemTemplate>
                                <table bgcolor="#000000" border="0" cellspacing="1" width="660">                            
                                    <tr>  
                                        <td bgcolor="#ffffff" rowspan="0" style="width: 120px" align="center">
                                            &nbsp;<b><asp:Label ID="Label8" runat="server" Font-Size="Small" Text="课程类别资料" Width="120px"/></b>                                        </b></td>             
                                        <td bgcolor="#ffffff" rowspan="2" style="width: 100px">
                                            &nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Small" Height="20px" Text="课程类别代码："
                                                Width="100px"></asp:Label></td>
                                        <td bgcolor="#ffffff" rowspan="2" style="width: 60px">
                                            <asp:Label ID="LabDepid" runat="server" Font-Size="Small" Text='<%# Eval("coursetypeid") %>'
                                                Width="60px"></asp:Label>
                                            <asp:TextBox ID="TxtDepid" runat="server" Font-Size="Small" Height="15px" Text='<%# Eval("coursetypeid") %>'
                                                Visible="false" Width="60px"></asp:TextBox>
                                        </td>
                                        <td bgcolor="#ffffff" rowspan="2" style="width: 100px">
                                            <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="课程类别名称："></asp:Label>
                                        </td>
                                        <td bgcolor="#ffffff" rowspan="2" style="width: 80px" align="right">
                                            <asp:Label ID="LabDepname" runat="server" Font-Size="Small" Text='<%# Eval("typename") %>'
                                                Width="80px"></asp:Label>
                                            <asp:TextBox ID="TxtDepname" runat="server" Font-Size="Small" Height="15px" Text='<%# Eval("typename") %>'
                                                Visible="false" Width="70px"></asp:TextBox>
                                        </td>
                                        <td bgcolor="#ffffff" rowspan="2" align="center">
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="edit" Font-Size="Small">编辑</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" Font-Size="Small"
                                                Visible="false">更新</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cancel" Font-Size="Small"
                                                Visible="false">取消</asp:LinkButton>
                                         </td>
                                         <td bgcolor="#ffffff" rowspan="2" align="center">
                                      
                                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="delete" Font-Size="Small">删除</asp:LinkButton>
                                       
                                        </td>
                                    </tr>
                                  
                                  
                                </table>
                            </ItemTemplate>
                        </asp:Repeater>
                   </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td colspan="3" align="right">
                   
                    </td>
                </tr>
            </table>
      </div>
</asp:Content>

