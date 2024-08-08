<%@ Page Title="" Language="VB" MasterPageFile="~/Vendor/MasterPageOfVenderProfile.master" AutoEventWireup="false" CodeFile="VendorProfile.aspx.vb" Inherits="Vendor_Default" %>

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
                        <form runat ="server" >
                            <!-- Form Name -->
                            <div class="venue-form-info card-body">
                                <div class="row">
                                   
                                    <!-- Text input-->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="title">Vendor's Name :</label>
                                            <%--<input id="title" name="title" type="text" placeholder="Title" class="form-control ">--%>
                                            <asp:TextBox ID="txtvname" runat="server" placeholder="Vendor's name" class="form-control"></asp:TextBox>


                                        </div>
                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <!-- Select Basic -->
                                        <div class="form-group">
                                            <label class="control-label" for="Category">Category</label>
                                         
                                            <asp:DropDownList ID="ddlcat" runat="server" class="wide" 
                                                DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="catid">
                                               

                                            </asp:DropDownList>

                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [category_mstr]"></asp:SqlDataSource>

                                        </div>
                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="seat">Vendor's Email : </label>
                                            <%--<input id="seat" name="seat" type="number" placeholder="e.g. 50" class="form-control ">--%>
                                            <asp:TextBox ID="txtvmail" runat="server" placeholder="vendor email" class="form-control "></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="price">Price <small>(Start From)</small></label>
                                            <%--<input id="price" name="price" type="text" placeholder="Price" class="form-control ">--%>
                                            <asp:TextBox ID="txtprice" runat="server" placeholder="Price" class="form-control "></asp:TextBox>
                                        </div>
                                    </div>
                                  <%--  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="address">Address </label>
                                            <asp:TextBox ID="txtaddress" runat="server" placeholder="Street address" class="form-control "></asp:TextBox>
                                            <input id="address" name="address" type="text" placeholder="Street address" class="form-control ">
                                        </div>
                                    </div>--%>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="city">City</label>
                                           
                                            <asp:DropDownList ID="ddlcity" runat="server" class="wide">
                                               
                                                            <asp:ListItem>SURAT</asp:ListItem>
                                                            <asp:ListItem>PUNE</asp:ListItem>
                                                            <asp:ListItem>AMRISTAR</asp:ListItem>
                                                            <asp:ListItem>SINGTAM</asp:ListItem>
                                                            <asp:ListItem>KOCHI</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="postcode">Vendor's Contact</label>
                                            <%--<input id="postcode" name="postcode" type="text" placeholder="" class="form-control">--%>
                                            <asp:TextBox ID="txtvcontact" runat="server" placeholder="vendor's contact" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <!-- Select Basic -->
                                        <div class="form-group">
                                            <label class="control-label" for="state">Select State</label>
                                           
                                            <asp:DropDownList ID="ddlstate" runat="server" class="wide">
                                              <asp:ListItem>GUJARAT</asp:ListItem>
                                                            <asp:ListItem>MUMBAI</asp:ListItem>
                                                            <asp:ListItem>PUNJAB</asp:ListItem>
                                                            <asp:ListItem>SIKKIM</asp:ListItem>
                                                            <asp:ListItem>KERALA</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                 
                                  
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

