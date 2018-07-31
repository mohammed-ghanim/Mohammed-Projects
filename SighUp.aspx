<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SighUp.aspx.cs" Inherits="SighUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div style="background:#eee;padding:10px;border-radius:5px">
            <fieldset>
                <legend style="text-align:center;">Sigh Up <small> <asp:Label ID="lblSignupMessage" runat="server" CssClass="text-danger"/></small></legend>
                <label for="txtFirstName">First Name</label>
                <asp:TextBox ID="txtFirstName" runat="server" Placeholder="Enter Your First Name Here" CssClass="form-control" />
                <label for="txtPassword">PassWord</label>
                <asp:TextBox ID="txtPaaword" runat="server" Placeholder="Enter Your PassWord Here" CssClass="form-control" TextMode="Password" />
                <asp:Button ID="btnSave" Text="Save" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click" Style="margin-top:30px;" />
            </fieldset>
        </div>
    </div>
</asp:Content>

