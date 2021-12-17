using System;
using System.Collections.Generic;
using System.Text;
using CAPA_DATOS;
using Newtonsoft.Json;

namespace CAPA_NEGOCIO
{
    public class TblInvestigadoresProfile
    {
        private string TableName = "Tbl_InvestigatorProfile";
        public int Id_Investigador { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public DateTime FechaNac { get; set; }
        public string Sexo { get; set; }
        public string DNI { get; set; }
        public string Correo_institucional { get; set; }
        public int Id_Pais_Origen { get; set; }
        public int Id_Institucion { get; set; }
        public string Indice_H { get; set; }
        public string Estado { get; set; }
        public List<Object> Idiomas = new List<Object>();

        public Object Save(TblInvestigadoresProfile Inst)
        {
            try
            {
                SqlADOConexion.IniciarConexion("sa", "zaxscd");
                if (Inst.Id_Investigador == -1)
                {
                    int IdInvestigador = Convert.ToInt32(SqlADOConexion.SQLM.InsertObject(TableName, Inst));
                    foreach (Object Idioma in Inst.Idiomas)
                    {                        
                        CatIdiomas NewId = new CatIdiomas();
                        NewId.Id_Idioma = (JsonConvert.DeserializeObject<CatIdiomas>(Idioma.ToString())).Id_Idioma ;
                        NewId.Id_Investigador = IdInvestigador;
                        NewId.SaveIdiomaInvestigador(NewId);
                    }
                    return true;
                }
                else
                {
                    return SqlADOConexion.SQLM.UpdateObject(TableName, Inst, "Id_Investigador");
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
        public Object Get(TblInvestigadoresProfile Inst)
        {
            try
            {
                SqlADOConexion.IniciarConexion("sa", "zaxscd");
                return SqlADOConexion.SQLM.TakeList(TableName, Inst, null);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
