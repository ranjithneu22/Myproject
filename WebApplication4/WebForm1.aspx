<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title></title>
 <style type="text/css">
 .auto-style1 {
 width: 100%;
 }
 .auto-style2 {
 width: 275px;
 }
     .auto-style3 {
         width: 275px;
         height: 29px;
     }
     .auto-style4 {
         height: 29px;
     }
 </style>
</head>
<body>
 <h1> This is Dev Environment </h1>
 <form id="form1" runat="server">
 <table class="auto-style1">
 <tr>
 <td class="auto-style3">FirstNName</td>
 <td class="auto-style4">
 <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td class="auto-style2">LastName</td>
 <td>
 <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td class="auto-style2">City</td>
 <td>
 <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td class="auto-style2">Gender</td>
 <td>
 <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td class="auto-style2">&nbsp;</td>
 <td>
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
 </td>
 </tr>
 </table>
 <asp:Label ID="Label1" runat="server"></asp:Label>
     <br />
     <asp:Label ID="Label2" runat="server"></asp:Label>
     <br />
     <asp:Label ID="Label3" runat="server"></asp:Label>
     <br />
     <asp:Label ID="Label4" runat="server"></asp:Label>
     <br />

 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [dev]"></asp:SqlDataSource>
     <tr>
     <td class="auto-style2">Latest Commit Deployment environment TEST 2</td>
     </tr>
 </form>
</body>
</html>
