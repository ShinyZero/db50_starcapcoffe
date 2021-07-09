<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerClientes.aspx.cs" Inherits="StarcapWeb.VerCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
<h1>Ver Clientes</h1>

    <!-- Esto es un comentario -->

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <span>Cargando...</span>
                </ProgressTemplate>

            </asp:UpdateProgress>
    <!-- filtro -->
    <asp:DropDownList ID="nivelRd1" runat="server" Enabled="false"
        AutoPostBack="true" OnSelectedIndexChanged="nivelRd1_SelectedIndexChanged">
        <asp:ListItem Value="1" Selected="True" Text="Silver"></asp:ListItem>
        <asp:ListItem Value="2" Text="Gold"></asp:ListItem>
        <asp:ListItem Value="3" Text="Platinum"></asp:ListItem>
    </asp:DropDownList>

    <asp:CheckBox ID="todosChx" Checked="true" runat="server"
        AutoPostBack="true" OnCheckedChanged="todosChx_CheckedChanged" Text="Ver Todos"/>

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
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
