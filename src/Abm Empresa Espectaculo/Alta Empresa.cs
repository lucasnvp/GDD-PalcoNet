using PalcoNet.DAOs;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.Abm_Empresa_Espectaculo
{
    public partial class AltaEmpresa : Form
    {
        public AltaEmpresa()
        {
            InitializeComponent();
        }

        private void Btn_Guardar_Click(object sender, EventArgs e)
        {
            EmpresaDAO.CreateCliente(
                Txt_Username.Text, Txt_Username.Text, Txt_Razon_Social.Text, txtCuit.Text, txtMail.Text, 
                Txt_Direccion.Text, Txt_Nro_Calle.Text, txtNumeroPiso.Text, txtDepartamento.Text, 
                txtCP.Text, txtLocalidad.Text, txtCiudad.Text, txtTelefono.Text);
            this.Close();
        }
        
    }
}
