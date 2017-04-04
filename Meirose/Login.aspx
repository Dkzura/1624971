<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Meirose.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Login.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1>
        &nbsp;</h1>
    <h1>
        &nbsp;&nbsp;&nbsp;&nbsp;
        Login

    </h1>
   
    <h4>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login as Member</h4>
    <p class="italic">
        (If you have an account with us, Please Login)</p>
    <p>
        Email Address
    </p>
    <p class="form-row form-row-wide">
        <asp:TextBox ID="TxtUsername" runat="server" Width="340px" Height="28"></asp:TextBox>
        <span class="required"> * </span>
    </p>
    <p>
      Password 
    </p>
        <p class="form-row form-row-wide">
            <asp:TextBox ID="TxtPassword" runat="server" Width="340px" Height="28"></asp:TextBox>
             <span class="required"> * </span>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Login as Member" Width="105px" Height="28px" Font-Names="Berlin Sans FB" style="margin-bottom: 0px" />
        <asp:Button ID="Button2" runat="server" Font-Names="Berlin Sans FB" Text="Back to Store"  Width="105px" Height="28px" OnClick="Button2_Click" />
    </p>

</asp:Content>
