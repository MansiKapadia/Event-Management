<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPageOfAdmin1.master" AutoEventWireup="false" CodeFile="DispQuote.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <form id="form1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Request_quote]"></asp:SqlDataSource>
<div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header"><i class="fa fa-table"></i> Data Exporting</div>
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>RQid</th>
                        <th>Vid</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Date</th>
                        <th>Comment</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
                     <tr>
                        <td><%# Eval("Rqid")%></td>
                        <td><%# Eval("vid")%></td>
                       <td><%# Eval("Name")%></td>
                         <td><%# Eval("Email")%></td>
                         <td><%# Eval("Mobno")%></td>
                         <td><%# Eval("bookDate")%></td>
                         <td><%# Eval("comment")%></td>
                    </tr>
                    </ItemTemplate>
                    </asp:Repeater>
                   
                  
                </tbody>
                <tfoot>
                    <tr>
                       <th>RQid</th>
                        <th>Vid</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Date</th>
                        <th>Comment</th>
                    </tr>
                </tfoot>
            </table>
            </div>
            </div>
          </div>
        </div>
      </div><!-- End Row-->
    </form>
</asp:Content>

