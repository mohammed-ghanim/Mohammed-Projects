<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Genre.aspx.cs" Inherits="Genre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:Repeater ID="repMovieGenre" runat="server" OnItemDataBound="repMovieGenre_ItemDataBound">
         <ItemTemplate>
             <a href="MovieDetail.aspx?MovieID=<%#Eval("ID") %>">
                         <main class="col-md-3 movie" style="background:#eee;margin-top:10px;padding:10px;border-radius:10px;border:solid 2px #333;height:280px;">
                        <div class="col-md-4"></div>
                     <div class="col-md-4">
                        <img src="Images/<%#Eval ("Poster")  %>"  class=" img-responsive img-rounded" style="height:100px;width:100%"/>
                    </div>
                         <div class="col-md-4"></div>
             
                    <div class="col-md-12">
                        <div class="row">
                            <h6><strong>Title:</strong><%#Eval("Title") %></h6>
                        </div>
                         <div class="row">
                           <h6><strong>Year :</strong><%#Eval("mYear") %></h6>
                        </div>
                         <div class="row">
                            <h6 style="font-size:9px;"><strong style="font-size:11px;">Starring:</strong><%#Eval("Starring") %></h6>
                        </div>
                         <div class="row">
                            <div class="menu">
                                <h6 style="font-size:11px;"><strong>Summery:</strong></h6>
                              <p style="font-size:9px;"><%#Eval("Summary") %>
                            </div>
                        </div>
                    </div>
                </main>
                    </a>
         </ItemTemplate>
    </asp:Repeater>
    </div>
</asp:Content>

