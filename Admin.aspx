<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:MultiView ID="mvMovies" runat="server" ActiveViewIndex="0">
            <asp:View ID="viewSelect" runat="server">
                <fieldset>
        <legend>All Movies</legend>
        <asp:LinkButton ID="lbCreate" Text="Add New Movie" runat="server" OnClick="lbCreate_Click"  />
        <asp:Repeater ID="repMovie"  runat="server" OnItemCommand="repMovie_ItemCommand" >
            <HeaderTemplate>
                <table class="table table-bordered table-condensed table-hover table-responsive table-hover" style="text-align:center;line-height:normal" >
                    <tr style="background:#fff;">
                        <th>Title</th>
                        <th>Poster</th>
                        <th>Year</th>
                        <th>Starring</th>
                        <th>Summary</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="background:#fff;">
                    <td><%#Eval("Title") %></td>
                     <td><img src="Images/<%#Eval ("Poster") %>" class=" img-responsive img-thumbnail" width="100" height="150" /></td>
                    <td><%#Eval("myear") %></td>
                    <td><%#Eval("Starring") %></td>
                   
                    <td><%#Eval("Summary") %></td>
                    <td>
                        <asp:LinkButton  runat="server" CommandArgument='<%#Eval("ID")%>' CommandName="edit" >
                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                            </asp:LinkButton> 
                        
                    </td>
                    <td>
                        <asp:LinkButton  runat="server" CommandArgument='<%#Eval("ID")%>' CommandName="delete" >
                            <i class="fa fa-trash" style="color:#0d7eaa"></i>  
                            </asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </fieldset>
            </asp:View>
            <asp:View ID="viewInsert" runat="server">
                <fieldset>
                    <legend>Add Movie</legend>
                <div class="form-group-sm">
                    <label for="txtTitle">Title</label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" />
                </div>
                    <div class="form-group-sm">
                    <label for="FuPhoto">Photo</label>
                        <asp:FileUpload ID="FuPhoto" accept="image/png, image/jpeg" runat="server" CssClass="form-control" />
                       <span id="lbPho"></span>
                </div>
                <div class="form-group-sm">
                    <label for="txtYear">Year</label>
                    <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group-sm">
                    <label for="txtStarring">Starring</label>
                   <asp:TextBox ID="txtStarring" runat="server" CssClass="form-control" />
                </div>
                
                <div class="form-group-sm">
                    <label for="txtSummary">Summary</label>
                    <asp:TextBox ID="txtSummary" runat="server" CssClass="form-control" />
                </div>
                    <asp:Button Text="Save" ID="btnSave" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click" />
                    <asp:LinkButton Text="Back To List" runat="server" OnClick="Cancel_Click"/>
                </fieldset>
            </asp:View>
            <asp:View ID="viewUpdate" runat="server">
                <fieldset>
                    <legend>Edit Movie</legend>

                    <div class="form-group-sm">
                    <label for="lbUID">ID</label>
                    <asp:TextBox ID="lbUID" runat="server" CssClass="form-control" />
                </div>

                    <div class="form-group-sm">
                    <label for="txtUTitle">Title</label>
                    <asp:TextBox ID="txtUTitle" runat="server" CssClass="form-control" />
                </div>
                    <div class="form-group-sm">
                    <label for="FuUPhoto">Photo</label>
                        <asp:FileUpload ID="FuUPhoto" accept="image/png, image/jpeg" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group-sm">
                    <label for="txtUYear">Year</label>
                    <asp:TextBox ID="txtUYear" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group-sm">
                    <label for="txtUStarring">Starring</label>
                   <asp:TextBox ID="txtUStarring" runat="server" CssClass="form-control" />
                </div>
                
                <div class="form-group-sm">
                    <label for="txtUSummary">Summary</label>
                    <asp:TextBox ID="txtUSummary" runat="server" CssClass="form-control" />
                </div>
                    <asp:Button Text="Update" ID="btnUpdate" CssClass="btn btn-primary" runat="server" OnClick="btnUpdate_Click" />
                    <asp:LinkButton  Text="back to list" runat="server" OnClick="Cancel_Click"/>
                </fieldset>
            </asp:View>
            <asp:View ID="veiwDelete" runat="server">
                <fieldset>
                    <legend>Delete Movie</legend>  
                    <div class="form-group-sm">
                        <label for="lbDID">ID</label>
                        <asp:Label ID="lbDID" runat="server" CssClass="form-control" />
                    </div> 
                    <div class="form-group-sm">
                    <label for="txtDTitle">Title</label>
                    <asp:TextBox ID="txtDTitle" runat="server" CssClass="form-control" />
                </div>
                    <div class="form-group-sm">
                    <label for="FuDPhoto">Photo</label>
                        <asp:FileUpload ID="FuDPhoto" accept="image/png, image/jpeg" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group-sm">
                    <label for="txtDYear">Year</label>
                    <asp:TextBox ID="txtDYear" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group-sm">
                    <label for="txtDStarring">Starring</label>
                   <asp:TextBox ID="txtDStarring" runat="server" CssClass="form-control" />
                </div>
                
                <div class="form-group-sm">
                    <label for="txtDSummary">Summary</label>
                    <asp:TextBox ID="txtDSummary" runat="server" CssClass="form-control" />
                </div>
                    <asp:Button Text="Delete" ID="btnDelete" CssClass="btn btn-danger" runat="server" OnClick="btnDelete_Click" />
                    <asp:LinkButton  Text="back to list" runat="server" OnClick="Cancel_Click"/>
                </fieldset>
            </asp:View>
        </asp:MultiView>
   </div>
</asp:Content>

