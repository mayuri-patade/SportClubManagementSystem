<%@ Page Title="" Language="C#" MasterPageFile="~/Clientmaster.master" AutoEventWireup="true" CodeFile="loginform.aspx.cs" Inherits="loginform" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Content -->
    <div class="container">


      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Login
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="Home.aspx">Home</a>
        </li>
        <li class="breadcrumb-item active">Login</li>
      </ol>     
        
        <br />
        <center>
                       <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>:<asp:TextBox ID="TextBox1"
                           runat="server" Height="30px" Width="140px"></asp:TextBox></center>
                           <center><br />
                               <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>:<asp:TextBox ID="TextBox2"
                                   runat="server" TextMode="Password" style="margin-left: 7px" Height="30px" Width="140px"></asp:TextBox></center>
                           <br />        <center>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <asp:CheckBox ID="CheckBox1" runat="server" />Keep Me Logged In</center>
                                             <center>
                                                  
                                                 <asp:Label ID="lblloginfailed" runat="server" Text=""></asp:Label>&nbsp;
        </center>
                                                 <center>
                                                     <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="29px" Width="94px" 
                                                         />
                                                     <br />
        </center>
        <br />
        <br />
        <br />
        <br />
        <br />
</div>
</asp:Content>

