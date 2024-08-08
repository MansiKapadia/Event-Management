<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageOfUser1.master" AutoEventWireup="false" CodeFile="Contactus.aspx.vb" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <!-- page-header -->
    <div class="page-header">
        <div class="container">
            <div class="row">
                <!-- page caption -->
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                    <div class="page-caption">
                        <h1 class="page-title">Contact us</h1>
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
                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Pages</a></li>
                            <li class="breadcrumb-item active text-white" aria-current="page">Contact us</li>
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
                <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12 col-12 mb60">
                    <!-- contact-section-title -->
                    <div class="text-center">
                        <p class="lead">We would like to talk with you, Talk to us and we'll show you what we’ve done, and what we can do for you.
                        </p>
                    </div>
                    <!-- /.contact-section-title -->
                </div>
                <div class="offset-xl-3 col-xl-6 offset-lg-3 col-lg-6 col-md-12 col-sm-12 col-12">
                    <form  runat ="server" >
                        <!-- form -->
                        <div class="contact-form">
                            <div class="row">
                              
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 ">
                                    <!-- Text input-->
                                    <div class="form-group service-form-group">
                                        <label class="control-label sr-only" for="fname"></label>
                                        <asp:TextBox ID="txtfname" runat="server"  placeholder="First Name" class="form-control"></asp:TextBox>
                                      <%--  <input id="fname" type="text" name="fname" placeholder="First Name" class="form-control" required>--%>
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12  ">
                                    <div class="form-group service-form-group">
                                        <label class="control-label sr-only" for="lname"></label>
                                        <asp:TextBox ID="txtlname" runat="server"  placeholder="Last Name" class="form-control"></asp:TextBox>
                                        <%--<input id="lname" type="text" name="lname" placeholder="Last Name" class="form-control" required>--%>
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                    <div class="form-group service-form-group">
                                        <label class="control-label sr-only" for="email"></label>
                                        <asp:TextBox ID="txtmail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>
                                        <%--<input id="email" type="email" name="email" placeholder="Email" class="form-control" required>--%>
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                    <div class="form-group service-form-group">
                                        <label class="control-label sr-only" for="phone"></label>
                                        <asp:TextBox ID="txtcontact" runat="server" placeholder="Phone" class="form-control"></asp:TextBox>
                                        <%--<input id="phone" type="text" name="phone" placeholder="Phone" class="form-control" required>--%>
                                    </div>
                                </div>
                                <!-- select -->
                             <%--   <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                    <div class="form-group">
                                        <select class="wide mb20" name="selectvendor">
                                            <option value="Vendor Purpose">Vendor Purpose</option>
                                            <option value="Couple">Couple</option>
                                            <option value="Pricing">Pricing</option>
                                            <option value="Vendor">Vendor</option>
                                            <option value="Advertise with us">Advertise with us</option>
                                        </select>
                                    </div>
                                </div>--%>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                    <!-- textarea -->
                                    <div class="form-group">
                                        <label class="control-label sr-only" for="message"></label>
                                        <asp:TextBox ID="txtmsg" runat="server" placeholder="Messages" class="form-control" TextMode ="MultiLine" ></asp:TextBox>
                                       <%-- <textarea class="form-control" id="message" name="message" rows="3" placeholder="Messages"></textarea>--%>
                                    </div>
                                </div>
                                <!--button -->
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                    <asp:Button ID="btn_contsub" runat="server" Text="SUBMIT" class="btn btn-default"/>
                                   <%-- <button type="submit" name="singlebutton" class="btn btn-default">submit</button>--%>
                                   
                                </div>
                                 <asp:Label ID="Label1" runat="server" font-size="XX-Large" ></asp:Label>
                            </div>
                        </div>
                        <!-- /.form -->
                    </form>
                </div>
            </div>
      
    <!-- /.contact-form -->
   
    
    
 
</div>
</div>
</asp:Content>

