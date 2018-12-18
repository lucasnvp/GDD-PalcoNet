using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.Funcionalidades
{
    class Validaciones
    {
        private bool validado = true;

        private void vacio(String st)
        {
            if (st.Length == 0)
            {
                MessageBox.Show("El campo " + st + "no debe ser vacio");
            }

        }

        public bool letras(KeyPressEventArgs e)
        {
            if (Char.IsLetter(e.KeyChar))
            {
                return validado;
            }
            else
            {
                MessageBox.Show("Debe ingresar Letras");
                return validado = false;
            }
        }



    }
}
