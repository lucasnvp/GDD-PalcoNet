using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Configuration;
using System.Text;
using System.Threading.Tasks;
using PalcoNet.Properties;

namespace PalcoNet.Conexiones
{
    class SqlServer
    {
        public SqlConnection CrearSqlConnection()
        {
            return new SqlConnection(Settings.Default.GD2C2018ConnectionString);
        }

        public SqlConnection AbrirConnection()
        {
            SqlConnection sqlConexion = new SqlConnection(Settings.Default.GD2C2018ConnectionString);
            try
            {
                sqlConexion.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
            return sqlConexion;
        }

        public static void CerraConnection(SqlConnection sqlConnection)
        {
            try
            {
                sqlConnection.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }

        public DataSet EjecutarConsulta(String query)
        {
            if (query.Length == 0)
            {
                throw (new Exception());
            }
            try
            {
                DataSet dato = new DataSet();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(query, AbrirConnection());
                dataAdapter.Fill(dato);
                return dato;
            }
            catch (Exception)
            {
                throw (new Exception());
            }
        }

        public DataTable EjecutarSp(string procedure, Parametros parametros)
        {
            SqlCommand cmdCommand = new SqlCommand();
            SqlDataAdapter dataAdapter;
            DataTable dataTable = new DataTable();

            try
            {
                cmdCommand.CommandType = CommandType.StoredProcedure;
                cmdCommand.Connection = AbrirConnection();
                cmdCommand.CommandText = "[" + Settings.Default.SQL_Schema + "].[" + procedure + "]";

                for (int i = 0; i < parametros.Lista.Count; i++)
                {
                    cmdCommand.Parameters.AddWithValue("@" + parametros.Lista[i].Nombre, parametros.Lista[i].Valor);
                }

                dataAdapter = new SqlDataAdapter(cmdCommand);
                dataAdapter.Fill(dataTable);
                CerraConnection(cmdCommand.Connection);
                cmdCommand.Dispose();
            }
            catch (Exception e)
            {
                dataTable.Columns.Add("0", Type.GetType("System.String"));
                dataTable.Columns.Add("1", Type.GetType("System.String"));
                DataRow dataRow = dataTable.NewRow();
                dataRow[0] = "ERROR";
                dataRow[1] = e.ToString();
                dataTable.Rows.Add(dataRow);
                return dataTable;
            }
            return dataTable;
        }

        public DataTable EjecutarSp(string procedure)
        {
            SqlCommand cmdCommand = new SqlCommand();
            SqlDataAdapter dataAdapter;
            DataTable dataTable = new DataTable();
            try
            {
                cmdCommand.CommandType = CommandType.StoredProcedure;
                cmdCommand.Connection = AbrirConnection();
                cmdCommand.CommandText = "[" + Settings.Default.SQL_Schema + "].[" + procedure + "]";
                dataAdapter = new SqlDataAdapter(cmdCommand);
                dataAdapter.Fill(dataTable);
                CerraConnection(cmdCommand.Connection);
                cmdCommand.Dispose();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
            return dataTable;
        }

    }
}
