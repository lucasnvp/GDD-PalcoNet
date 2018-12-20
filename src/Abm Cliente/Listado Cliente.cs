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
    public partial class ListadoClientes : Form
    {
        public ListadoClientes()
        {
            InitializeComponent();
        }

        private void Btn_Cerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_Nuevo_Cliente_Click(object sender, EventArgs e)
        {
            AltaClientes altaCliente = new AltaClientes();
            altaCliente.ShowDialog();
        }

        private void Btn_Buscar_Click(object sender, EventArgs e)
        {

        }
    }
}
