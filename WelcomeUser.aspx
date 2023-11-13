<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="WelcomeUser.aspx.cs" Inherits="UserMasterPage_WelcomeUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <p style="margin:0px; color: teal; align-content:center; font-size: xx-large; font-weight: bold; font-family: 'Times New Roman', Times, serif; " align="center">Welcome,<asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label>
    <br />
           <br /> <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                                    Font-Underline="False" PostBackUrl="~/AccountDetails.aspx" ForeColor="Teal" Font-Size="Large">My Profile</asp:LinkButton><br />
        
         <br /> <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    Font-Underline="False" PostBackUrl="~/GroundBooking.aspx" ForeColor="Teal" Font-Size="Large">Book Ground</asp:LinkButton><br />
          
         <br /> <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    Font-Underline="False" PostBackUrl="~/paymentmode.aspx" ForeColor="Teal" Font-Size="Large">Payment</asp:LinkButton><br />
          
          <br />
          <asp:LinkButton ID="lblLogout" runat="server"  
                                        PostBackUrl="~/Home.aspx" ForeColor="Blue" Font-Size="X-Large">Logout</asp:LinkButton><br />
    <br />

                            
  </p> 
</asp:Content>

