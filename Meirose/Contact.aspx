<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Meirose.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Contact.css" rel="stylesheet" type="text/css" media="screen" />
     
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="ContactPage">
        
           <div class="txtbox">

              
                <h1> Don't Hesitate to Contact Us! </h1>
            
            
            <p> Name </p>
            <p class="form-row form-row-wide">
            <asp:TextBox ID="TxtName" runat="server" CssClass="contactform1"></asp:TextBox>
            <span class="required">*</span><asp:RequiredFieldValidator ID="ReqValName" runat="server" ErrorMessage="Name should not be empty" ControlToValidate="TxtName"></asp:RequiredFieldValidator></p>
            

            <p> Email </p>           
            <p class="form-row form-row-wide"> 
            <asp:TextBox ID="TxtEmail" runat="server" placeholder="your@gmail.com" CssClass="contactform1"></asp:TextBox>
            <span class="required">*</span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="An email is invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="ReqValEmail" runat="server" ErrorMessage="Email should not be empty" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
                </p>

            <p> Subject </p>
            <p class="form-row form-row-wide">
            <asp:TextBox ID="TxtSubject" runat="server" CssClass="contactform1"></asp:TextBox>
            <span class="required">*</span> 
                <asp:RequiredFieldValidator ID="ReqValSubject" runat="server" ErrorMessage="Subject should not be empty" ControlToValidate="TxtSubject"></asp:RequiredFieldValidator>
                </p>

            <p> Message </p>
            <p class="form-row form-row-wide">
            <asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" CssClass="contactform"></asp:TextBox>
            <span class="required">*<asp:RequiredFieldValidator ID="ReqValMsg" runat="server" ErrorMessage="Message should not be empty" ControlToValidate="TxtMessage"></asp:RequiredFieldValidator>
                </span></p>
            
            
            <asp:Button ID="BtnSendEmail" runat="server" Text="Send" OnClick="BtnSendEmail_Click" Font-Bold="False" Font-Italic="False" Font-Names="Berlin Sans FB"/>
      
            <asp:Literal ID="litResult" runat="server"></asp:Literal>

   </div>
             <br />
    
             <br />

           
        </div>


    <div class="newitemwrapper-contactmap">
         <h3>Where We Based at:</h3>
    <div id="map"></div>
    </div>
    <script>
        function initMap() {
        var myLatLng = {lat: 4.885478, lng: 114.931605};

        var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: myLatLng
  });

        var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Hello World!'
  });
     }
        </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCbm7BnS80K4OBIUG4SZGN0JLL8yWCpUQ&callback=initMap"
    async defer></script>
                
   <p>
      Contact Number | +673 888 12345
   </p>
   <p>
      Address | Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan BA1712
   </p>
      </asp:Content> 
 
    
