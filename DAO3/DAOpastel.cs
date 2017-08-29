using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DAO3
{
    public class DAOpastel
    {
        private SqlConnection conexion;
        
        public DAOpastel()
        {
            string cadenaConexion = ConfigurationManager.ConnectionStrings["PasteleriaDBConnectionString"].ConnectionString;
            conexion = new SqlConnection(cadenaConexion);
        }
        public bool InsertarPastel(DTOPastel DTOPastel)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_insertPastel",  conexion );
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@nombrePastel", DTOPastel.gsNombre);
                comando.Parameters.Add("@tamanio", DTOPastel.gsTamanio);
                int resultado = comando.ExecuteNonQuery();
                return (resultado >= 1) ? true : false;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
                throw;
            }

        }

        public bool CambiarEstadoarPastel(DTOPastel DTOPastel)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_cambiarEstadoPastel", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@idPastel", DTOPastel.gsIdPastel);
                comando.Parameters.AddWithValue("@estado", DTOPastel.gsEstado);
                int resultado = comando.ExecuteNonQuery();
                return (resultado >= 1) ? true : false;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
                throw;
            }

        }

        public bool ActualizarrPastel(DTOPastel DTOPastel)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand("actualizarPastel", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@idPastel", DTOPastel.gsIdPastel);
                comando.Parameters.Add("@nombrePastel", DTOPastel.gsNombre);
                comando.Parameters.Add("@tamanio", DTOPastel.gsTamanio);
                int resultado = comando.ExecuteNonQuery();
                return (resultado >= 1) ? true : false;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
                throw;
            }

        }

        public DataTable listarPasteles()
        {
            try
            {
                DataTable listao = new DataTable();
                conexion.Open();
                SqlCommand comando = new SqlCommand("sp_listarPastel", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                adaptador.Fill(listao);
                return listao;
                
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
                throw;
            }
        }
    }
}
