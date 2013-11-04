<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Products.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
    <table>
   <tr>
      <td>
   NAME:
   </td>
   <td>
     <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox>
   </td>
   </tr>
   <tr>
   <td> ProductName:</td>
   <td><asp:TextBox ID="TextBox2" runat="server" CssClass="text"></asp:TextBox></td>
   </tr>

   <tr>
   <td>
     Product Price:
   </td>
   <td>
   <asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox>
   </td>
   </tr>

     <tr>
   <td>
      Product Color:
   </td>
   <td>
  <asp:TextBox ID="TextBox4" runat="server" CssClass="text"></asp:TextBox>
   </td>
   </tr>

      <tr>
   <td>
         Product Description:
   </td>
   <td>
  <textarea id="TextArea1" runat="server" cols="20" name="S1" rows="2"></textarea>
   </td>
   </tr>


       <tr>
   <td>
         Image:
   </td>
   <td>
<asp:FileUpload ID="FileUpload1" runat="server" />
   </td>
   </tr>


       <tr>
   <td style="float:right">
         <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
   </td>
   <td>
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="View Submitted Data" />
   </td>
   </tr>

       <tr>
   <td>
        
   </td>
   <td>

   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div id="imgurl" runat="server"></div>
   </td>
   </tr>



   </table>

   <div>
   
   <asp:GridView ID="grddisplay" runat="server" AutoGenerateColumns="False" 
           CellPadding="4" ForeColor="#333333" GridLines="None">
       <AlternatingRowStyle BackColor="White" />
       <Columns>
           <asp:BoundField DataField="Name" HeaderText="Name" />
           <asp:BoundField DataField="ProductName" HeaderText="ProductName" />
           <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" />
           <asp:BoundField DataField="ProductColor" HeaderText="ProductColor" />
           <asp:TemplateField HeaderText="Image">
           
           <ItemTemplate>
           <asp:Image ID="imagesrc" runat="server" ImageUrl='<%# Eval("image") %>' Height="70px" Width="110px" />
           

           </ItemTemplate>
           
           </asp:TemplateField>
           <asp:BoundField DataField="ProductDes" HeaderText="ProductDesc" />
       </Columns>
       <EditRowStyle BackColor="#2461BF" />
       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="#EFF3FB" />
       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#F5F7FB" />
       <SortedAscendingHeaderStyle BackColor="#6D95E1" />
       <SortedDescendingCellStyle BackColor="#E9EBEF" />
       <SortedDescendingHeaderStyle BackColor="#4870BE" />
       </asp:GridView>
   
   </div>


</asp:Content>
