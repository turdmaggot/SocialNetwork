<%@ Page Title="Social Network | My Dashboard" Language="C#" MasterPageFile="~/master/subpage.master" AutoEventWireup="true" CodeBehind="Dash.aspx.cs" Inherits="SocialNetwork.subpages.Dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="content-wrapper">
        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="12u 12u(mobile)">
                        <section>

                            <header>
                                <h2>Sample Page</h2>
                            </header>
                            <asp:Panel runat="server" ID="AuthenticatedMessagePanel">
                                <asp:Label runat="server" ID="WelcomeBackMessage"></asp:Label>
                            </asp:Panel>

                            <asp:Panel runat="Server" ID="AnonymousMessagePanel">
                                <asp:HyperLink runat="server" ID="lnkLogin" Text="Log In" NavigateUrl="~/login"></asp:HyperLink>
                            </asp:Panel>

                            <asp:LoginView ID="LoginView1" runat="server">
                                <LoggedInTemplate>
                                    <asp:LoginName ID="LoginName1" runat="server" />
                                </LoggedInTemplate>
                                <AnonymousTemplate>
                                    <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="~/login">Log In</asp:HyperLink>
                                </AnonymousTemplate>
                            </asp:LoginView>
                            <br />


                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div id="footer-wrapper">
        <footer id="footer" class="container">
            <div class="row">
                <div class="12u 12u(mobile)">
                    <p>[FOOTER HERE]</p>
                </div>
            </div>
        </footer>
    </div>
</asp:Content>
