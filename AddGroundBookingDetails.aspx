<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddGroundBookingDetails.aspx.cs" Inherits="AddGroundBookingDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %> 

 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><html>
  <body>
          <form>
    <div>
         <asp:GridView ID="gvGround" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Bookingid" DataSourceID="SqlDataSource1" ForeColor="#333333" AllowPaging="True" Font-Bold="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Bookingid" HeaderText="Bookingid" InsertVisible="False" ReadOnly="True" SortExpression="Bookingid" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
            <asp:BoundField DataField="Contactno" HeaderText="Contactno" SortExpression="Contactno" />
            <asp:BoundField DataField="BookingdateFrom" HeaderText="BookingdateFrom" SortExpression="BookingdateFrom" />
            <asp:BoundField DataField="BookingdateTo" HeaderText="BookingdateTo" SortExpression="BookingdateTo" />
            <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
            <asp:CommandField ShowDeleteButton="True" />
            
        </Columns>
      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-9F882SJ;Initial Catalog=SCMDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [GroundBooking]" DeleteCommand="DELETE FROM GroundBooking WHERE (Bookingid = @Bookingid)" InsertCommand="INSERT INTO GroundBooking(Name, Address, Emailid, Contactno, BookingdateFrom, BookingdateTo, Purpose) VALUES (@Name, @Address, @Emailid, @Contactno, @BookingdateFrom, @BookingdateTo, @Purpose)" UpdateCommand="UPDATE GroundBooking SET Address = @Address, Emailid = @Emailid, Contactno = @Contactno, BookingdateFrom = @BookingdateFrom, BookingdateTo = @BookingdateTo, Purpose = @Purpose WHERE (Name = @Name)">
        <DeleteParameters>
            <asp:Parameter Name="Bookingid" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="Address" />
            <asp:Parameter Name="Emailid" />
            <asp:Parameter Name="Contactno" />
            <asp:Parameter Name="BookingdateFrom" />
            <asp:Parameter Name="BookingdateTo" />
            <asp:Parameter Name="Purpose" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Address" />
            <asp:Parameter Name="Emailid" />
            <asp:Parameter Name="Contactno" />
            <asp:Parameter Name="BookingdateFrom" />
            <asp:Parameter Name="BookingdateTo" />
            <asp:Parameter Name="Purpose" />
            <asp:Parameter Name="Name" />
        </UpdateParameters>
    </asp:SqlDataSource>
 <h1 style="color:white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ground Booking Form</h1>
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 
     <div id="divGroundForm" runat="server">
<table align="center" style="border:1px solid black; padding:15px; height: 150px; width: 400px;
 background-image:url('images/1.jpg'); background-repeat:no-repeat;background-position:center;background-size:cover;
"><tr>
           <td height="35" align="center" class="auto-style2" style="background-image: url('http://localhost:59320/images/38.jpg'); font-family: 'Times New Roman', Times, serif; font-size: large; font-style: normal; font-variant: normal; color: Teal; font-weight: bold">Day</td>

                  <td align="center" class="auto-style3" style="background-image: url('http://localhost:59320/images/38.jpg'); font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-variant: normal; font-style: normal; text-transform: none; color: Teal">Rent</td>


              </tr>
           <tr>

                        <td height="30" align="center" class="auto-style2" style="color:black; font-weight: bold">1</td>

                        <td height="30" align="center" class="auto-style3" style="color:black; font-weight: bolder">1500/-</td>

                        

                      </tr>
           <tr>

                        <td height="30" align="center" class="auto-style2" style="color: black; font-weight: bold">2</td>

                        <td height="30" align="center" class="auto-style3" style="color: black; font-weight: bolder">2500/-</td>

                        

                      </tr>

           <tr>

                        <td height="30" align="center" class="auto-style2" style="color: black; font-weight: bold">7</td>

                        <td height="30" align="center" class="auto-style3" style="color: black; font-weight: bolder">6000/-</td>

                        

                      </tr>


       </table>
          
        
  <table align="center" style="border:1px solid black; padding:15px; height: 150px; width: 400px;
 background-image:url('images/1.jpg'); background-repeat:no-repeat;background-position:center;background-size:cover;
