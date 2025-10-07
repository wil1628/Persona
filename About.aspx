<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Persona.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>Your app description page.</p>
        <p>Use this area to provide additional information.</p>

        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>

        <asp:Button ID="btnMostrar" runat="server" Text="Mostrar" OnClick="btnMostrar_Click" />

        <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>



    </main>
</asp:Content>
