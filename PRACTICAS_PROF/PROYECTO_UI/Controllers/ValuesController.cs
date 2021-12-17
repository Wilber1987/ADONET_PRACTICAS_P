using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Reflection;
using CAPA_NEGOCIO;

namespace PROYECTO_UI.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        [HttpPost]
        public object SavePais(object ObjInst)
        {
            CatPaises Inst = JsonConvert.DeserializeObject<CatPaises>(ObjInst.ToString());
            Inst.Save(Inst);
            return true;
        }
        [HttpPost]
        public object GetPaises()
        {
            CatPaises Inst = new CatPaises();
            return Inst.GetPaises(Inst); 
        }
    }
}
