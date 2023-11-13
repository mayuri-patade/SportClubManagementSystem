<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Registration.aspx.cs" Inherits="userpage_Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<!DOCTYPE html>
   <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <script src="Script/JScript.js"></script>
    
    <link href="styles/StyleSheet2.css" rel="stylesheet" />
     <link href="CSS/registyle.css" rel="stylesheet" />
   
    </head>   
 
<body id="RegBack" style="background-image:url('images/ss.jpg'); background-size:cover;">   
     
    <form id="form1" runat="server">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div  class="main">
      <div class="one">
        <div class="register">
          
            <h1 style="color:white;text-align:center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form</h1>
     
               <br />
            <table style="margin-left:500px; align:center;text-align:center;text-decoration-color:white">
                 
                 <tr>
                    <td>FirstName</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtfname" runat="server" Height="25px" Width="136px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvfname" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="txtfname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="First name is required">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>LastName</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtlname" runat="server" Height="25px" Width="136px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvlname" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Field Can not be blank" ForeColor="Red" SetFocusOnError="True" ToolTip="Last name is required">Field Can not be blank</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>UserName</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtusername" runat="server" Height="25px" Width="136px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="txtusername" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="UserName is required ">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="auto-style1" >
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="25px" Width="136px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="Password is mandatory" ControlToValidate="txtpassword" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Password is mandatory">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr><td>Confirm Password</td><td class="auto-style1">
                    <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password" Height="25px" Width="136px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvpassword0" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="txtconfirmpass" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Password is mandatory">Field Can not be blank</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password and confirm password do not match" Display="Dynamic" Text="password and confirm password do not match" ForeColor="Red" SetFocusOnError="True" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpass" ToolTip="password do not match"></asp:CompareValidator></td>
                        
                    
                </tr>
                <tr>
                    <td>Address</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    <td >
                        <asp:RequiredFieldValidator ID="rfvaddress" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="txtaddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Address can't be left blank">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr><tr><td>School/College Name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtschool" runat="server" Height="25px" Width="136px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvschool" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="txtschool" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Required">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>ContactNo.</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtcontact" runat="server" TextMode="Phone" Height="25px" Width="136px"></asp:TextBox>
                    </td>
                   <td>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" Text="Enter Valid Number" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Valid Number" ValidationExpression="[0-9]{10}" SetFocusOnError="True" ToolTip="Enter Valid Number"></asp:RegularExpressionValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcontact" Display="Dynamic" ErrorMessage="Field Can not be blank" ForeColor="Red" SetFocusOnError="True" ToolTip="Required">Field Can not be blank</asp:RequiredFieldValidator>
                    </td>
                       </tr>
                <tr>
                <td>Date of Birth</td>
                    <td class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtdob" runat="server" Height="25px" Width="136px"></asp:TextBox>
<asp:ImageButton ID="imgPopup" ImageUrl="~/images/calendar.jpg" ImageAlign="Bottom" runat="server" />
<ajaxToolkit:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="txtdob" Format="dd/MM/yyyy">
</ajaxToolkit:CalendarExtender>
                       </td>
                    <td>
                            <asp:RequiredFieldValidator ID="rfvdob" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="txtdob" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="It is mandatory">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td >Email ID</td>
                    <td class="auto-style1" >
                        <asp:TextBox ID="txtemailid" runat="server" Height="25px" Width="136px" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvemailid0" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="txtemailid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Required">Field Can not be blank</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter Valid Email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Enter Valid Email id</asp:RegularExpressionValidator>
                    </td>
              </tr>   
                <tr>
                    <td>Game</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddl1" runat="server" DataTextField="gameid" DataValueField="gameid">
                           
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#66CCFF" Height="32px" Width="100px" /></td>
                    <td class="auto-style1">
                        <asp:Button ID="btnClear" runat="server" Text="Cancel" BackColor="#66CCFF" OnClick="btnClear_Click" CausesValidation="False" PostBackUrl="~/Home.aspx" ValidateRequestMode="Disabled" Height="32px" Width="100px" />

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label></td>
                   
                </tr>
                       
            </table>
           </div>
     </div>
    </div>
         </form>
 
</body>
  
</html>