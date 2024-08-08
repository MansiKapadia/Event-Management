<%@ Page Title="" Language="VB" MasterPageFile="~/User/MasterPageOfUserProfile.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="row">
                <div class="offset-xl-3 col-xl-6 offset-lg-3 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="mb30 card">
                        <div class="card-body">
                            <h1>Change Password</h1>
                            <p>Follow these simple steps to reset your account:</p>
                            <ul class="list-unstyled mb30">
                                <li>1. Enter your old Password.</li>
                                <li>2. Enter your new Password.</li>
                                <li>3. Confirm your New Password.</li>
                            </ul>
                            <form runat="server">
                                <div class="forgot-form">
                                    <div class="form-group">
                                        <label class="control-label" for="email">Old Password</label>
                                        <%--<input id="email" type="email" name="email" placeholder="Email" class="form-control" required>--%>
                                        <asp:TextBox ID="txtolpass" runat="server" placeholder="Enter old Password" class="form-control" required></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="email">New Password</label>
                                        <%--<input id="email" type="email" name="email" placeholder="Email" class="form-control" required>--%>
                                        <asp:TextBox ID="txtnewpass" runat="server" placeholder="Enter New Password" class="form-control" required></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="email">Confirm Password</label>
                                        <%--<input id="email" type="email" name="email" placeholder="Email" class="form-control" required>--%>
                                        <asp:TextBox ID="txtcpass" runat="server" placeholder="Enter Confirm Password" class="form-control" required></asp:TextBox>
                                    </div>
                                     <asp:Label ID="lblmsg" runat="server" class="form-control"></asp:Label>
                                    <asp:Button ID="btnsub" runat="server" Text="Change Password" class="btn btn-default btn-block"/>
                                    <%--<button type="submit" name="singlebutton" class="btn btn-default btn-block">Change Password</button>--%>
                                </div>
                            </form>
                           
                        </div>
                    </div>
                </div>
            </div>
     
</asp:Content>

