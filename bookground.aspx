<%@ Page Title="" Language="C#" MasterPageFile="~/Clientmaster.master" AutoEventWireup="true" CodeFile="bookground.aspx.cs" Inherits="bookground" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Page Content -->
   
  <div class="container">
           <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Ground
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="Home.aspx">Home</a>
        </li>
        <li class="breadcrumb-item active">Ground Info</li>
      </ol>

    <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/images/0119.jpg" Width="100%" />
    <h3 style="color:teal;">Ground Booking Rent</h3><br />
    <table style="width: 100%"><tr>
           <td height="35" align="center" class="auto-style2" style="background-image: none; font-family: 'Times New Roman', Times, serif; font-size: large; font-style: normal; font-variant: normal; color: white; font-weight: bold; background-color: #000080;">Day</td>

                  <td align="center" class="auto-style3" style="background-image: none; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-variant: normal; font-style: normal; text-transform: none; color: white; background-color: #000080;">Rent</td>


              </tr>
           <tr>

                        <td height="30" align="center" class="auto-style2" style="color:white; font-weight: bold; background-color: #008080;">1</td>

                        <td height="30" align="center" class="auto-style3" style="color:white; font-weight: bolder; background-color: #008080;">1500/-</td>

                        

                      </tr>
           <tr>

                        <td height="30" align="center" class="auto-style2" style="color: white; font-weight: bold; background-color: teal;">2</td>

                        <td height="30" align="center" class="auto-style3" style="color: white; font-weight: bolder; background-color: teal;">2500/-</td>

                        

                      </tr>

           <tr>

                        <td height="30" align="center" class="auto-style2" style="color: white; font-weight: bold; background-color: teal;">7</td>

                        <td height="30" align="center" class="auto-style3" style="color: white; font-weight: bolder; background-color: teal;">6000/-</td>

                        

                      </tr>

      

       </table>
    <br />
      <h3 align="center"><asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Font-Underline="true" ForeColor="Red" PostBackUrl="~/loginform.aspx">Book Your Ground</asp:LinkButton></h3> <br />
      <h2 style="text-align:left;  margin-left:20px;color:red;  text-decoration:underline;">Rules</h2>

                       <ul style=" list-style-type:disc; color:Teal; text-align:left; font-size:20px; font-family:Calibri; font-weight:bold;">
                            <li style="text-align: left; list-style-type: disc; margin-left:20px;">For Tournaments the enquiry should come to following address.</li>
                           <br /><li style="text-align: left; list-style-type: disc; margin-left:20px;">Only 12-13 people are allowed for any booking.</li>
                          <br /> <li style="text-align: left; list-style-type: disc; margin-left:20px;">Food is not allowed on field premises.</li>
                          <br /> <li style="text-align: left; list-style-type: disc; margin-left:20px;">Bookings cannot be shifted once booked , if it is approved from management team.</li>
                          <br /> <li style="text-align: left; list-style-type: disc; margin-left:20px;"> No refunds will be given, if cancellation occurs.</li>
                           <br /><li style="text-align: left; list-style-type: disc; margin-left:20px;">No Drinking Alcohol</li>
                           <br /><li style="text-align: left; list-style-type: disc; margin-left:20px;"> No Smoking.</li>


                       </ul>
    <br />
 </div>
    </asp:Content>
