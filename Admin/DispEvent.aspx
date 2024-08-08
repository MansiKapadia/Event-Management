<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPageOfAdmin1.master" AutoEventWireup="false" CodeFile="DispEvent.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [category_mstr]"></asp:SqlDataSource>
<div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header"><i class="fa fa-table"></i> Data Exporting</div>
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>CATEGORY ID</th>
                         <th>CATEGORY IMAGE</th>
                        <th>CATEGORY NAME</th>
                  
                        <th>CATEGORY DESC</th>
                       
                       
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
                     <tr>
                        <td><%# Eval("catid")%></td>
                         <td><img src='../PImage/<%#  Eval("catimage")%>' height="150" width="150"/></td>
                        <td><%# Eval("catname")%></td>
                        <td><%# Eval("catdesc")%></td>
                     
                        
                       
                    </tr>
                    </ItemTemplate>
                    </asp:Repeater>
                   
                  
                </tbody>
                <tfoot>
                    <tr>
                       <th>CATEGORY ID</th>
                         <th>CATEGORY IMAGE</th>
                        <th>CATEGORY NAME</th>
                        
                        <th>CATEGORY DESC</th>
                       
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

