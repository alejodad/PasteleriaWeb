using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO3;
using DTO;

namespace PasteleriaWeb
{
    public partial class Inicio : System.Web.UI.Page
    {
        private DAOpastel PastelDao;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListarPastel();
            }
        }
        public void InsertarPastel()
        {
            pnlAlertaError.Visible = false;
            PanelAlerta.Visible = false;
            DTOPastel pastelDto = new DTOPastel();
            pastelDto.gsNombre = txtNombrePastel.Text;
            pastelDto.gsTamanio = int.Parse(txtTamano.Text);
            PastelDao = new DAOpastel();
            bool resultado = PastelDao.InsertarPastel(pastelDto);

            if (resultado)
            {
                PanelAlerta.Visible = true;
                ListarPastel();
                LimpiarCampos();
            }
            else
            {
                pnlAlertaError.Visible = true;

            }
        }
        public void ListarPastel()
        {
            PastelDao = new DAOpastel();
            gvPasteles.DataSource = PastelDao.listarPasteles();
            gvPasteles.DataBind();
        }
        public void LimpiarCampos()
        {
            txtNombrePastel.Text = "";
            txtTamano.Text = "";
            btnGuardar.CssClass = "btn btn-success btn-block";
            btnGuardar.Text = "Guardar";
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            InsertarPastel();
        }

        protected void gvPasteles_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "btnActualizar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow fila = gvPasteles.Rows[index];



                txtNombrePastel.Text = fila.Cells[1].Text;
                txtTamano.Text = fila.Cells[2].Text;
                txtIdPastel.Text = fila.Cells[0].Text;


                btnGuardar.CssClass = "btn btn-primary btn-block";
                btnGuardar.Text = "Actualizar";
            }
            else if (e.CommandName == "btnCambiarEstado")
            {


            }

        }
    }
}