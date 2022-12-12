<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formexp.aspx.cs" Inherits="ProveKTWebTasks.ProveKT14.Formexp" %>

<!DOCTYPE html>

<html> 
<title> Using Request Object </title> 
<script language="c#" runat="server"> 
    void btnclick(object s,EventArgs e)
    {
        if (Page.IsValid==true )
        {
            result.Text="Thanks for Registering. Soon you will be Contacted";
            HttpCookie Cookie;
            Cookie = new HttpCookie("cookname");
            Cookie.Values.Add("uname", Request.Form["uname"]); 
            Response.AppendCookie(Cookie);
            Cookie = Request.Cookies["cookname"];
            Response.Write (Cookie.Value +  "has visited the site .");
        }
        else
        {
            result.Text="Sorry you have to fill these fields";
        }
    }
</script> 

 <form runat="server" method= "post" action="formexp.aspx"> 
     <h3>Please fill your details here</h3> 
<br> 
<table> 
<tr> 
 <td> Enter your name </td> 
<td> <asp:textbox id="uname" runat="server" /></td> 
<td> <asp:requiredfieldvalidator id= "requname" controltovalidate= "uname" runat="server" errormessage="Please enter your name"/></td> 
</tr> 
<tr> 
<td> Enter your address</td> 
<td><asp:textbox id="uaddress" textmode="multiline" runat="server"/></td> 
<td><asp:Requiredfieldvalidator id="requaddress" controltovalidate="uaddress" runat="server" 

    errormessage="Address has to be entered"  display="static"/> </td> 
</tr> 
<tr> 
<td>Date of birth</td> 

    <td> <asp:textbox id="udate" runat="server"/></td> 
<td> <asp:Requiredfieldvalidator id="requdate" controltovalidate="udate" runat="server" 
    errormessage="Enter your date of birth" display="static"/> </td> 

<td> <asp:Rangevalidator id="reqrunation" controltovalidate="udate"
runat="server" type="date" minimumvalue="1/1/1900" maximumvalue="1/1/2099" errormessage="Date should be in between 1/1/1900 - 1/1/2099" 
display="static"/></td> 
</tr> 
<tr> 
<td>Nationality </td> 
<td> <asp:textbox id="unation" runat="server"/></td> 
<td> <asp:Requiredfieldvalidator id="requnation" controltovalidate="unation" runat="server" errormessage="Enter correct data" display="static"/> 
</td> 
</tr> 
<tr> 
<td>Please select any Country:</td> 
<td> <asp:dropdownlist id="uplace" runat="server" > 
 <asp:listitem>U.S.A</asp:listitem> 
 <asp:listitem>Canada</asp:listitem> 
 <asp:listitem>U.K</asp:listitem> 
 <asp:listitem>Singapore </asp:listitem> 
 <asp:listitem>Malaysia </asp:listitem> 
 </asp:dropdownlist></td> 
<td> <asp:Requiredfieldvalidator id="requplace" 
controltovalidate="uplace" runat="server" errormessage="Please Select any country from the list" display="static"/> </td> 
</tr> 
<tr> 
<td>Mention your Skillsets here</td> 
<td> <asp:textbox id="uskill" textmode="multiline"
runat="server"/></td> 

    <td> <asp:Requiredfieldvalidator id="requskill"
controltovalidate="uskill" runat="server" errormessage="Please mention your skillsets here" display="static"/> </td> 
</tr> 
</table><br> 
<asp:button type="submit" text="submit" OnClick="btnclick"
runat="server"/><br><br> 
<asp:label id="result" runat="server"/> 
</form> 
</html> 
