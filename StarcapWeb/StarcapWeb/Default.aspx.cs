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
            string[] cafes = { "Moca", "Capuccino", "Vainilla", "Expreso", "Americano" };
            CafeDd1.DataSource = cafes;
            CafeDd1.DataBind();
        }
    }
}