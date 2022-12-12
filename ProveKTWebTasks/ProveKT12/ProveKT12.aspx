<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProveKT12.aspx.cs" Inherits="ProveKTWebTasks.ProveKT12.ProveKT12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
  <script  language="C#" runat="Server">
          void Calculate(Object sender, EventArgs e)
          {
              if (Store.SelectedIndex > -1) {
                  int i = Store.SelectedIndex;
                  Cost.Text = "You have chosen" + Store.SelectedItem.Value + "and its cost is Rs.";
                  if (i == 0)
                      Cost.Text += "30";
                  else if (i == 1)
                      Cost.Text += "32";
                  else if (i == 2)
                      Cost.Text += "28";
                  else
                      Cost.Text += "26";
              }
          }
          void display(Object sender, EventArgs e)
        {
               int i = Store.SelectedIndex; 
         if (i==0) 
        { 
        Img.ImageUrl = "Coke.jpg"; 
       Img.AlternateText = "Cola"; 
        } 
       else if (i==1) 
        { 
        Img.ImageUrl = "Sprite.jpg"; 
      Img.AlternateText = "Sprite"; 
        } 
      else if (i == 2) 
      { 
       Img.ImageUrl = "Coffee.jpg"; 
      Img.AlternateText ="Coffee"; 
        } 
     else 
     { 
     Img.ImageUrl = "Juice.jpg"; 
     Img.AlternateText = "Juice"; 
     } 

   }

  </script>

</head>
<body>
    <form id="form1" runat="server">
        
            <asp:label id = "label1" Text="Choose one of the items below"
              Font-Name="Verdana" Font-Size="18pt" runat="server" /> 
<br/><br/> 

  <asp:listbox id="Store" AutoPostBack="True" width="200" runat="server" onSelectedIndexChanged="display"> 
 <asp:listitem>Coke</asp:listitem> 
 <asp:listitem>Sprite</asp:listitem> 
 <asp:listitem>Coffee</asp:listitem> 
 <asp:listitem>Juice</asp:listitem> 
</asp:listbox> 

        <asp:Image ID="Img" ImageUrl="" AlternateText="" runat="server" /> 
      <br/><br/> 
    <asp:button id="Find" text="Find Cost" OnClick="Calculate"
runat="server"/> 
<br/><br/> 
        <asp:textbox id="Cost" text="0" width="350" runat="server"/>
        
        
    </form>
</body>
</html>
