<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormPersona.aspx.vb"
    Inherits="Persona.FormPersona" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <asp:TextBox ID="txtNombre" placeholder="Nombre" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtApellido" placeholder="Apellido" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtEdad" placeholder="Edad" runat="server"></asp:TextBox>

        <asp:Button ID="btnMostrar" runat="server" CssClass="btn btn-primary" Text="Guardar" onclick="btn_guardar" />

        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>


        <asp:GridView ID="gvPersonas" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource1" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:II46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Persona]"></asp:SqlDataSource>
    </asp:Content>
