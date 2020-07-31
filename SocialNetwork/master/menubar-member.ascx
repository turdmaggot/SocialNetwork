<%@ Control Language="C#" AutoEventWireup="true" Inherits="masterpages_menubar_member" Codebehind="menubar-member.ascx.cs" %>

<nav id="nav">
    <asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutPageUrl="~/home" />
</nav>
