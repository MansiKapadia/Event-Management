<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Vendor_Vhome" %>

<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from jituchauhan.com/real-wed/realwed/couple-form.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Mar 2022 04:30:43 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>RealWed | Wedding Vendor & Supplier Directory HTML Template - Couple Form</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Rubik:300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <!-- FontAwesome icon -->
    <link href="fontawesome/css/fontawesome-all.css" rel="stylesheet">
    <!-- Fontello icon -->
    <link href="fontello/css/fontello.css" rel="stylesheet">
    <!--jquery-ui  -->
    <link href="css/jquery-ui.css" rel="stylesheet">
      <!-- Favicon icon -->
     <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!-- couple-sign up -->

<body class="couple-bg-image">
    <div >
    <div class="couple-form">
        <div class="container">
            <div class="row ">
                <div class="offset-xl-3 col-xl-6 offset-lg-3 col-lg-6 col-md-12 col-sm-12 col-12  ">
                    <!-- couple-head -->
                    <div class="couple-head">
                        <a href="index.html"><img src="images/logo.png" alt="Wedding Vendor & Supplier Directory HTML Template "></a>
                    </div>
                    <!-- /.couple-head -->
                    <!-- st-tab -->
                    <div class="st-tab">
                        <ul class="nav nav-tabs nav-justified" id="Mytabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="tab-1" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab-1" aria-selected="true">Register</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="tab-2" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab-2" aria-selected="false">Login</a>
                            </li>
                        </ul>
                           <form id="Form1" runat ="server" >
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab-1">
                                <div class="container">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                      
                                        <!-- register-form -->
                                     
                                            <!-- form -->
                                            <div class="row">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="control-label sr-only" for="name"></label>
                                                        <asp:TextBox ID="txtvname" runat="server"  placeholder="Vendor Name" class="form-control"></asp:TextBox>
                                                        <%--<input id="name" type="text" name="name" placeholder="Name" class="form-control" required>--%>
                                                    </div>
                                                </div>

                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group service-form-group">
                                                        <label class="control-label sr-only" for="email"></label>
                                                        <asp:TextBox ID="txtvmail" runat="server" placeholder="Vendor Email" class="form-control"></asp:TextBox>
                                                        <%--<input id="email" type="email" placeholder="Email" class="form-control" required>--%>
                                                    </div>
                                                </div>
                                              
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                    <!-- Text input-->
                                                  
                                                      <div class="form-group service-form-group">
                                                        <label class="control-label sr-only" for="passwordregister"></label>
                                                        <asp:TextBox ID="txtvcontact" runat="server" placeholder="Vendor Contact" class="form-control"></asp:TextBox>
                                                       <%-- <input id="passwordregister" type="text" name="password" placeholder="Password" class="form-control" required>--%>
                                                    </div>
                                                </div>

                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="control-label sr-only" for="name"></label>
                                                        <asp:TextBox ID="txtvdesc" runat="server"  placeholder="Vendor Desc" class="form-control"></asp:TextBox>
                                                        <%--<input id="name" type="text" name="name" placeholder="Name" class="form-control" required>--%>
                                                    </div>
                                                </div>

                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="control-label sr-only" for="name"></label>
                                                        <asp:TextBox ID="txtvprice" runat="server"  placeholder="Vendor's Event Price" class="form-control"></asp:TextBox>
                                                        <%--<input id="name" type="text" name="name" placeholder="Name" class="form-control" required>--%>
                                                    </div>
                                                </div>


                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="control-label sr-only" for="name" ></label>
                                                        <asp:DropDownList ID="ddlcatid" runat="server" class="form-control">
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem>4</asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                             <asp:ListItem>6</asp:ListItem>
                                                             <asp:ListItem>7</asp:ListItem>
                                                              <asp:ListItem>8</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <%--<input id="name" type="text" name="name" placeholder="Name" class="form-control" required>--%>
                                                    </div>
                                                </div>


                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="control-label sr-only" for="name" ></label>
                                                        <asp:DropDownList ID="ddlvstate" runat="server" class="form-control">
                                                            <asp:ListItem>GUJARAT</asp:ListItem>
                                                            <asp:ListItem>MUMBAI</asp:ListItem>
                                                            <asp:ListItem>PUNJAB</asp:ListItem>
                                                            <asp:ListItem>SIKKIM</asp:ListItem>
                                                            <asp:ListItem>KERALA</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <%--<input id="name" type="text" name="name" placeholder="Name" class="form-control" required>--%>
                                                    </div>
                                                </div>


                                                 <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="control-label sr-only" for="name"></label>
                                                        <asp:DropDownList ID="ddlvcity" runat="server" class="form-control">
                                                            <asp:ListItem>SURAT</asp:ListItem>
                                                            <asp:ListItem>PUNE</asp:ListItem>
                                                            <asp:ListItem>AMRISTAR</asp:ListItem>
                                                            <asp:ListItem>SINGTAM</asp:ListItem>
                                                            <asp:ListItem>KOCHI</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <%--<input id="name" type="text" name="name" placeholder="Name" class="form-control" required>--%>
                                                    </div>
                                                </div>


                                                      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group service-form-group">
                                                        <label class="control-label sr-only" for="passwordregister"></label>
                                                        <asp:TextBox ID="txtvpass" runat="server"  placeholder="Vendor Password" TextMode ="Password"  class="form-control"></asp:TextBox>
                                                       <%-- <input id="passwordregister" type="text" name="password" placeholder="Password" class="form-control" required>--%>
                                                    </div>
                                                </div>
                                                

                                                 <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group service-form-group">
                                                        <label class="control-label sr-only" for="passwordregister"></label>
                                                        <asp:FileUpload ID="Vimage" runat="server" />
                                                       <%-- <input id="passwordregister" type="text" name="password" placeholder="Password" class="form-control" required>--%>
                                                    </div>
                                                </div>

                                                <!-- Button -->
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <asp:Button ID="btn_VSignUp" runat="server" Text="SignUp"   class="btn btn-default"/>
                                                    <%--<button type="submit" name="singlebutton" class="btn btn-default">Sign up</button>--%>
                                                </div>

                                                

                                            </div>
                                  
                                        <!--/.form -->
                                        <p class="mt-2"> Have you subscribed? <a href="#" class="wizard-form-small-text"> Login</a></p>
                                        <div>
                                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                                        </div>
                                    </div>
                                </div>
                             </div>
                            <!-- /.register-form -->
                            <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab-2">
                                <div class="container">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                        <!-- login-form-heading-title  -->
                                        <h3>Sign In to Your Account</h3>
                                        <p>Sign in to plan your perfect day with our planning tools and inspiration more...</p>
                                        <!-- /.login-form-heading-title  -->
                                        <!-- login-form-->
                                        
                                            <div class="row">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <!-- Text input-->
                                                    <div class="form-group">
                                                        <label class="control-label sr-only" for="username"></label>
                                                        <asp:TextBox ID="txtvmail1" runat="server" placeholder="Vendor Mail" class="form-control"></asp:TextBox>
                                                       <%-- <input id="username" type="text" name="username" placeholder="User Name" class="form-control" >--%>
                                                    </div>
                                                </div>
                                                <!-- Text input-->
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <div class="form-group service-form-group">
                                                        <label class="control-label sr-only" for="passwordlogin"></label>
                                                        <asp:TextBox ID="txtvpass1" runat="server" placeholder="Vendor Password" class="form-control" TextMode ="Password" ></asp:TextBox>
                                                        <%--<input id="passwordlogin" type="password" name="passwordlogin" placeholder="Password" class="form-control" >--%>
                                                    </div>
                                                </div>
                                                <!--  Buttons -->
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                    <asp:Button ID="btn_Vlogin" runat="server" Text="Login"  class="btn btn-default" />
                                                  <%--  <button type="submit" name="singlebutton" class="btn btn-default">Login</button>--%>
                                                </div>
                                            </div>
                                        
                                        <!-- /.login-form -->
                                        <p class="mt-2"> Are you new vendor? Create a New Account.<a href="#"> Click here</a></p>
                                    </div>
                                </div>
                            </div>
                            <!-- /.login-form -->
                           
                        </div>
                              </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.couple-sign up -->
     
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
      <!-- jquery-ui -->
    <script src="js/jquery-ui.js"></script>
   <script src="js/custom-script.js"></script>
    
</body>


<!-- Mirrored from jituchauhan.com/real-wed/realwed/couple-form.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 05 Mar 2022 04:30:43 GMT -->
</html>

