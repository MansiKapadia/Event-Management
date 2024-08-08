<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageOfUser1.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div class="content">
        <div class="container">
    <div class="row">
                <div class="offset-xl-2 col-xl-8 offset-lg-2 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="section-title text-center">
                        <!-- section title start-->
                        <h2 class="mb10">Vendors by Category</h2>
                        <p>Small content paragraph for heading title subtitle text. </p>
                    </div>
                    <!-- /.section title start-->
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-xl-4 col-lg-3 col-md-4 col-sm-12 col-12">
                            <div class="venue-categories-block">
                                <div class="venue-categories-img zoomimg">
                                    <a href='vendorlisting.aspx?catid=<%#Eval("catid") %>'>
                                        <img src='../PImage/<%#Eval("catimage") %>' alt="" class="img-fluid"></a>
                                        <div class="venue-categories-overlay">
                                            <h3 class="mb0"><a href='../PImage/<%#Eval("catimage") %>' class="venue-categories-title"><%#Eval("catname") %></a></h3>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>



                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [category_mstr]"></asp:SqlDataSource>
            </div>
           
        <//div>
    </div>
</asp:Content>

