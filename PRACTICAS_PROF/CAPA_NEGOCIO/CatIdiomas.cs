using System;
using System.Collections.Generic;
using System.Text;
using CAPA_DATOS;

namespace CAPA_NEGOCIO
{
    public class CatIdiomas
    {
        private string TableName = "Cat_Idiomas";
        public int Id_Idioma { get; set; }
        public int? Id_Investigador { get; set; }
        public string Descripcion { get; set; }
        public Object SaveIdiomaInvestigador(CatIdiomas Inst)
        {
            try
            {
                return SqlADOConexion.SQLM.InsertObject("Tbl_IdiomasInv", Inst);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public Object Save(CatIdiomas Inst)
        {
            try
            {
                SqlADOConexion.IniciarConexion("sa", "zaxscd");
                if (Inst.Id_Idioma == -1)
                {
                    return SqlADOConexion.SQLM.InsertObject(TableName, Inst);
                }
                else
                {
                    return SqlADOConexion.SQLM.UpdateObject(TableName, Inst, "Id_Idioma");
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
        public Object Get(CatIdiomas Inst)
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
