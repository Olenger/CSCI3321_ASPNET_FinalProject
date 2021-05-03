<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublishers.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublishers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Publisher</h3>
    <div class="row">

        <div class="col-md-3">
            Publisher Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPublisherName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
            Address:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
            City:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
            Post Code:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
            Country:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
            Phone:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
           &nbsp;
        </div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text=" Add Publisher" CssClass="btn btn-primary"></asp:Button>
        </div>

    </div>
</asp:Content>
