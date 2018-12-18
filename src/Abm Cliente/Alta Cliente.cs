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

namespace PalcoNet.Abm_Cliente
{
    public partial class AltaClientes : Form
    {
        public AltaClientes()
        {
            InitializeComponent();
        }

        private void Btn_Guardar_Click(object sender, EventArgs e)
        {
            ClienteDAO.CreateCliente(
                Txt_Username.Text, Txt_Password.Text, Txt_Nombre.Text, txtApellido.Text, CBX_TipoDni.Text, txtNumeroDoc.Text,
                txtCuil.Text, txtMail.Text, txtTelefono.Text, txtCalle.Text, Txt_Nro_Calle.Text, txtNumeroPiso.Text,
                txtDepartamento.Text, txtCP.Text, txtLocalidad.Text, txtNumeroTarjeta.Text, 
                DTP_FechaDeNacimiento.Value.Date.ToString("yyyy/MM/dd"));
            this.Close();
        }

        
    }
}
