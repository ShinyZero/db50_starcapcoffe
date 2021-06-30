﻿using StarcapModel;
using StarcapModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StarcapWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //CodeBehind
            if (!IsPostBack)
            {
                List<Bebida> bebidas = new BebidaDAL().GetAll();
                bebidaDd1.DataSource = bebidas;
                //Indica que se va a mostrar en el dropdownlist
                bebidaDd1.DataTextField = "Nombre";
                //Indica que se va a obtener en el dropdownlist
                bebidaDd1.DataTextField = "Codigo";
                //refresaca o actualiza el dropdownlist
                bebidaDd1.DataBind();

            }
        }

        protected void IngresarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //en el caso de que la pagina sea valida (cumple con las validaciones)

            }
            else
            {

            }
        }

        protected void rutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String rut = RutTxt.Text.Trim();
            if (rut == string.Empty)
            {
                //Caso que el rut venga vacio
                rutCV.ErrorMessage = "Debe ingresar el Rut";
                args.IsValid = false;
            }
            else
            {
                /* Rut valido es de la forma 12345678-9 */
                String[] rutArray = rut.Split('-');
                /*rutArray[0] = 12345678
                 *rutArray[1] = 9 
                 */
                if (rutArray.Length == 2)
                {
                    if (rutArray[1].Length != 1)
                    {
                        rutCV.ErrorMessage = "El digito verificador debe tener un caracter";
                        args.IsValid = false;
                    }
                    else
                    {
                        //Caso que cumple formato
                        args.IsValid = true;
                    }
                }
                else
                {
                    //Caso de que rut no tiene un solo guion 
                    rutCV.ErrorMessage = "El Rut debe poseer un guion";
                    args.IsValid = false;
                }
            }
        }
    }
}