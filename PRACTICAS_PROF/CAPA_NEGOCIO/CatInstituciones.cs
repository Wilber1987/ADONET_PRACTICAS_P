using System;
using System.Collections.Generic;
using System.Text;
using CAPA_DATOS;

namespace CAPA_NEGOCIO
{
    public class CatInstituciones
    {
        private string TableName = "Cat_instituciones";
        public int Id_Institucion { get; set; }
        public string Nombre { get; set; }
        public string Estado { get; set; }
        public string Descripcion { get; set; }

        public Object Save(CatInstituciones Inst)
        {
            try
            {
                SqlADOConexion.IniciarConexion("sa", "zaxscd");
                if (Inst.Id_Institucion == -1)
                {
                    return SqlADOConexion.SQLM.InsertObject(TableName, Inst);
                }
                else
                {
                    return SqlADOConexion.SQLM.UpdateObject(TableName, Inst, "Id_Institucion");
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
        public Object Get(CatInstituciones Inst)
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
