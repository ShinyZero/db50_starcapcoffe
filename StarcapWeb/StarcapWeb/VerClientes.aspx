<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerClientes.aspx.cs" Inherits="StarcapWeb.VerCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
<h1>Ver Clientes</h1>
    <!--Creacion de grillas -->
    <div class="mt-5">
        <asp:GridView ID="clientesGrid" runat="server"
            AutoGenerateColumns="false" CssClass="table table-hover" OnRowCommand="clientesGrid_RowCommand"
            EmptyDataText="No hay clientes regristrados">
            <Columns>
                <asp:BoundField HeaderText="Nombre del Cliente" DataField="Nombre" />
                <asp:BoundField HeaderText="Nivel" DataField="NivelTxt" />
                <asp:BoundField HeaderText="Bebida Favorita" DataField="CodigoBebida"/>
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Sacar del Programa"
                            CssClass="btn btn-danger" CommandName="eliminar"
                            CommandArgument='<%# Eval("Rut")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
