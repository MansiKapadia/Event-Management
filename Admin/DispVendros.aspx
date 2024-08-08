<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPageOfAdmin1.master" AutoEventWireup="false" CodeFile="DispVendros.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [vendor_mstr]"></asp:SqlDataSource>
<div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header"><i class="fa fa-table"></i> Data Exporting</div>
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>Vendor  ID</th>
                        <th>Vendor NAME</th>
                        <th>Vendor Mail</th>
                        <th>Mobile No</th>
                        <th>Category</th>
                        <th>State</th>
                        <th>City</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
                     <tr>
                        <td><%# Eval("vid")%></td>
                       <td><%# Eval("vname")%></td>
                       <td><%# Eval("vmail")%></td>
                         <td><%# Eval("vcontact")%></td>
                         <td><%# Eval("catid")%></td>
                         <td><%# Eval("state")%></td>
                         <td><%# Eval("city")%></td>
                    </tr>
                    </ItemTemplate>
                    </asp:Repeater>
                   
                  
                </tbody>
                <tfoot>
                    <tr>
                        <th>Vendor  ID</th>
                        <th>Vendor NAME</th>
                        <th>Vendor Mail</th>
                        <th>Mobile No</th>
                        <th>Category</th>
                        <th>State</th>
                        <th>City</th>
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

