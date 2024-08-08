<%@ Page Title="" Language="VB" MasterPageFile="~/Vendor/MasterPageOfVenderProfile.master" AutoEventWireup="false" CodeFile="VGallery.aspx.vb" Inherits="Vendor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="dashboard-page-header">
                            <h3 class="dashboard-page-title">Add New Listing</h3>
                            <p>Lists present multiple line items vertically as a single continuous element.</p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header"> <h4 class="mb0">About Listing</h4></div>
                    <div class="">
                        <form id="Form1" runat ="server" >
                            <!-- Form Name -->
                            <div class="venue-form-info card-body">
                                <div class="row">
                                   
                                    <!-- Text input-->
                                    
                                    <asp:FileUpload ID="FileUpload1" runat="server" />

                                    

                                   
                                    

                                                                        
                                 
                                  
                                </div>
                            </div>
                            
                           
                           
                           
                            <div class="social-form-info card-body border-top">
                                <div class="row">
                                 
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <asp:Button ID="btn_vInsert" runat="server" Text="INSERT" class="btn btn-default" />
                                       <%-- <button class="btn btn-default" type="submit">Submit New Item</button>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label1" runat="server" class="control-label"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
</asp:Content>

