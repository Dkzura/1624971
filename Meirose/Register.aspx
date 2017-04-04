<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Meirose.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Register.css" rel="stylesheet" type="text/css" media="screen" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp; Register</h1>
    <p>
        Your Personal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        * Required Information<br />
    </p>
 <p>
      First Name 
        </p>
    <p class="form-row form-row-wide">
        <asp:TextBox ID="TextBox1" runat="server" Width="340px" Height="28px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <span class="required">*</span>
   </p>

     <p>
      Last Name 
        </p>
    <p class="form-row form-row-wide">
        <asp:TextBox ID="TextBox5" runat="server" width="340px" Height="28px"></asp:TextBox>
        <span class="required">*</span>
        </p>

     <p>
      Email Address
        </p>
    <p  class="form-row form-row-wide">
        <asp:TextBox ID="TextBox2" runat="server" Width="340px" Height="28px"></asp:TextBox>
        <span class="required">*</span>
    </p>
        
     <p>
     Password 
        </p>
    <p  class="form-row form-row-wide">
        <asp:TextBox ID="TextBox3" runat="server" Width="340px" Height="28px"></asp:TextBox>
        <span class="required">*</span>
    </p>
     <p>
      Confirm Password 
        </p>
    <p class="form-row form-row-wide">
        <asp:TextBox ID="TextBox4" runat="server" Width="340px" Height="28px"></asp:TextBox>
        <span class="required">*</span>
    </p>
    <p>
        &nbsp;</p>
<p>
        <asp:Button ID="btnCreateAcc" runat="server" Font-Names="Berlin Sans FB" Width="105px" Height="28px" Text="Register" />
        <asp:Button ID="Button1" runat="server" Font-Names="Berlin Sans FB" Text="Return to Store" Width="105px" Height="28px" />
    </p>
   
</asp:Content>
