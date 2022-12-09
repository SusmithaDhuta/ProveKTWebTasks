<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProveKT11.aspx.cs" Inherits="ProveKTWebTasks.ProveKT11.ProveKT11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>

    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


    <title></title>
</head>
<body>
    <form id="formm" runat="server">
        <div>
            <h3>Calculator</h3>
            <asp:Label ID="Labell1" runat="server" Text="Enter Number1:"></asp:Label> 
             <asp:TextBox ID="TextBoxx1" runat="server"></asp:TextBox> <br/> <br />
           
            <asp:Label ID="Labell2" runat="server" Text="Enter Number2:"></asp:Label>
            <asp:TextBox ID="TextBoxx2" runat="server"></asp:TextBox> <br/> <br/>
           <asp:Button ID="Btnadd" runat="server" Text="ADD" OnClick="Btnadd_Click" />
            <asp:Button ID="Btnsub" runat="server" Text="SUB" OnClick="Btnsub_Click" /> <br /><br />

            <asp:Label ID="Label3" runat="server" Text="Total:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <br/> <br/>

            
        </div>
       
        
    </form>
</body>
</html>
