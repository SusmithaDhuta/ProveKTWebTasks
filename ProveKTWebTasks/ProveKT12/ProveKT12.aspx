<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProveKT12.aspx.cs" Inherits="ProveKTWebTasks.ProveKT12.ProveKT12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ListBox ID="ListBox1" runat="server" Height="90px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="81px">
                <asp:ListItem Value="10">Coke</asp:ListItem>
                <asp:ListItem Value="20">Sprite</asp:ListItem>
                <asp:ListItem Value="30">Coffee</asp:ListItem>
                <asp:ListItem Value="40">Juice</asp:ListItem>
            </asp:ListBox> <br/> <br/>

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" /> <br/> <br/>

            <asp:Image ID="Image1" runat="server"/> <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


        </div>
        
    </form>
</body>
</html>
