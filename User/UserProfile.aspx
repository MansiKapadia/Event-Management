<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageOfUserProfile.master" AutoEventWireup="false" CodeFile="UserProfile.aspx.vb" Inherits="User_Default2" %>

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
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="title">User's Name :</label>
                                            <%--<input id="title" name="title" type="text" placeholder="Title" class="form-control ">--%>
                                            <asp:TextBox ID="txtuname" runat="server" placeholder="User's name" class="form-control"></asp:TextBox>


                                        </div>
                                    </div>

                                   

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="seat">User's Email : </label>
                                            <%--<input id="seat" name="seat" type="number" placeholder="e.g. 50" class="form-control ">--%>
                                            <asp:TextBox ID="txtumail" runat="server" placeholder="User email" class="form-control "></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="price">User's Contact <small></small></label>
                                            <%--<input id="price" name="price" type="text" placeholder="Price" class="form-control ">--%>
                                            <asp:TextBox ID="txtucontact" runat="server" placeholder="User's contact" class="form-control "></asp:TextBox>
                                        </div>
                                    </div>
                                
                                  

                            <%--  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="postcode">Vendor's PassWord</label>
                                            
                                            <asp:TextBox ID="txtupassword" runat="server" placeholder="User's password" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>--%>
                                   
                              
                                  
                                </div>
                            </div>
                            
                           
                           
                           
                            <div class="social-form-info card-body border-top">
                                <div class="row">
                                 
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <asp:Button ID="btn_vUpdate" runat="server" Text="UPDATE" class="btn btn-default" />
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

