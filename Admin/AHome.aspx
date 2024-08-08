<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPageOfAdmin1.master" AutoEventWireup="false" CodeFile="AHome.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Breadcrumb-->
     <div class="row pt-2 pb-2">
        <div class="col-sm-9">
		    <h4 class="page-title">Form Layouts</h4>
		    <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javaScript:void();">Cosmatic</a></li>
            <li class="breadcrumb-item"><a href="javaScript:void();">Forms</a></li>
            <li class="breadcrumb-item active" aria-current="page">Form Layouts</li>
         </ol>
	   </div>
	   <div class="col-sm-3">
       <div class="btn-group float-sm-right">
        <button type="button" class="btn btn-light waves-effect waves-light"><i class="fa fa-cog mr-1"></i> Setting</button>
        <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown">
        <span class="caret"></span>
        </button>
        <div class="dropdown-menu">
          <a href="javaScript:void();" class="dropdown-item">Action</a>
          <a href="javaScript:void();" class="dropdown-item">Another action</a>
            <%--  <a href="javaScript:void();" class="dropdown-item">Something else here</a>--%>
          <div class="dropdown-divider"></div>
          <a href="javaScript:void();" class="dropdown-item">Separated link</a>
        </div>
      </div>
     </div>
     </div>
    <!-- End Breadcrumb-->

<div class="card">
           <div class="card-body">
           <div class="card-title">Round Horizontal Form</div>
           <hr>
            <form id="Form1" runat ="server">
            <div class="form-group row">
            <label for="input-26" class="col-sm-2 col-form-label">Enter Category Id: </label>
            <div class="col-sm-10">
               <asp:TextBox ID="txtcid" runat="server" class="form-control form-control-rounded" placeholder="Enter Category Id"></asp:TextBox>
               
            </div>
          </div>
           <div class="form-group row">
            <label for="input-26" class="col-sm-2 col-form-label">Enter Category Name: </label>
            <div class="col-sm-10">
               <asp:TextBox ID="txtcatname" runat="server" class="form-control form-control-rounded" placeholder="Enter Category Name"></asp:TextBox>
              
            </div>
          </div>
       
          <div class="form-group row">
            <label for="input-28" class="col-sm-2 col-form-label">Enter Category Description : </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtcatdesc" runat="server" class="form-control form-control-rounded" placeholder="Enter  Category Description "></asp:TextBox>
              
            </div>
          </div>
          <div class="form-group row">
            <label for="input-29" class="col-sm-2 col-form-label">Category Image : </label>
            <div class="col-sm-10">
                <asp:FileUpload ID="pimage" runat="server" />
                      
            </div>
          </div>
          <div class="form-group row">
            <label for="input-29" class="col-sm-2 col-form-label">Category Image : </label>
            <div class="col-sm-10">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px"/>
                       
            </div>
          </div>
       
           <div class="form-group row">
            <label class="col-sm-2 col-form-label"></label>
            <div class="col-sm-10">
               
                <asp:Button ID="btn_sub" runat="server" Text="SUBMIT" class="btn btn-primary btn-round px-5" />
                    <asp:Button ID="btn_search" runat="server" Text="SERACH" class="btn btn-primary btn-round px-5" />
                    <asp:Button ID="btn_update" runat="server" Text="UPDATE" class="btn btn-primary btn-round px-5" />
                    <asp:Button ID="btn_delete" runat="server" Text="DELETE" class="btn btn-primary btn-round px-5" />
                <%--<button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
                <asp:Label ID="Label1" runat="server" font-size="XX-Large"></asp:Label>
            </div>
          </div>
          </form>
         </div>
         </div>

</asp:Content>

