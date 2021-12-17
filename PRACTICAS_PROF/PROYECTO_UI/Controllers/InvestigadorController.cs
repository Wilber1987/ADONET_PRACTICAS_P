using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CAPA_NEGOCIO;
using Newtonsoft.Json;

namespace PROYECTO_UI.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class InvestigadorController : ControllerBase
    {
        [HttpPost]
        public Object TakeInvestigatorData()
        {
            List<Object> Response = new List<Object>();
            TblInvestigadoresProfile IP = new TblInvestigadoresProfile();
            Response.Add(IP.Get(IP));
            CatPaises CP = new CatPaises();
            Response.Add(CP.GetPaises(CP));
            CatInstituciones CI = new CatInstituciones();
            Response.Add(CI.Get(CI));
            CatIdiomas CID = new CatIdiomas();
            Response.Add(CID.Get(CID));
            return Response;
        }
        [HttpPost]
        public object SaveInvestigador(object ObjInst)
        {
            TblInvestigadoresProfile Inst = JsonConvert.DeserializeObject<TblInvestigadoresProfile>(ObjInst.ToString());
            Inst.Save(Inst);
            return true;
        }
    }
}
