<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StarcapWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <style type="text/css">
        #Contenido_TipoRd1 label{
            margin-left: 10px;
        }
    </style>
    <div>
        <asp:Label ID="mensajeLbl" CssClass="text-success h1" runat="server"></asp:Label>
    </div>


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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Debe ingresar el nombre" CssClass="text-danger"
                            ControlToValidate="NombreTxt">
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="RutTxt">RUT</label>
                        <asp:TextBox runat="server" ID="RutTxt" CssClass="form-control"></asp:TextBox>
                        <asp:CustomValidator ID="rutCV" runat="server" ErrorMessage="CustomValidator"
                            CssClass="text-danger" ControlToValidate="RutTxt" OnServerValidate="rutCV_ServerValidate"
                            ValidateEmptyText="true"
                            ></asp:CustomValidator>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="bebidaDd1">Cafe Favorito</label>
                        <asp:DropDownList runat="server" ID="bebidaDd1" CssClass="form-select"></asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="NivelRd1">Nivel de Cliente</label>
                        <asp:RadioButtonList runat="server" ID="NivelRd1" CssClass="form-control">
                            <asp:ListItem Value="1" Text="Silver" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Gold"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Platinum"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="card-footer d-grid gap-1">
                    <asp:Button runat="server" ID="IngresarBtn" CssClass="btn btn-dark" Text="Crear Cliente"
                        OnClick="IngresarBtn_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
