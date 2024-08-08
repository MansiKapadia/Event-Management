<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageOfUser1.master" AutoEventWireup="false" CodeFile="Vendorlisting.aspx.vb" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- page-header -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <!-- page caption -->
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                    <div class="page-caption">
                        <h1 class="page-title">Listing Vendors</h1>
                    </div>
                </div>
                <!-- /.page caption -->
            </div>
        </div>
        <!-- page caption -->
        <div class="page-breadcrumb">
            <div class="container">
                <div class="row">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Home</a></li>
                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Listing</a></li>
                            <li class="breadcrumb-item active text-white" aria-current="page">Listing Gird View</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- page breadcrumb -->
    </div>
    <!-- /.page-header -->


    <div class="content">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                            <div class="vendor-thumbnail">
                                <!-- Vendor thumbnail -->
                                <div class="vendor-img zoomimg">
                                    <!-- Vendor img -->
                                    <a href='Vendordetails.aspx?vid=<%#Eval("vid")%>'>
                                        <img src='../VImage/<%#Eval("vimage") %>' alt="" class="img-fluid"></a>
                                    <div class="wishlist-sign"><a href="#" class="btn-wishlist"><i class="fa fa-heart"></i></a></div>
                                </div>
                                <!-- /.Vendor img -->
                                <div class="vendor-content">
                                    <!-- Vendor Content -->
                                    <h2 class="vendor-title"><a href="#" class="title"><%#Eval("vname") %></a></h2>
                                    <p class="vendor-address"><%#Eval("city") %>,<%#Eval("state") %></p>
                                </div>
                                <div class="vendor-meta">
                                    <div class="vendor-meta-item vendor-meta-item-bordered">
                                        <span class="vendor-price">Rs. <%#Eval("vprice") %>
                                        </span>
                                        <span class="vendor-text">Start From</span>
                                    </div>
                                 
                                    <div class="vendor-meta-item vendor-meta-item-bordered">
                                        <span class="rating-star">
                                            <i class="fa fa-star rated"></i>
                                            <i class="fa fa-star rated"></i>
                                            <i class="fa fa-star rated"></i>
                                            <i class="fa fa-star rated"></i>
                                            <i class="fa fa-star rate-mute"></i>
                                        </span>
                                        <span class="rating-count vendor-text">(20)</span>
                                    </div>
                                    <div class="vendor-meta-item vendor-meta-item-bordered">
                                        <a href='Vendordetails.aspx?vid=<%#Eval("vid")%>' class="vendor-guest">Book Now
                                        </a>
                                        <span class="vendor-text">Guest</span>
                                    </div>
                                </div>
                                <!-- /.Vendor Content -->
                            </div>
                            <!-- /.Vendor thumbnail -->
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [vendor_mstr] WHERE ([catid] = @catid)">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="catid" Name="catid" Type="Int32"></asp:QueryStringParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        
        </div>
    </div>
</asp:Content>

