<%@ Page Title="" Language="VB" MasterPageFile="~/Vendor/MasterPageOfVenderProfile.master" AutoEventWireup="false" CodeFile="Dashboard.aspx.vb" Inherits="Vendor_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <div class="row">
                    <div class="col-xl-12 col-lg-10 col-md-9 col-sm-12 col-12">
                        <div class="dashboard-page-header">

                            <h3 class="dashboard-page-title">Hi, Vendor.</h3>
                            <p class="d-block">Here’s what’s happening with your Business.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
                        <div class="card card-summary">
                            <div class="card-body">
                                <div class="float-left">
                                <div class="summary-count">
                                    <asp:Label ID="lblcategory" runat="server" Text="Label"></asp:Label></div>
                                <p>Total Listed Item</p>
                            </div>
                                  <div class="summary-icon"><i class="icon-051-wedding-arch"></i></div>

                            </div>
                              <div class="card-footer text-center"><a href="../User/Home.aspx">View All</a></div>
                           
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
                        <div class="card card-summary">
                            <div class="card-body">
                                <div class="float-left">
                                <div class="summary-count">
                                    <asp:Label ID="lblreq" runat="server" Text="Label"></asp:Label></div>
                                <p>Request Quote</p>
                            </div>
                                  <div class="summary-icon"><i class="icon-021-love-1"></i></div>
                            </div>
                            <div class="card-footer text-center"><a href="RequestQuote.aspx">View All</a></div>
                        </div>
                    </div>
                    
                </div>
</asp:Content>

