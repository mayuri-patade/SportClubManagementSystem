<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="coachinfo.aspx.cs" Inherits="Admin_pages_coachinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>    <script src="Script/JScript.js"></script></head>
      <body>
          <form>
                <div id="divcoach">
         <br />
                    <br />
    <table align="center" style="border:1px solid black; padding:15px; height: 291px; width: 726px;
 background-image:url('images/1.jpg'); background-repeat:no-repeat;background-position:center;background-size:cover;
">
        <tr>
            <td  style="color:black;align:center;" class="auto-style1">Coach Name</td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox></td>
            <td>         <asp:RequiredFieldValidator ID="rfvcname" runat="server" ErrorMessage="Coach name is required" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Coach name is required">Field Can not be blank</asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td  style="color:black; align-content:center;" class="auto-style1">Coach Address</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox></td>
       <td>         <asp:RequiredFieldValidator ID="rfvcaddress" runat="server" ErrorMessage="Coach address is required" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Coach address is required">Field Can not be blank</asp:RequiredFieldValidator>
               </td> </tr>
        <tr>
            <td  style="color:black; align-content:center;" class="auto-style1">EmailID</td>
            <td><asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox></td>
        <td>         <asp:RequiredFieldValidator ID="rfvcemailid" runat="server" ErrorMessage="Emailid is required" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Emailid is required">Field Can not be blank</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Enter Valid Email id</asp:RegularExpressionValidator>
               </td></tr>
        <tr>
            <td  style="color:black; align-content:center;" class="auto-style1">Contact No</td>
            <td ><asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox></td>
<td>         <asp:RequiredFieldValidator ID="rfvccontactno" runat="server" ErrorMessage="Required" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip=" Required">Field Can not be blank</asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Text="Enter Valid Number" ForeColor="Red" Display="Dynamic" ErrorMessage="Enter Valid Number" ValidationExpression="[0-9]{10}" SetFocusOnError="True" ToolTip="Enter Valid Number"></asp:RegularExpressionValidator>
               </td>
        </tr>
         <tr>
            <td  style="color:black; align-content:center;" class="auto-style1">Education</td>
            <td><asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox></td>
<td>         <asp:RequiredFieldValidator ID="rfvceducation" runat="server" ErrorMessage="Required" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Required">Field Can not be blank</asp:RequiredFieldValidator>
               </td>
        </tr>
         <tr>
            <td  style="color:black; align-content:center;" class="auto-style1">Experiance</td>
            <td><asp:TextBox ID="TextBox6" runat="server" Width="199px"></asp:TextBox></td>
<td>         <asp:RequiredFieldValidator ID="rfvcexp" runat="server" ErrorMessage="required" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip=" required">Field Can not be blank</asp:RequiredFieldValidator>
               </td>
        </tr>
       <tr>
            <td style="color:black; align-content:center;" class="auto-style1">Salary</td>
            <td ><asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox></td>
<td>         <asp:RequiredFieldValidator ID="rfvcsal" runat="server" ErrorMessage="mandatory" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="mandatory">Field Can not be blank</asp:RequiredFieldValidator>
               </td>
       </tr>
         <tr>
            <td  style="color:black; align-content:center;" class="auto-style1">Game</td>
            <td>
                <asp:DropDownList ID="ddl2" runat="server" >
                           <asp:ListItem Value="0">Select Games</asp:ListItem>
                        </asp:DropDownList></td>

       </tr>
        <tr><td>
            <asp:Button ID="ADD" runat="server" Text="Add" OnClick="ADD_Click" Width="69px" />
               
                   &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
               
                   </td> </tr>
        <tr><td>
            <asp:Label ID="lbl2" runat="server" Text=""></asp:Label>
            </td></tr>
       
        
    </table>
        </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCMDBConnectionString %>" SelectCommand="SELECT cid, cname, caddress, ceducation, cexperience, csalary, gamename, cemailid, ccontactno FROM coach" DeleteCommand="DELETE FROM coach WHERE (cid = @cid)" ProviderName="System.Data.SqlClient" InsertCommand="INSERT INTO coach(cname, caddress, ceducation, cexperience, csalary, gamename, cemailid, ccontactno) VALUES (@cname, @caddress, @ceducation, @cexperience, @csalary, @gamename, @cemailid, @ccontactno)" UpdateCommand="UPDATE coach SET caddress = @caddress, ceducation = @ceducation, cexperience = @cexperience, csalary = @csalary, gamename = @gamename, cemailid = @cemailid, ccontactno = @ccontactno WHERE (cname = @cname)">
            <DeleteParameters>
                <asp:Parameter Name="cid" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cname" />
                <asp:Parameter Name="caddress" />
                <asp:Parameter Name="ceducation" />
                <asp:Parameter Name="cexperience" />
                <asp:Parameter Name="csalary" />
                <asp:Parameter Name="gamename" />
                <asp:Parameter Name="cemailid" />
                <asp:Parameter Name="ccontactno" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="caddress" />
                <asp:Parameter Name="ceducation" />
                <asp:Parameter Name="cexperience" />
                <asp:Parameter Name="csalary" />
                <asp:Parameter Name="gamename" />
                <asp:Parameter Name="cemailid" />
                <asp:Parameter Name="ccontactno" />
                <asp:Parameter Name="cname" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gvcoachinfo" align="center" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" CellPadding="4"  AllowPaging="True"  DataSourceID="SqlDataSource1" ForeColor="#333333" Font-Bold="True">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="cid" HeaderText="cid" ReadOnly="True" SortExpression="cid" />
                   <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                   <asp:BoundField DataField="caddress" HeaderText="caddress" SortExpression="caddress" />
                   <asp:BoundField DataField="ceducation" HeaderText="ceducation" SortExpression="ceducation" />
                   <asp:BoundField DataField="cexperience" HeaderText="cexperience" SortExpression="cexperience" />
                   <asp:BoundField DataField="csalary" HeaderText="csalary" SortExpression="csalary" />
                   <asp:BoundField DataField="gamename" HeaderText="gamename" SortExpression="gamename" />
                   <asp:BoundField DataField="cemailid" HeaderText="cemailid" SortExpression="cemailid" />
                   <asp:BoundField DataField="ccontactno" HeaderText="ccontactno" SortExpression="ccontactno" />
                   
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

        <br />
        <br />
        <br />
        <br />

  </div>
    </form>
</body>

 </html>

</asp:Content>




