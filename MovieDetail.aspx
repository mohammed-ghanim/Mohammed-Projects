<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MovieDetail.aspx.cs" Inherits="MovieDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div style="background:#eee;border-radius:5px;padding:15px;">
            <asp:Repeater ID="repMovie" runat="server" OnItemDataBound="repMovie_ItemDataBound">
                <ItemTemplate>
                    <div class="row">
                <div class="col-md-3">
                    <img src="Images/<%#Eval("Poster") %>" class="img-responsive img-rounded img-thumbnail" />
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <br />
                    <h2>Title :-<span  style="font-size:20px;">  <%#Eval("Title") %> </span></h2>
                    <div class="row"></div>
                    <h2>Year :- <span  style="font-size:20px;"> <%#Eval("mYear") %></span></h2>
                    <div class="row"></div>
                    <h2>Starring :- <span  style="font-size:20px;"> <%#Eval("Starring") %></span></h2>
                    <div class="row"></div>
                    <h2>Summary :- <span style="font-size:20px"><%#Eval("Summary") %></span></h2>
                </div>
            </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

