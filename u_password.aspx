<%@ Page Title="修改密码" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="u_password.aspx.cs" Inherits="u_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 101px;
        }
        .table {
            width:300px;
            height:150px;
            margin-top:150px;
            line-height:20px;
            margin:0 auto;
            text-align:center;
            border-collapse: collapse;
           border:1px solid #80ff00;
        }
        .table td {
         border:1px solid #80ff00;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="margin-top:100px;">
        <table class="table">
        <tr>
            <td class="auto-style2">当前用户：</td>
            <td colspan="2">
                <asp:Label ID="lblusername" runat="server" BackColor="Transparent" ForeColor="Red" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">新密码：</td>
            <td colspan="2" >
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
  </div>
</asp:Content>

