<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Text.aspx.cs" Inherits="Text" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="sms_T" runat="server" Height="136px" Width="699px">
            <Columns>
                <asp:TemplateField>               
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("teachername") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        &nbsp;<asp:Label ID="Label2" runat="server" Width="184px"></asp:Label></div>
    </form>
</body>
</html>
