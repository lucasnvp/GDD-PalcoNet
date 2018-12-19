using PalcoNet.Conexiones;
using PalcoNet.Funcionalidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.Abm_Grado
{
    public partial class BusquedaPorGrado : Form
    {

        private int IdUsuario { get; set; }

        public BusquedaPorGrado(int idUsuario)
        {
            InitializeComponent();
            this.IdUsuario = idUsuario;
            cmbGrado = LLenarCombo.FillComboBox(cmbGrado, "SP_Get_Grados_Publicacion");
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            SqlServer sql = new SqlServer();
            Parametros parametros = new Parametros();
            parametros.AgregarParametro("Grado_Id", cmbGrado.SelectedValue.ToString());
            parametros.AgregarParametro("Usuario_Id", this.IdUsuario.ToString());
            try
            {
                DataTable table = sql.EjecutarSp("SP_Update_Grados_Publicacion", parametros);
                if (table.Rows.Count > 0 && table.Rows[0].ItemArray[0].ToString() == "ERROR")
                {
                    MessageBox.Show(table.Rows[0].ItemArray[1].ToString());
                }
                else
                {
                    MessageBox.Show("Grado De Publicacion Actualizado");
                }
            }
            catch (Exception error)
            {
                Console.WriteLine(error);
            }
            this.Close();
        }
    }
}
