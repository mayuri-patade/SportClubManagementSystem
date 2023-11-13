<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="Admin_pages_ViewFeedback" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>    <script src="Script/JScript.js"></script></head>  <body>
          <form>
              <div><asp:GridView ID="gvfeedback" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="feedbackid" DataSourceID="SqlDataSource1" ForeColor="#333333" Font-Bold="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="feedbackid" HeaderText="feedbackid" InsertVisible="False" ReadOnly="True" SortExpression="feedbackid" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
           
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCMDBConnectionString %>" SelectCommand="SELECT * FROM [feedback]" DeleteCommand="DELETE FROM feedback WHERE (feedbackid = @feedbackid)" ProviderName="System.Data.SqlClient">
        <DeleteParameters>
            <asp:Parameter Name="feedbackid" />
        </DeleteParameters>
    </asp:SqlDataSource>
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
  </div>
    </form>
</body>

 </html>

</asp:Content>

