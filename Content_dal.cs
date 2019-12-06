using Crediflores.CAL.Interface.Page;
using Crediflores.DAL.Class.Functional;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Crediflores.DAL.Class.Page
{
    public class Content : IContent
    {
        #region Functions

        public List<CAL.DTO.Page.Content> GetContent(string pPage)
        {

            using (SqlConnection sqlconnection = new SqlConnection(Connection.Conexion.CadenaConexionBD))
            {
                DataTable dtContent = new DataTable();
                try
                {
                    sqlconnection.Open();
                    SqlCommand sqlcmd = new SqlCommand("GET_CONTENT", sqlconnection);

                    if (pPage == "/")
                    {
                        pPage = "Index.html";
                    }
                    sqlcmd.Parameters.Add("@PAGINA", SqlDbType.VarChar, 255).Value = pPage;
                    sqlcmd.CommandTimeout = 0;
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    dtContent.Load(sqlcmd.ExecuteReader());
                    return mtGetList(dtContent);
                }
                catch (Exception Exc)
                {


                    throw;
                }
                finally
                {
                    if (sqlconnection.State == ConnectionState.Open)
                        sqlconnection.Close();
                }
            }
        }

        public List<CAL.DTO.Page.Content> GetContentAdmin(long pPage)
        {

            using (SqlConnection sqlconnection = new SqlConnection(Connection.Conexion.CadenaConexionBD))
            {
                DataTable dtContent = new DataTable();
                try
                {
                    sqlconnection.Open();
                    SqlCommand sqlcmd = new SqlCommand("GET_CONTENT_LIST", sqlconnection);
                    sqlcmd.Parameters.Add("@PAG_NID", SqlDbType.BigInt, 255).Value = pPage;
                    sqlcmd.CommandTimeout = 0;
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    dtContent.Load(sqlcmd.ExecuteReader());


                    List<Crediflores.CAL.DTO.Page.Content> listReturn = dtContent.DataTableToList<CAL.DTO.Page.Content>();
                    return listReturn;
                }
                catch (Exception Exc)
                {


                    throw;
                }
                finally
                {
                    if (sqlconnection.State == ConnectionState.Open)
                        sqlconnection.Close();
                }
            }
        }

        public List<CAL.DTO.Page.Content> GetList(CAL.DTO.Page.Content content)
        {
            using (SqlConnection sqlconnection = new SqlConnection(Connection.Conexion.CadenaConexionBD))
            {
                DataTable dtVariable = new DataTable();
                try
                {
                    sqlconnection.Open();
                    SqlCommand sqlcmd = new SqlCommand("GET_CONTENT_LIST", sqlconnection);


                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@ID_SECCION",
                        Value = content.section.SectionId,
                        Direction = ParameterDirection.Input,
                        IsNullable = true
                    });
                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@ID_CONTENT_PARENT",
                        Value = content.ContentId,
                        Direction = ParameterDirection.Input,
                        IsNullable = true
                    });

                    sqlcmd.CommandTimeout = 0;
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    dtVariable.Load(sqlcmd.ExecuteReader());

                    return dtVariable.DataTableToList<CAL.DTO.Page.Content>();
                }
                catch
                {

                    throw;
                }
                finally
                {
                    if (sqlconnection.State == ConnectionState.Open)
                        sqlconnection.Close();
                }
            }
        }
        public List<CAL.DTO.Functional.Action> UpdateContent(CAL.DTO.Page.Content content)
        {
            using (SqlConnection sqlconnection = new SqlConnection(Connection.Conexion.CadenaConexionBD))
            {
                DataTable dtVariable = new DataTable();
                try
                {
                    sqlconnection.Open();
                    SqlCommand sqlcmd = new SqlCommand("UPDATE_CONTENT", sqlconnection);

                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@CON_OSTATE",
                        Value = content.ContentState,
                        Direction = ParameterDirection.Input,
                        IsNullable = true
                    });
                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@CON_NID",
                        Value = content.ContentId,
                        Direction = ParameterDirection.Input,
                        IsNullable = true
                    });
                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@RESULT_SP",
                        Direction = ParameterDirection.Output,
                        Size = -1
                    });

                    sqlcmd.CommandTimeout = 0;
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.ExecuteNonQuery();

                    return new List<CAL.DTO.Functional.Action>() {
                        new CAL.DTO.Functional.Action() {
                            State = true
                        }
                    };
                }
                catch
                {

                    throw;
                }
                finally
                {
                    if (sqlconnection.State == ConnectionState.Open)
                        sqlconnection.Close();
                }
            }
        }
        #endregion


        public List<CAL.DTO.Functional.Action> AddComponent(CAL.DTO.Page.Content content)
        {
            using (SqlConnection sqlconnection = new SqlConnection(Connection.Conexion.CadenaConexionBD))
            {
                DataTable dtVariable = new DataTable();
                try
                {
                    sqlconnection.Open();
                    SqlCommand sqlcmd = new SqlCommand("SPR_INS_NEW_COMPONENT", sqlconnection);


                    SqlParameter param = new SqlParameter("@T_VALUE_FIELD", SqlDbType.Structured)
                    {
                        TypeName = "DBO.VARIABLE_COMPONENT",
                        Value = Helper.ToDataTable(content.ListComponent)
                    };
                    sqlcmd.Parameters.Add(param);


                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@PI_CDESCRIPTION",
                        Value = content.ContentDescription,
                        Direction = ParameterDirection.Input,
                        IsNullable = true
                    });

                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@PNID_COMPONENTE",
                        Value = content.ContentId,
                        Direction = ParameterDirection.Input,
                        IsNullable = true
                    });

                    sqlcmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@RESULT_SP",
                        Direction = ParameterDirection.Output,
                        Size = -1
                    });

                    sqlcmd.CommandTimeout = 0;
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.ExecuteNonQuery();

                    return new List<CAL.DTO.Functional.Action>() {
                        new CAL.DTO.Functional.Action() {
                            State = true
                        }
                    };
                }
                catch
                {

                    throw;
                }
                finally
                {
                    if (sqlconnection.State == ConnectionState.Open)
                        sqlconnection.Close();
                }
            }
        }

        #region  Methods

        private List<CAL.DTO.Page.Content> mtGetList(DataTable dtContent)
        {
            List<CAL.DTO.Page.Content> lsContent = new List<CAL.DTO.Page.Content>();

            foreach (DataRow dtrContent in dtContent.Rows)
            {
                lsContent.Add(new CAL.DTO.Page.Content()
                {
                    ContentDescription = dtrContent["DESCRIPCION_CONTENIDO"].ToString(),
                    ContentId = long.Parse(dtrContent["ID_CONTENIDO"].ToString()),
                    TypeContentId = long.Parse(dtrContent["ID_TIPO_CONTENIDO"].ToString()),
                    ContentName = dtrContent["NOMBRE_CONTENIDO"].ToString(),
                    ContentOrder = long.Parse(dtrContent["ORDEN_CONTENIDO"].ToString()),
                    ContentState = bool.Parse(dtrContent["ESTADO_CONTENIDO"].ToString()),
                    ContentIdParent = long.Parse(dtrContent["ID_CONTENIDO_PADRE"].ToString().Length == 0 ? "0" : dtrContent["ID_CONTENIDO_PADRE"].ToString()),
                });
            }
            return lsContent;
        }
        #endregion

    }
}
