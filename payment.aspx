<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center><table style="height:500px;width:50%"><tr><td>
    <asp:Label ID="Label9" runat="server" Text="Fees Amount"></asp:Label>
    </td><td>
        <asp:DropDownList ID="ddl0" runat="server">
            <asp:ListItem>1500</asp:ListItem>
            <asp:ListItem>2500</asp:ListItem>
            <asp:ListItem>6000</asp:ListItem>
        </asp:DropDownList>
    </td></tr>
<tr style="height:20px">
<td style="width:20%">
    <asp:Label ID="Label1" runat="server" Text="Select Bank :"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="ddl1" runat="server" >
        <asp:ListItem>Bank of India</asp:ListItem>
        <asp:ListItem>HDFC</asp:ListItem>
        <asp:ListItem>North Canara Bank</asp:ListItem>
        <asp:ListItem>State Bank of India</asp:ListItem>
        <asp:ListItem>ICICI</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr style="height:10px; background-color: #808080;">
<td>
    <asp:Label ID="Label2" runat="server" Text="Payment Information" 
        Font-Bold="True" ForeColor="White"></asp:Label></td>
<td></td>
</tr>
<tr style="height:10px">
<td>
    <asp:Label ID="Label3" runat="server" Text="Card Details" Font-Bold="True" 
        Font-Italic="True"></asp:Label></td>
<td></td>
</tr>
<tr>
<td>
    <asp:Label ID="Label4" runat="server" Text="Card Number"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="cnrfv" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="Card number is required">Field Can not be blank</asp:RequiredFieldValidator></td>               
</tr>
<tr>
<td>
    <asp:Label ID="Label5" runat="server" Text="CVV"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="cvvrfv" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="cvv is required">Field Can not be blank</asp:RequiredFieldValidator></td>
                
</tr>
<tr>
<td>
    <asp:Label ID="Label6" runat="server" Text="Expiry Date"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox4" runat="server" Width="27px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" Width="56px"></asp:TextBox>
<td><asp:RequiredFieldValidator ID="edrfv" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="expiry date is required">Field Can not be blank</asp:RequiredFieldValidator></td>
     </td>
</tr>
<tr>
<td>
    <asp:Label ID="Label7" runat="server" Text="Card Holder's Name"></asp:Label></td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="chnrfv" runat="server" ErrorMessage="Field Can not be blank" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ToolTip="name is required">Field Can not be blank</asp:RequiredFieldValidator></td>
     
</tr>
<tr>
<td></td>
<td>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server"></asp:Label>
    </td>
</tr>
</table></center>
</asp:Content>

