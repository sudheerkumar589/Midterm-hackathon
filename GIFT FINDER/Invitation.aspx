<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Invitation.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div>
<h3 style="font-size: 2.2em;">Invite Your friends and family members to Event</h3>
</div>


<table>

<tr>
<td>



</td>

</tr>
<tr>
<td>



</td>

</tr>
<tr>
<td>

Enter Friends Email Ids separated with comma(,) 

</td>

</tr>

<tr>
<td>

<asp:TextBox ID="txtinvite" runat="server" style="width:300px"></asp:TextBox>

</td>

</tr>

<tr>
<td>



</td>

</tr>
<tr>
<td>

<asp:Button ID="btnsend" runat="server" Text="Send" style="width:305px" 
        onclick="btnsend_Click" />

</td>

</tr>
<tr>
<td>



</td>

</tr>
<tr>
<td>

<asp:Label ID="lblresult" runat="server" style="color:Blue" Font-Bold="true"></asp:Label>

</td>

</tr>
</table>

</asp:Content>

