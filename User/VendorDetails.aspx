<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageOfUser1.master" AutoEventWireup="false" CodeFile="VendorDetails.aspx.vb" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="list-single-carousel">
        <div class="owl-carousel owl-theme owl-second">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="item">
                        <img src='../Gallery/<%#Eval("gname") %>' alt="">
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [gallery_mstr] WHERE ([vid] = @vid)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="vid" Name="vid" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

    



    <div class="vendor-content-wrapper">
        <div class="container">
            <div class="row">
                               
                    <div class="col-xl-8 col-lg-8 col-md-7 col-sm-12 col-12">
                    <!--vendor-details -->
                   
                    <div class="">
                        <div class="card border card-shadow-none">
                            <h3 class="card-header bg-white">About Wedding Venue</h3>
                            <div class="card-body">
                                <!--/.vendor-details -->
                                <!--vendor-description -->
                                <p class="lead">Duis vulputate ultrices odio, vitae tristique lectus dapibus sit amet. Vivamus iaculis sagittis libero, at mollis ante semper eu. </p>
                                <p>Duis vulputate ultrices odio, vitae tristique lectus dapibus sit amet. Vivamus iaculis sagittis lisus libero, a aliquet odio pretium non. Curabitur at porta ex, eu pretium felis. Fusce mattis efficitur nisi, non pretium nulla luctus sit amet. </p>
                                <p>Etiam varius ultricies augue, in ornare lorem congue eu. Aliquam magna metus, rhoncus a pellentesque tincidunt, accumsan ut urna. Sed congue turpis sit amet urna interdum, ut consequat dolor rhoncus</p>
                                <h4>Sub heading </h4>
                                <p>Etiam placerat dictum dolor ac volutpat. Cras egestas laoreet risus id elementum. Etiam ultrices vitae dui ut finibus. In ac rhoncus mauris, aliquet efficitur erat. Sed laoreet luctus tellus vel porttitor. Aliquam non tellus in eros congue fermentum. Nulla tincidunt volutpat ligula, non rutrum lectus luctus quis.</p>
                                <p>Donec accumsan consequat massa non gravida.<span class="text-default">Morbi pharetra mollis tortor ac maximus.</span> Nunc dapibus bibendum urna, in egestas dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                                <!--venue-highlights -->
                                <div class="venue-highlights">
                                    <div class=" table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Venue Highlights</th>
                                                    <th scope="col"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Maximum Capacity</td>
                                                    <td class="venue-highlight-meta">350</td>
                                                </tr>
                                                <tr>
                                                    <td>Guest Minimum</td>
                                                    <td class="venue-highlight-meta">40</td>
                                                </tr>
                                                <tr>
                                                    <td>Style</td>
                                                    <td class="venue-highlight-meta">Barn, Mansion, Winery</td>
                                                </tr>
                                                <tr>
                                                    <td>Event Spaces</td>
                                                    <td class="venue-highlight-meta">Outdoorsy, Rustic/Country, Unique</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.venue-highlights -->
                            </div>
                        </div>
                        <!--vendor-description -->
                       
                        <!-- review-block -->
                        <div id="reviews">
                            <div class="card border card-shadow-none ">
                                <div class="card-header bg-white">
                                    <h3 class="mb0 d-inline-block">Reviews</h3>
                                    <a href="#" class="btn btn-default btn-sm float-right d-inline-block">write a review</a>
                                </div>
                                <div class="card-body">
                                    <div class="review-block">
                                        <div class="row">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                                <!-- review-sidebar -->
                                                <div class="review-sidebar">
                                                    
                                                        <div class="review-total">4.8 </div>
                                                        <div class="review-text">Reviews</div>
                                                        <span class="rated"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa  fa-star"></i> <i class="fa fa-star"></i> </span>
                                                        <p>4.4 average based on 1 ratings.</p>
                                                 
                                                </div>
                                                <!-- /.review-sidebar -->
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     
                    </div>
                    <!-- /.review-content -->
                 
                    <!-- /.review-block -->
                    <div class="card border card-shadow-none leave-review">
                        <div class="card-header bg-white mb0">
                            <h3 class="mb0">Write Your Reviews</h3>
                        </div>
                        <div class="card-body">
                           
                           
                                <div class="row">
                                    <!-- Textarea -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mt30">
                                        <div class="form-group">
                                            <label class="control-label" for="review">Write Your Review</label>
                                                    <textarea class="form-control" id="review" name="review" rows="5" placeholder="Write Review"></textarea>
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="name">Name</label>
                                            <input id="name" name="name" type="text" placeholder="Name" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Text input-->
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="form-group">
                                            <label class="control-label" for="email">Email</label>
                                            <input id="email" name="email" type="text" placeholder="Email" class="form-control input-md" required="">
                                        </div>
                                    </div>
                                    <!-- Button -->
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="form-group">
                                            <button id="submit" name="submit" class="btn btn-default">Submit review</button>
                                        </div>
                                    </div>
                                </div>
                           
                        </div>
                    </div>
                    <!-- /.review-form -->
                    <!-- location -->
                   
                </div>
                   
                    <!-- list-sidebar -->
                    <div class="col-xl-4 col-lg-4 col-md-5 col-sm-12 col-12">
                    <div class="sidebar-venue">
                        <div class="card">
                            <div class="card-body">
                                <form runat="server"> 
                                    <div class="row">
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <h3 class="mb20">Request Quote</h3>
                                        </div>
                                        <!-- Text input-->
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class="control-label sr-only" for="name1">Name</label>
                                                <asp:TextBox ID="txtname" runat="server" class="form-control input-md" placeholder="Name"  required=""></asp:TextBox>
                                                <%--<input id="name1" name="name1" type="text" placeholder="Name" class="form-control input-md" required="">--%>
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class=" control-label sr-only" for="email2">Email</label>
                                                <asp:TextBox ID="txtmail" runat="server" placeholder="Email" class="form-control input-md" required=""></asp:TextBox>
                                               <%--     <input id="email2" name="email2" type="text" placeholder="Email" class="form-control input-md" required="">--%>
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class=" control-label sr-only" for="phone">Phone</label>
                                                <asp:TextBox ID="txtcontact" runat="server" placeholder="Phone" class="form-control input-md" required=""></asp:TextBox>
                                              <%--  <input id="phone" name="phone" type="text" placeholder="Phone" class="form-control input-md" required="">--%>
                                            </div>
                                        </div>
                                        <!-- Text input-->
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class="control-label sr-only" for="weddingdate">Wedding Date</label>
                                                <asp:TextBox ID="txtdate" runat="server" placeholder="Select Date" type="date" class="form-control input-md" required=""></asp:TextBox>
                                                <%--<input id="weddingdate" name="weddingdate" type="text" placeholder="Wedding Date" class="form-control input-md" required="">--%>
                                                
                                            </div>
                                        </div>
                                        <!-- Textarea -->
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <label class="control-label sr-only" for="comments">Comment</label>
                                                <asp:TextBox ID="txtcomment" runat="server" placeholder="Write Comment" TextMode ="MultiLine" class="form-control"></asp:TextBox>
                                               <%-- <textarea class="form-control" id="comments" name="comments" rows="5" placeholder="Write Comment"></textarea>--%>
                                            </div>
                                        </div>
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="form-group">
                                                <asp:Button ID="btn_submit_quote" runat="server" Text="Submit Quote" class="btn btn-default btn-block"/>
                                               <%--     <button type="submit" class="btn btn-default btn-block">Submit Quote</button>--%>
                                            </div>
                                        </div>
                                    </div>
                               </form>
                            </div>
                        </div>
                        <!-- venue-admin -->

                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <div class="vendor-owner-profile mb30">
                                        <div class="vendor-owner-profile-head">
                                            <div class="vendor-owner-profile-img"><img src='../VImage/<%#Eval("vimage") %>' class="rounded-circle" alt=""></div>
                                            <h4 class="vendor-owner-name mb0"><%#Eval("vname") %></h4>
                                        </div>
                                        <div class="vendor-owner-profile-content">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item"><span class="mr-2 text-default"><i class="fas fa-fw fa-map-marker-alt"></i></span><%#Eval("state") %>, <%#Eval("city") %></li>
                                                <li class="list-group-item"><span class="mr-2  text-default"><i class="fas fa-fw fa-phone"></i></span><%#Eval("vcontact") %></li>
                                                <li class="list-group-item"><span class="mr-2 text-default"><i class="fas fa-fw fa-envelope"></i></span><%#Eval("vmail") %></li>
                                            </ul>
                                        </div>
                                    </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [vendor_mstr] WHERE ([vid] = @vid)">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="vid" Name="vid" Type="Int32"></asp:QueryStringParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                        <!-- /.venue-admin -->
                       
                    </div>
                </div>
            
            </div>
            <!-- /.list-sidebar -->
        </div>
    </div>
   


</asp:Content>

