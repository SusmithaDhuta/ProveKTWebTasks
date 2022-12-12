<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProveKT13.aspx.cs" Inherits="ProveKTWebTasks.ProveKT13.ProveKT13" %>

<!DOCTYPE html>

<html> 
<script language="c#" runat="server"> 
 void btnclick(Object Sender,EventArgs E) 
 { 
 if (Page.IsValid ==true) 
    { 
     Label1.Text="Valid"; 
    } 
 } 

</script> 
<body bgcolor="green"> 

<form runat="server"> 

<center>
    <h4><font color="blue"> Validation Controls </font> </h4>

</center> 
<table>
    <tr> 
<td style = color: "yellow"> Enter Your Name : </td> 
<td> <asp:textbox id="idno" runat="server"/> </td> 
<td> <asp:requiredfieldvalidator id="requiredfielddata"
 ControlToValidate = "idno" errormessage = "cannot leave this field blank" display="static" runat="server" /> </td> 
</tr> 

 <tr> 
<td style=color: "yellow"> Mode of payment :</td> 
<td>
    <asp:RadioButtonList ID="radio1" runat="server">
    
    <%--<asp:radiobuttonlist id="radio1" repeatlayout="flow" runat="server">--%> 
 <asp:listitem > Cash </asp:listitem> 
 <asp:listitem > Card </asp:listitem> 
 </asp:radiobuttonlist> 
</td> 


<td>
    <asp:RequiredFieldValidator id= "requiredfielddata1" controltovalidate= "radio1" errormessage= "Click either cash or card"
   Display= "static" runat= "server"/>   
</td> 
</tr>
    <tr> 
<td style=color: "yellow"> Please select any one from the List : </td> 
<td> <asp:dropdownlist id="cardtype" columns=3 rows=7 runat="server"> 
 <asp:listitem> None </asp:listitem> 
 <asp:listitem> Visa </asp:listitem> 
 <asp:listitem> Master </asp:listitem> 
 <asp:listitem> Stc </asp:listitem> 
 <asp:listitem> Hsbc </asp:listitem> 
 <asp:listitem> SBI </asp:listitem> 
 </asp:dropdownlist>
    </td> 
<td> <asp:requiredfieldvalidator id="requiredfielddata2" 
controltovalidate="cardtype" errormessage="Sorry! please select any from above" display="static" runat="server"/> 

</td> 
</tr> 
<tr> 
<td><br><br>
   <%-- <asp:button id="bt1" text= "Check for validation" OnClick="btnclick" runat="server" style=color: "green"/>--%>
    <asp:Button ID="Button1" runat="server" OnClick="btnclick" text= "Check for Validation"/>
</td> 
</tr> 
</table> 
<table>
    <tr> 
<td> 
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</td> 
</tr> 
</table> 
</form> 
    </body>
   
</html> 