">  
            <tr>
                <td style="color: black">Name</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td>
                    <asp:TextBox ID="Textname" runat="server" Height="25px" Width="151px"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="Name is required" ControlToValidate="Textname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Name is required">Field Can not be blank</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="color: black">
        <br />
        <br />
        Address</td>
                <td>
                    <asp:TextBox ID="TextAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
              <td><asp:RequiredFieldValidator ID="rfvAddress" runat="server" Display="Dynamic" ErrorMessage="Address is required" Text="Field Can not be blank" ForeColor="Red" ControlToValidate="TextAddress" SetFocusOnError="True" ToolTip="Address is Required"></asp:RequiredFieldValidator></td>  
            </tr>
            <tr>
                <td style="color: black">
        <br />
        <br />
        ContactNo</td>
                <td><asp:TextBox ID="TextContactNo" runat="server" Height="26px" Width="150px"></asp:TextBox>  </td>
                <td><asp:RequiredFieldValidator ID="rfvcontact1" runat="server" Display="Dynamic" ErrorMessage="Required" Text="Field Can not be blank" ForeColor="Red" ControlToValidate="TextContactNo" SetFocusOnError="True" ToolTip="Required"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="rfvcontact" runat="server" ControlToValidate="TextContactNo" Text="Enter Valid Number" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Valid Number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></td>
                  </tr>  

             <tr>
                <td style="color: black">
        <br />
        <br />
        EmailID</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td>
                    <asp:TextBox runat="server" ID="TextEmailId" Height="25px" Width="150px"></asp:TextBox></td>
      <td><asp:RegularExpressionValidator ID="REVEmailId" runat="server" ErrorMessge="Invalid Email ID" ControlToValidate="TextEmailId" Display="Dynamic" ForeColor="Red" ToolTip="Invalid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True" Text="Enter Valid Emailid" ErrorMessage="InvalidEmailId"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="rfvemailid1" runat="server" Display="Dynamic" ErrorMessage="Required emailid" Text="Field Can not be blank" ForeColor="Red" ControlToValidate="TextEmailId" SetFocusOnError="True" ToolTip=" Required"></asp:RequiredFieldValidator></td>          
            </tr>
            <tr>
                <td style="color: black" class="auto-style4">
        Purpose</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <td class="auto-style4">
                    <asp:TextBox ID="TextPurpose" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvPurpose" runat="server" ErrorMessage="Purpoe is required" ControlToValidate="TextPurpose" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Purpose is required">Field Can not be blank</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="color: black">
        BookingDateFrom</td>&nbsp;&nbsp;
                <td>
                    <asp:TextBox ID="TextBookingDateFrom" runat="server" Height="24px" Width="150px"></asp:TextBox>
                    <asp:ImageButton ID="imgPopup" ImageUrl="~/images/calendar.jpg" ImageAlign="Bottom" runat="server" style="height: 16px" />
<ajaxToolkit:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="TextBookingDateFrom" Format="yyyy/MM/dd">
</ajaxToolkit:CalendarExtender>  </td>
             <td><asp:RequiredFieldValidator ID="rfvBookingDateFrom" runat="server" ErrorMessage="Booking Date is Mandatory" ControlToValidate="TextBookingDateFrom" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Booking Date is Mandatory">Field Can not be blank</asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td style="color: black">
        BookingDateTo</td>&nbsp;&nbsp;   <td>
                    <asp:TextBox ID="TextBookingDateTo" runat="server" Height="24px" Width="150px"></asp:TextBox>
                    <asp:ImageButton ID="ImagePopup" ImageUrl="~/images/calendar.jpg" ImageAlign="Bottom" runat="server" />
<ajaxToolkit:CalendarExtender ID="Calendar2" PopupButtonID="ImagePopup" runat="server" TargetControlID="TextBookingDateTo" Format="yyyy/MM/dd" BehaviorID="Calendar2">
</ajaxToolkit:CalendarExtender>  </td>
             
                 <td><asp:RequiredFieldValidator ID="rfvBookingDateTo" runat="server" ErrorMessage="Booking Date is Mandatory" ControlToValidate="TextBookingDateTo" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Booking Date is Mandatory">Field Can not be blank</asp:RequiredFieldValidator></td>
                 </tr>
            
            <tr>
                <td>
                    
                    <br />
                    
                    <asp:Button ID="ButtonSnd" runat="server" Text="Add" Height="35px" Width="100px" OnClick="ButtonSnd_Click" />&nbsp;&nbsp;
                    <br />
                </td>
                <td>
                    <br />
                    <asp:Button ID="btnUpdate" runat="server" Height="35px" OnClick="btnUpdate_Click" Text="Update" Width="100px" />
                </td>
               
            </tr>
            <tr><td><asp:Label ID="Lbl2" runat="server" ForeColor="White"></asp:Label>
                </td></tr>
            
        </table>   
     </div>
    </form>
</body>

 </html></asp:Content>