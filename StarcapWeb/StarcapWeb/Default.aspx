<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StarcapWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <style type="text/css">
        #Contenido_TipoRd1 label{
            margin-left: 10px;
        }
    </style>
    <div class="row mt-5">
        <div class="col-12 col-md-6 col-lg-5 mx-auto">
            <div class="card">
                <div class="card-header bg-success text-white text-center">
                    <h5>Registrar Cliente</h5>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label" for="NombreTxt">Nombre</label>
                        <asp:TextBox runat="server" ID="NombreTxt" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="RutTxt">Nombre</label>
                        <asp:TextBox runat="server" ID="RutTxt" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="CafeDd1">Cafe Favorito</label>
                        <asp:DropDownList runat="server" ID="CafeDd1" CssClass="form-select"></asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="TipoRd1">Tipo de Cliente</label>
                        <asp:RadioButtonList runat="server" ID="TipoRd1">
                            <asp:ListItem Value="1" Text="Silver" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Gold"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Platinum"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="card-footer d-grid gap-1">
                    <asp:Button runat="server" ID="GuardarBtn" CssClass="btn btn-dark" Text="Registrar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
