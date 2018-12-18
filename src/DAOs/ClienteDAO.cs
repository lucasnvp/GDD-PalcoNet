using PalcoNet.Conexiones;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.DAOs
{
    class ClienteDAO
    {
        public static void CreateCliente(
            string username,    string password,    string nombre,  string apellido,        string tipo_dni,
            string nro_doc,     string cuil,        string mail,    string telefono,        string domicilio_Calle,
            string nro_Calle,   string nro_Piso,    string dpto,    string codigo_Postal,   string localidad,
            string nro_tarjeta, string fecha_nac)
        {
            string result = "";
            SqlServer sql = new SqlServer();
            Parametros parametros = new Parametros();

            SHA256CryptoServiceProvider sha256 = new SHA256CryptoServiceProvider();
            UTF8Encoding utf8 = new UTF8Encoding();
            string passwordHash = BitConverter.ToString(sha256.ComputeHash(utf8.GetBytes(password.Trim())));

            parametros.AgregarParametro("Username", username.Trim());
            parametros.AgregarParametro("Password", passwordHash);
            parametros.AgregarParametro("Nombre", nombre.Trim());
            parametros.AgregarParametro("Apellido", apellido.Trim());
            parametros.AgregarParametro("Tipo_Dni", tipo_dni.Trim());
            parametros.AgregarParametro("Nro_Doc", nro_doc.Trim());
            parametros.AgregarParametro("Cuil", cuil.Trim());
            parametros.AgregarParametro("Mail", mail.Trim());
            if (telefono.Equals(""))
            {
                parametros.AgregarParametro("Telefono", DBNull.Value);
            }
            else
            {
                parametros.AgregarParametro("Telefono", telefono.Trim());
            }
            parametros.AgregarParametro("Dominicio_Calle", domicilio_Calle.Trim());
            if (nro_Calle.Equals(""))
            {
                parametros.AgregarParametro("Nro_Calle", DBNull.Value);
            }
            else
            {
                parametros.AgregarParametro("Nro_Calle", nro_Calle.Trim());
            }
            if (nro_Piso.Equals(""))
            {
                parametros.AgregarParametro("Nro_Piso", DBNull.Value);
            }
            else
            {
                parametros.AgregarParametro("Nro_Piso", nro_Piso.Trim());
            }
            if (dpto.Equals(""))
            {
                parametros.AgregarParametro("Dpto", DBNull.Value);
            }
            else
            {
                parametros.AgregarParametro("Dpto", dpto.Trim());
            }
            parametros.AgregarParametro("Codigo_Postal", codigo_Postal.Trim());
            parametros.AgregarParametro("Localidad", localidad.Trim());
            parametros.AgregarParametro("Nro_Tarjeta", nro_tarjeta.Trim());
            parametros.AgregarParametro("Fecha_Nac", fecha_nac);
            
            try
            {
                DataTable table = sql.EjecutarSp("SP_Create_Cliente", parametros);
                if (table.Rows.Count > 0 && table.Rows[0].ItemArray[0].ToString() == "ERROR")
                {
                    MessageBox.Show(table.Rows[0].ItemArray[1].ToString());
                }
                else
                {
                    MessageBox.Show("Cliente creado");
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }

        }
    }
}
