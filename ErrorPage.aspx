<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
         <div class="jumbotron">
        <h1 class="bg-danger">Access Denied</h1>
        <p>you do not have sufficient previlages to view this content,   <a href="LogInPage.aspx">click here</a> to login</p>
          
      </div>
     </div>
</asp:Content>

