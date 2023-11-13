<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="StudentDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><html>
  <body>
          <form>
    <div>
        
        <asp:GridView ID="gvStudent" runat="server"  ForeColor="#333333" Font-Bold="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Sid" AllowPaging="True" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" ReadOnly="True" SortExpression="Sid" />
                <asp:BoundField DataField="SFname" HeaderText="SFname" SortExpression="SFname" />
                <asp:BoundField DataField="SLname" HeaderText="SLname" SortExpression="SLname" />
                <asp:BoundField DataField="Saddress" HeaderText="Saddress" SortExpression="Saddress" />
                <asp:BoundField DataField="Sdob" HeaderText="Sdob" SortExpression="Sdob" />
                <asp:BoundField DataField="SSchoolCollege" HeaderText="SSchoolCollege" SortExpression="SSchoolCollege" />
                <asp:BoundField DataField="Scontactno" HeaderText="Scontactno" SortExpression="Scontactno" />
                <asp:BoundField DataField="gamename" HeaderText="gamename" SortExpression="gameid" />
                <asp:BoundField DataField="Semailid" HeaderText="Semailid" SortExpression="Semailid" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-9F882SJ;Initial Catalog=SCMDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Student]" DeleteCommand="DELETE FROM Student WHERE (Sid = @Sid)" InsertCommand="INSERT INTO Student(SFname, SLname, Saddress, Sdob, SSchoolCollege, Scontactno, gamename, Semailid, username, password) VALUES (@SFname, @SLname, @Saddress, @Sdob, @SSchoolCollege, @Scontactno, @gamename, @Semailid, @username, @password)" UpdateCommand="UPDATE Student SET SFname = @SFname, SLname = @SLname, Saddress = @Saddress, Sdob = @Sdob, SSchoolCollege = @SSchoolCollege, Scontactno = @Scontactno, gamename = @gamename, Semailid = @Semailid, username = @username, password = @password WHERE (Sid = @Sid)">
            <DeleteParameters>
                <asp:Parameter Name="Sid" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SFname" />
                <asp:Parameter Name="SLname" />
                <asp:Parameter Name="Saddress" />
                <asp:Parameter Name="Sdob" />
                <asp:Parameter Name="SSchoolCollege" />
                <asp:Parameter Name="Scontactno" />
                <asp:Parameter Name="gamename" />
                <asp:Parameter Name="Semailid" />
                <asp:Parameter Name="username" />
                <asp:Parameter Name="password" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SFname" />
                <asp:Parameter Name="SLname" />
                <asp:Parameter Name="Saddress" />
                <asp:Parameter Name="Sdob" />
                <asp:Parameter Name="SSchoolCollege" />
                <asp:Parameter Name="Scontactno" />
                <asp:Parameter Name="gamename" />
                <asp:Parameter Name="Semailid" />
                <asp:Parameter Name="username" />
                <asp:Parameter Name="password" />
                <asp:Parameter Name="Sid" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div id="divStudentForm" runat="server">


                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           <table align="center" style="border:1px solid black; padding:15px; height: 291px; width: 726px;
 background-image:url('images/1.jpg'); background-repeat:no-repeat;background-position:center;background-size:cover; margin-top: 2px;">
                 <tr>
                    <td style="color:black;">FirstName</td>
                    <td>
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
                     <td><asp:RequiredFieldValidator ID="rfvfname" runat="server" ErrorMessage="First name is required" ControlToValidate="txtfname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="First name is required">Field Can not be blank</asp:RequiredFieldValidator></td>
                    
                </tr>
                <tr>
                    <td  style="color:black;">LastName</td>
                    <td>
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvlname" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Last name is required" ForeColor="Red" SetFocusOnError="True" ToolTip="Last name is required">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td  style="color:black;">UserName</td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvusername" runat="server" ErrorMessage="UserName is required" ControlToValidate="txtusername" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="UserName is required ">Field Can not be blank</asp:RequiredFieldValidator></td> </tr>
                <tr>
                    <td  style="color:black;">Password</td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="Password is mandatory" ControlToValidate="txtpassword" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Password is mandatory">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr><td  style="color:black;">Confirm Password</td><td>
                    <asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password and confirm password do not match" Display="Dynamic" Text="password and confirm password do not match" ForeColor="Red" SetFocusOnError="True" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpass" ToolTip="password do not match"></asp:CompareValidator><asp:RequiredFieldValidator ID="rfvpasswordcon" runat="server" ErrorMessage="Password is mandatory" ControlToValidate="txtconfirmpass" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Password is mandatory">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td  style="color:black;">Address</td>
                    <td>
                        <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator ID="rfvaddress" runat="server" ErrorMessage="Address can't be left blank" ControlToValidate="txtaddress" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Address can't be left blank">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td  style="color:black;">School/College Name</td>
                    <td>
                        <asp:TextBox ID="txtschool" runat="server"></asp:TextBox></td>
                   <td><asp:RequiredFieldValidator ID="rfvschool" runat="server" ErrorMessage="Required" ControlToValidate="txtschool" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Required">Field Can not be blank</asp:RequiredFieldValidator></td> </tr>
                <tr>
                    <td  style="color:black;">Date of Birth</td>
                  
                    <td>
<asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
<asp:ImageButton ID="imgPopup2" ImageUrl="~/images/calendar.jpg" ImageAlign="Bottom" runat="server" />
<ajaxtoolkit:calendarextender ID="Calendar4" PopupButtonID="imgPopup2" runat="server" TargetControlID="txtdob" Format="dd/MM/yyyy">
</ajaxtoolkit:calendarextender>
                       </td>
                <td><asp:RequiredFieldValidator ID="rfvdob" runat="server" ErrorMessage="it is mandatory" ControlToValidate="txtdob" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="It is mandatory">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td  style="color:black;">ContactNo.</td>
                    <td>
                        <asp:TextBox ID="txtcontact" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" Text="Enter Valid Number" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Valid Number" ValidationExpression="[0-9]{10}" SetFocusOnError="True" ToolTip="Enter Valid Number"></asp:RegularExpressionValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcontact" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" SetFocusOnError="True" ToolTip="Required">Field Can not be blank</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td  style="color:black;">Email ID</td>
                    <td>
                        <asp:TextBox ID="txtemailid" runat="server" TextMode="Email"></asp:TextBox>
                    </td><td>  <asp:RequiredFieldValidator ID="rfvemailid" runat="server" ErrorMessage="Required" ControlToValidate="txtemailid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Required">Field Can not be blank</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemailid" ErrorMessage="InvalidEmail id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Enter Valid Emailid</asp:RegularExpressionValidator>
                    </td>
                    </tr>
                
                <tr>
                    <td  style="color:black;">Game</td>
                   
                     
                        <td class="auto-style1">
                        <asp:DropDownList ID="ddl_games" runat="server" >
                           <asp:ListItem Value="0">Select Games</asp:ListItem>
                        </asp:DropDownList>
                           
                    </td>

                   

                </tr>
                <tr>
                    <td  style="color:black;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        </td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save"  OnClick="btnSave_Click" Width="76px" />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
   </td>
                </tr>
            </table>
    </div>
    </form>
</body>

 </html></asp:Content>