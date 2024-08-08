<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPageOfAdmin1.master" AutoEventWireup="false" CodeFile="DispUser.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [user_mstr]"></asp:SqlDataSource>
<div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header"><i class="fa fa-table"></i> Data Exporting</div>
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>User Id</th>
                        <th>User Name</th>
                  
                        <th>User Email</th>
                        <th>User Contact</th>

                       
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
                     <tr>
                        <td><%# Eval("uid")%></td>
                        <td><%# Eval("uname")%></td>
                        <td><%# Eval("email")%></td>
                     
                        <td><%#  Eval("contact")%></td>
                       
                    </tr>
                    </ItemTemplate>
                    </asp:Repeater>
                   
                  
                </tbody>
                <tfoot>
                    <tr>
                       <th>User Id</th>
                        <th>User Name</th>
                  
                        <th>User Email</th>
                        <th>User Contact</th>
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

