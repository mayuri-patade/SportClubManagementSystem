<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="GroundBooking.aspx.cs" Inherits="GroundBooking" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="CSS/registyle.css" rel="stylesheet" />
<link href="styles/StyleSheet2.css" rel="stylesheet" />

    <title style="color: #FFFFFF">Ground booking page</title>
    <style type="text/css">
        .auto-style2 {
            width: 20%;
        }
        .auto-style3 {
            width: 16%;
        }
        .auto-style4 {
            height: 56px;
        }
        .auto-style5 {
            width: 182px;
        }
        .auto-style6 {
            height: 56px;
            width: 182px;
        }
        .auto-style7 {
            height: 110px;
        }
        .auto-style8 {
            width: 182px;
            height: 110px;
        }
    </style>
    </head>
<body id="groundbooking" style="background-image:url('images/groundimage.jpg'); background-size:cover;">
    
       
      <form id="form1" runat="server" style="margin-left:350px;">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="main">
  
        <h1 style="color:white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ground Booking Form</h1>
       <table style="width: 546px;"><tr>
           <td height="35" align="center" class="auto-style2" style="background-image: url('http://localhost:59320/images/38.jpg'); font-family: 'Times New Roman', Times, serif; font-size: large; font-style: normal; font-variant: normal; color: Teal; font-weight: bold">Day</td>

                  <td align="center" class="auto-style3" style="background-image: url('http://localhost:59320/images/38.jpg'); font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-variant: normal; font-style: normal; text-transform: none; color: Teal">Rent</td>


              </tr>
           <tr>

                        <td height="30" align="center" class="auto-style2" style="color:white; font-weight: bold">1</td>

                        <td height="30" align="center" class="auto-style3" style="color:white; font-weight: bolder">1500/-</td>

                        

                      </tr>
           <tr>

                        <td height="30" align="center" class="auto-style2" style="color: white; font-weight: bold">2</td>

                        <td height="30" align="center" class="auto-style3" style="color: white; font-weight: bolder">2500/-</td>

                        

                      </tr>

           <tr>

                        <td height="30" align="center" class="auto-style2" style="color: white; font-weight: bold">7</td>

                        <td height="30" align="center" class="auto-style3" style="color: white; font-weight: bolder">6000/-</td>

                        

                      </tr>


       </table>
          
        
         <table style="margin-left:150px;">
            <tr>
                <td style="color: white">Name</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td>
                    <asp:TextBox ID="Textname" runat="server" Height="25px" Width="151px"></asp:TextBox></td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="Name is required" ControlToValidate="Textname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Name is required">Field Can not be blank</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="color: white">
        <br />
        <br />
        Address</td>
                <td>
                    <asp:TextBox ID="TextAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" Display="Dynamic" ErrorMessage="Address is required" Text="Field Can not be blank" ForeColor="Red" ControlToValidate="TextAddress" SetFocusOnError="True" ToolTip="Address is Required"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="color: white">
        <br />
        <br />
        ContactNo</td>
                <td><asp:TextBox ID="TextContactNo" runat="server" Height="26px" Width="150px"></asp:TextBox>  </td>
                <td class="auto-style5"> 
                    <asp:RequiredFieldValidator ID="rfvcontact1" runat="server" Display="Dynamic" ErrorMessage="Required" Text="Field Can not be blank" ForeColor="Red" ControlToValidate="TextContactNo" SetFocusOnError="True" ToolTip="Required"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="rfvcontact" runat="server" ControlToValidate="TextContactNo" Text="Enter Valid Number" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Valid Number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></td>
                  </tr>  

             <tr>
                <td style="color: white">
        <br />
        <br />
        EmailID</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td>
                    <asp:TextBox runat="server" ID="TextEmailId" Height="25px" Width="150px"></asp:TextBox></td>
                <td class="auto-style5">
                   
                    <asp:RegularExpressionValidator ID="REVEmailId" runat="server" ErrorMessge="Invalid Email ID" ControlToValidate="TextEmailId" Display="Dynamic" ForeColor="Red" ToolTip="Invalid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True" Text="Enter Valid Emailid" ErrorMessage="InvalidEmailId"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvemailid1" runat="server" Display="Dynamic" ErrorMessage="Required emailid" Text="Field Can not be blank" ForeColor="Red" ControlToValidate="TextEmailId" SetFocusOnError="True" ToolTip=" Required"></asp:RequiredFieldValidator>&nbsp;
            </td>
            </tr>
            <tr>
                <td style="color: white" class="auto-style4">
        Purpose</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td class="auto-style4">
                    <asp:TextBox ID="TextPurpose" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="rfvPurpose" runat="server" ErrorMessage="Purpoe is required" ControlToValidate="TextPurpose" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Purpose is required">Field Can not be blank</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="color: #FFFFFF" class="auto-style7">
        BookingDateFrom</td>&nbsp;&nbsp;
                <td class="auto-style7">
                    <asp:TextBox ID="TextBookingDateFrom" runat="server" Height="24px" Width="150px"></asp:TextBox>
                    <asp:ImageButton ID="imgPopup" ImageUrl="~/images/calendar.jpg" ImageAlign="Bottom" runat="server" style="height: 16px" />
<ajaxToolkit:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="TextBookingDateFrom" Format="yyyy/MM/dd">
</ajaxToolkit:CalendarExtender>  </td>
                <td style="color: white" class="auto-style8">
                    <asp:RequiredFieldValidator ID="rfvBookingDateFrom" runat="server" ErrorMessage="Booking Date is Mandatory" ControlToValidate="TextBookingDateFrom" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Booking Date is Mandatory">Field Can not be blank</asp:RequiredFieldValidator>
        <br />
        <br />
        </td>
            </tr>
             <tr>
                <td style="color: #FFFFFF">
        BookingDateTo</td>&nbsp;&nbsp;   <td>
                    <asp:TextBox ID="TextBookingDateTo" runat="server" Height="24px" Width="150px"></asp:TextBox>
                    <asp:ImageButton ID="ImagePopup" ImageUrl="~/images/calendar.jpg" ImageAlign="Bottom" runat="server" />
<ajaxToolkit:CalendarExtender ID="Calendar2" PopupButtonID="ImagePopup" runat="server" TargetControlID="TextBookingDateTo" Format="yyyy/MM/dd" BehaviorID="Calendar2">
</ajaxToolkit:CalendarExtender>  </td>
                <td style="color: white" class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvBookingDateTo" runat="server" ErrorMessage="Booking Date is Mandatory" ControlToValidate="TextBookingDateTo" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Booking Date is Mandatory">Field Can not be blank</asp:RequiredFieldValidator>
        <br />
        <br />
        </td>

                 </tr>
            
            <tr>
                <td>
                    
                    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" Height="35px" Width="100px" /></td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Height="35px" Width="100px" CausesValidation="False" PostBackUrl="~/WelcomeUser.aspx" ValidateRequestMode="Disabled" OnClick="Button2_Click" /></td>
               
            </tr>
            <tr><td><asp:Label ID="Lbl2" runat="server" ForeColor="White"></asp:Label>
                </td></tr>
            
        </table>
        </div>    
    </form>
        
            
</body>
</html>
               