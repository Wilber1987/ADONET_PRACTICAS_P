using CAPA_DATOS;
using System;
using System.Collections.Generic;
using System.Text;

namespace CAPA_NEGOCIO
{
    public class InformeEjemplo1
    {
        public string Descipcion { get; set; }
        public int Num { get; set; }
       
        public List<Object> Params  { get; set; }

    public Object TakeInforme(InformeEjemplo1 Inst)
        {
            try
            {
                List<Object> SqlParams = new List<Object>();
                SqlParams.Add(Convert.ToDateTime(Params[0]));
                SqlParams.Add(Convert.ToDateTime(Params[1]));
                SqlADOConexion.IniciarConexion("sa", "zaxscd");
                var Informe = SqlADOConexion.SQLM.TakeListWithProcedure(
                    "usp_informeMatriculas", Inst,  SqlParams);
                return Informe;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
