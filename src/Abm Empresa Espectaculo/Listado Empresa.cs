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
    public partial class ListadoEmpresa : Form
    {
        public ListadoEmpresa()
        {
            InitializeComponent();
        }

        private void Btn_Cerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_Nueva_Empresa_Click(object sender, EventArgs e)
        {
            ListadoEmpresa listadoEmpresa = new ListadoEmpresa();
            listadoEmpresa.ShowDialog();
        }
    }
}
