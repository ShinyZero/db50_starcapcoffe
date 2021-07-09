using StarcapModel;
using StarcapModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StarcapWeb
{
    public partial class VerCliente : System.Web.UI.Page
    {
        ClienteDAL clientesDAL = new ClienteDAL();
        private void CargarTabla(List<Cliente> clientes)
        {
            clientesGrid.DataSource = clientes;
            clientesGrid.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(clientesDAL.GetAll());
            }
        }

        protected void clientesGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //Logica al apretar el boton sacar del programa
            if(e.CommandName == "eliminar")
            {
                //obtengo rut seleccionado en la grilla
                String RutAEliminar = e.CommandArgument.ToString();
                //elimino el rut de la lista
                clientesDAL.Remove(RutAEliminar);
                //actualizo la grilla
                CargarTabla(clientesDAL.GetAll());
            }
        }

        protected void nivelRd1_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            int nivelSel = Convert.ToInt32(nivelRd1.SelectedValue);
            //filtrar
            List<Cliente> filtrada = clientesDAL.GetAll(nivelSel);
            CargarTabla(filtrada);
        }

        protected void todosChx_CheckedChanged(object sender, EventArgs e)
        {
            nivelRd1.Enabled = !todosChx.Checked;

            if (todosChx.Checked)
            {
                CargarTabla(clientesDAL.GetAll());
            }
        }
    }
}