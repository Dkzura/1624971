<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Meirose.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meirose Bawal</title>
    <link href="Index.css" rel="stylesheet" type="text/css" media="screen" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="txtbox">

    <h1> Login </h1>
  
    <h4>
       Login as Member</h4>
    <br />
             
    <asp:Label ID="LabelPassword" runat="server" Text="Password:"></asp:Label>    
    <p class="form-row form-row-wide"> 
    <asp:TextBox ID="TextPassword" runat="server" CssClass="loginform1" OnTextChanged="TextPassword_TextChanged"></asp:TextBox>
    <span class="required">*</span> </p>

    <asp:Label ID="LabelEmail" runat="server" Text="Email Address:"></asp:Label>    
    <p class="form-row form-row-wide"> 
    <asp:TextBox ID="TextEmail" runat="server" CssClass="loginform1"></asp:TextBox>
    <span class="required">*</span> </p>
    
    <p>
        <asp:Button ID="Button1" runat="server" Text="Login as Member" OnClick="Button1_Click"/>
    
        <asp:Literal ID="LoginError" runat="server"></asp:Literal>
    </p>
    </div> 
    </div>
       
        <div class="txtbox1">
            <h1>Register</h1>
            
            <br />

            <asp:Label ID="Username" runat="server" Text="Username:"></asp:Label>
            <p class="form-row form-row-wide">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="loginform1"></asp:TextBox>
            <span class="required">*</span> </p>
          
            <asp:Label ID="LabelPassword0" runat="server" Text="Password:"></asp:Label>
            <p class="form-row form-row-wide">
            <asp:TextBox ID="TextPassword0" runat="server" CssClass="regform1"></asp:TextBox>
            <span class="required">*</span> </p>

            <asp:Label ID="LabelConfirmPass" runat="server" Text="Confirm Password:"></asp:Label>
            <p class="form-row form-row-wide">
            <asp:TextBox ID="TextConfirmPass" runat="server" CssClass="regform1"></asp:TextBox>
            <span class="required">*</span> </p>

            <asp:Label ID="LabelEmail0" runat="server" Text="Email Address:"></asp:Label>
            <p class="form-row form-row-wide">
            <asp:TextBox ID="TextEmail0" runat="server" CssClass="regform1"></asp:TextBox>
            <span class="required">*</span>
            </p>
            <p>
                <asp:Button ID="Button3" runat="server" Text="Register" OnClick="Button3_Click" />
                <asp:Literal ID="RegisterError" runat="server"></asp:Literal>
            </p>
        </div>
    </form>
</body>
</html>
