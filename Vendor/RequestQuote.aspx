<%@ Page Title="" Language="VB" MasterPageFile="~/Vendor/MasterPageOfVenderProfile.master" AutoEventWireup="false" CodeFile="~/Vendor/RequestQuote.aspx.vb" Inherits="Vendor_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="dashboard-page-header">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h3 class="dashboard-page-title">Request List</h3>
                                    <p>Check your request quote.</p>
                                </div>
                            </div>
                        </div>
                       

                        <div class="card request-list-table table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Wedding Date</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Comment</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="requester-name"><%#Eval("Name") %></td>
                                                <td class="wedding-date"><%#Eval("bookDate") %></td>
                                                <td class="requester-id"><%#Eval("email") %></td>
                                                <td class="requester-phone"><%#Eval("mobno") %></td>
                                                <td class="requester-phone"><%#Eval("comment") %></td>
                                                <td class="requester-action"><a href='deletequote.aspx?rqid=<%#Eval("rqid") %>' class="btn btn-outline-pink btn-xs ">delete</a></td>
                                            </tr>
                                        </ItemTemplate>

                                    </asp:Repeater>



                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Request_Quote] WHERE ([Vid] = @Vid)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="vid" Name="Vid" Type="Int32"></asp:SessionParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
</asp:Content>

