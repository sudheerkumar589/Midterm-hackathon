<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Default2" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <table>

<tr>
<td>

</td>
<td>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</td>
</tr>

<tr>
<td>
 Event Name:
</td>
<td>
 <asp:DropDownList ID="DropDownList1" runat="server"   >
        <asp:ListItem Selected="True">SELECT ANY ONE</asp:ListItem>
                    <asp:ListItem>BIRTHDAY</asp:ListItem>
                    <asp:ListItem>BAR MITZVAHS</asp:ListItem>
                    <asp:ListItem>MARRIAGE</asp:ListItem>
                    <asp:ListItem>GRADUATION</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>


<tr>
<td>
 Event Date:
</td>
<td>
     <asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox>
</td>
</tr>


<tr>
<td>
  Event Location:
</td>
<td>
       <asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox>
 
</td>
</tr>


<tr>
<td>

</td>
<td>

 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
</td>
</tr>


</table>



</asp:Content>

