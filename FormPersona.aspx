<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormPersona.aspx.vb"
    Inherits="Persona.FormPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .btn-hover-move {
            transition: transform 0.5s ease, box-shadow 0.2s;
        }
        .btn-hover-move:hover {
            transform: translateY(-4px) scale(1.04);
            box-shadow: 0 6px 18px rgba(0,0,0,0.15);
        }
    </style>

    <div class="container d-flex flex-column mb-3 gap-2">

        <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtApellido" CssClass="form-control" placeholder="Apellido" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtEdad" CssClass="form-control" placeholder="Edad" runat="server"></asp:TextBox>

        <asp:Button ID="btnMostrar" runat="server" CssClass="btn btn-primary btn-hover-move" Text="Guardar" OnClick="btn_guardar" />

        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>

    </div>
    <asp:GridView ID="gvPersonas" CssClass="table table-striped table-hover table-success" runat="server" AutoGenerateColumns="False"
        DataSourceID="SqlDataSource1" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:II46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Persona]"></asp:SqlDataSource>

    <section>
        <h1>Hola Mundo</h1>
    </section>

</asp:Content>
