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
    public class InformesController : ControllerBase
    {
        [HttpPost]
        public object TakeInformeEjemplo1(object ObjInst)
        {
            InformeEjemplo1 Inst = JsonConvert.DeserializeObject<InformeEjemplo1>(ObjInst.ToString());
            return Inst.TakeInforme(Inst);
        }

    }
}
