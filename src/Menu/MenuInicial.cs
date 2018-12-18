using PalcoNet.Conexiones;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PalcoNet.Abm_Rol;
using PalcoNet.Registro_de_Usuario;

namespace PalcoNet.Menu
{
    public partial class MenuInicial : Form
    {
        private int IdUsuario { get; set; }
        private string RolUsuario { get; set; }

        public MenuInicial(int idUsuario)
        {
            InitializeComponent();
            this.IdUsuario = idUsuario;
        }

        private void Btn_Salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        public void LevantarRol(string rol)
        {
            SqlServer sql = new SqlServer();
            Parametros listaParametros = new Parametros();
            DataTable tabla;
            this.RolUsuario = rol;
            listaParametros.AgregarParametro("Nombre_Rol", rol);
            tabla = sql.EjecutarSp("SP_Get_Funcionalidades_Rol", listaParametros);
            foreach (Control subchild in this.Controls)
            {
                for (int i = 0; i < tabla.Rows.Count; i++)
                {
                    if (subchild.Name == tabla.Rows[i][0].ToString())
                    {
                        subchild.Enabled = tabla.Rows[i][1].Equals(true);
                        subchild.Visible = tabla.Rows[i][1].Equals(true);
                    }
                }
            }
        }

        private void Btn_ABM_Rol_Click(object sender, EventArgs e)
        {
            AbmRol rol = new AbmRol();
            rol.ShowDialog();
        }

        private void Btn_Generar_Rendicion_Click(object sender, EventArgs e)
        {

        }

        private void Btn_ABM_Usuario_Click(object sender, EventArgs e)
        {

        }

        private void Btn_ABM_Cliente_Click(object sender, EventArgs e)
        {

        }

        private void Btn_ABM_Empresa_Click(object sender, EventArgs e)
        {

        }

        private void Btn_ABM_Rubro_Click(object sender, EventArgs e)
        {

        }

        private void Btn_ABM_Grado_De_Publicacion_Click(object sender, EventArgs e)
        {

        }

        private void Btn_Generar_Publicacion_Click(object sender, EventArgs e)
        {

        }

        private void Btn_Editar_Publicacion_Click(object sender, EventArgs e)
        {

        }

        private void Btn_Comprar_Click(object sender, EventArgs e)
        {

        }

        private void Btn_Historial_De_Cliente_Click(object sender, EventArgs e)
        {

        }

        private void Btn_Canje_De_Puntos_Click(object sender, EventArgs e)
        {

        }

        private void Btn_Listado_Estadistico_Click(object sender, EventArgs e)
        {

        }

    }
}
