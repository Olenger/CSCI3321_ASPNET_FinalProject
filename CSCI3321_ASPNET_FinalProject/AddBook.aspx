<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">

        <div class="col-md-3">
            Title:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
           Price:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

         <div class="col-md-3">
            Publish date:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPublishDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        

         <div class="col-md-3">
            Author:
        </div>
        <div class="col-md-9">
             <asp:DropDownList ID="sdsAuthor" runat="server" CssClass="form-control" DataSourceID="SqlAuthor" DataTextField="LastName" DataValueField="AuthorID">
             </asp:DropDownList>
             <asp:SqlDataSource ID="sqlAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName, FirstName FROM Authors"></asp:SqlDataSource>
         </div>

        <div class="col-md-3">
            Publisher:
        </div>
        <div class="col-md-9">
             <asp:DropDownList ID="sdsPublisher" runat="server" CssClass="form-control" DataSourceID="SqlPublisher" DataTextField="PublisherName" DataValueField="PublisherID">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlPublisher" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" InsertCommand="INSERT INTO Publishers(PublisherID, PublisherName) VALUES (,)" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
         </div>

        <div class="col-md-3">
            Genre:
        </div>
        <div class="col-md-9">
             <asp:DropDownList ID="sdsGenre" runat="server" CssClass="form-control" DataSourceID="SqlGenre" DataTextField="GenreName" DataValueField="GenreID">
             </asp:DropDownList>
         

       <div class="col-md-3">&nbsp;</div>
        <asp:SqlDataSource ID="SqlGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Book" CssClass =" btn btn-primary" OnClick="btnSubmit_Click"/>
        </div>

    
    </div>
</asp:Content>
