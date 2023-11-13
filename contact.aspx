<%@ Page Title="" Language="C#" MasterPageFile="~/Clientmaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Content -->
    <div class="container">


      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Contact
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="Home.aspx">Home</a>
        </li>
        <li class="breadcrumb-item active">Contact</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
         <asp:Image ID="Image1" runat="server" width="100%" height="400px" ImageUrl="~/images/map.jpg" /> 
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
          <h3>Contact Details</h3>
          <p> CITY SPORT CLUB</p>
<p>19/1B/1,</p> 
<p>Mahatma GandhiVidyamandir </p>
<p>Near Dr Ambedkar Park </p>
<p>Shirsekar Road,Bandra </p>
<p>Mumbai-400051. </p>
<p>For Enquiry And Ground Booking </p>
<p>Contact:8286338701/9892865619(Timing:7AM-11.30AM,4.30AM-8.30AM) </p>
          
        </div>
      </div>
      <!-- /.row -->
  <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
      <div class="row">
        <div class="col-lg-8 mb-4">
          <h3>Feedback Form</h3>
          <form name="sentMessage" id="contactForm" novalidate>
            <table style="height:500px ; width:100%">
<tr>
<td style="width:30%">

    <br />
    Name :<br />
    <asp:TextBox ID="TextBox3" placeholder="Enter Your Name" runat="server"
        Width="556px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field Can not be blank" ForeColor="Red">Field Can not be blank</asp:RequiredFieldValidator>
    <br />
    <br />
    Email :<br />
    <asp:TextBox ID="TextBox4"  placeholder="Enter Your Mail ID" runat="server" Width="556px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field Can not be blank" ForeColor="Red">Field Can not be blank</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid Email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter Valid Email Id</asp:RegularExpressionValidator>
    <br />
    <br />
    Mobile Number :<br />
    <asp:TextBox ID="TextBox5"  placeholder ="Enter Number" runat="server" Width="556px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Field Can not be blank" ForeColor="Red">Field Can not be blank</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Valid Number" ForeColor="Red" ValidationExpression="[0-9]{10}">Enter Valid Number</asp:RegularExpressionValidator>
    <br />
    <br />
    Subject :<br />
    <asp:TextBox ID="TextBox6" placeholder="Enter Subject" runat="server" Width="556px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Subject is Required" ForeColor="Red">Subject is Required</asp:RequiredFieldValidator>
    <br />
    <br />
    Message :<br />
    <asp:TextBox ID="TextBox7" placeholder="Enter Message..." runat="server" 
        TextMode="MultiLine" Width="556px" Height="83px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Field Can not be blank" ForeColor="Red">Field Can not be blank</asp:RequiredFieldValidator>
    <span style="margin-left:21%">
        <br />
    <br />
        <asp:Button ID="btnSend" runat="server" Text="Send" 
        Font-Bold="True" Font-Size="Medium" OnClick="btnSend_Click" Height="30px" Width="128px" 
         /></span>
    <asp:Label ID="Label3" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" CausesValidation="False" Height="30px" PostBackUrl="~/Home.aspx" Text="Cancel" ValidateRequestMode="Disabled" Width="117px" Font-Bold="True" Font-Size="Medium" />
    </td></table>
          </form>
        </div>
    
  </div>
    <!-- /.container -->
  </asp:Content>
   

