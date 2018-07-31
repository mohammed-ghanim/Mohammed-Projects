<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LogInPage.aspx.cs" Inherits="LogInPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row"><br /></div>
    <div class="col-md-4"></div>
    <div class="col-md-4">
       <div style="background:#eee;border-radius:5px;padding:10px;">
            <fieldset>
            <legend>LogIn  <small> <asp:Label ID="lblLoginMessage" runat="server" CssClass="text-danger"/></small></legend>

            <div class="form-group">
                <label for="txtUserName">User Name</label>
                <asp:TextBox CssClass="form-control logInBox" runat="server" ID="txtUserName" PlaceHolder="User Name" />
            </div>
            <div class="form-group">
                <label for="txtPassword">PassWord</label>
                <asp:TextBox CssClass="form-control logInBox" runat="server" TextMode="Password" ID="txtPassword" PlaceHolder="PassWord" />
            </div>

            <asp:Button runat="server" CssClass="btn btn-default" Text="LogIn" ID="btnLogIn" OnClick="btnLogIn_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" Text="Sigh Up" ID="btnSighUp" OnClick="btnSighUp_Click" Style="float:right;"/>
        </fieldset>
       </div>
    </div>
</asp:Content>

