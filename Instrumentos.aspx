<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Instrumentos.aspx.cs" Inherits="MelodyHub.instrumentos.Instrumentos" %>
    <h1>Gestión de Instrumentos</h1>
    <h2><asp:HyperLink ID="Crear"runat="server" NavigateUrl="Crear.aspx" Text="Insertar instrumento" /> </h2>
    <asp:GridView ID="gvInstrumentos" runat="server" AutoGenerateColumns="False" CssClass="RutaCss" HeaderStyle-CssClass="RutaCss" RowStyle-CssClass="Rutacss" AlternatingRowStyle-CssClass="RutaCss" DataKeyNames="id_instrumento" OnRowEditing="gvInstrumentos_RowEditar" OnRowDeleting="gvInstrumentos_RowEliminar" OnRowUpdating="gvInstrumentos_RowActu" OnRowCancelingEdit="gvInstrumentos_RowCancelarEdit">
        <Columns>
            <asp:BoundField DataField="id_instrumento" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="tipo_instrumento" HeaderText="Tipo" />
            <asp:BoundField DataField="marca" HeaderText="Marca" />
            <asp:BoundField DataField="modelo" HeaderText="Modelo" />
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>