#pragma checksum "C:\Users\User\source\repos\PRACTICAS_PROF\PROYECTO_UI\Pages\ModuloInformes\ViewInforme1.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e8de4085d93bdeebbe3e9e5b0a1521188f418ee0"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(PROYECTO_UI.Pages.ModuloInformes.Pages_ModuloInformes_ViewInforme1), @"mvc.1.0.razor-page", @"/Pages/ModuloInformes/ViewInforme1.cshtml")]
namespace PROYECTO_UI.Pages.ModuloInformes
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\User\source\repos\PRACTICAS_PROF\PROYECTO_UI\Pages\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\User\source\repos\PRACTICAS_PROF\PROYECTO_UI\Pages\_ViewImports.cshtml"
using PROYECTO_UI;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\User\source\repos\PRACTICAS_PROF\PROYECTO_UI\Pages\_ViewImports.cshtml"
using PROYECTO_UI.Data;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e8de4085d93bdeebbe3e9e5b0a1521188f418ee0", @"/Pages/ModuloInformes/ViewInforme1.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f3ed3a00b84fd3d4e0e5f7421f480a9ee7e71a06", @"/Pages/_ViewImports.cshtml")]
    public class Pages_ModuloInformes_ViewInforme1 : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<script type=""module"">
    import CreateTableInforme from ""../js/InformeComponent.js"";
    const CargarDatos = async () => {
        let UrlP = ""../api/Informes/TakeInformeEjemplo1"";
        const ObjInst = {
            Params: [Fecha1.value, Fecha2.value]
        }
        let response = await fetch(UrlP, {
            method: ""POST"",
            headers: {
                'Content-Type': ""application/json; charset=utf-8"",
                'Accept': ""*/*""
            },
            body: JSON.stringify(ObjInst)
        });
        response = await response.json();
        console.log(response);
        labelSubtitle.innerText = `Informe de matriculados por carrera 
        Del ${Fecha1.value} al ${Fecha2.value}`;
        CreateTableInforme(response, TableData, [""descipcion"", ""num""]);
        let sum = 0;
        response.forEach(element => {
            sum = sum + element.num;
        });

        LabelTotal.append("" "" + sum)
    }
    window.onload = async () => {       
       ");
            WriteLiteral(@" CargarDatos();
        BtnUpdate.onclick = () => {
            CargarDatos();
        }
        BtnPrint.onclick = () => {
            const PrintNode = Page.innerHTML;
            const ventimp = window.open(' ', 'popimpr');
            ventimp.document.write(PrintNode);
            ventimp.document.close();
            ventimp.print();
            ventimp.close();
        }
    }
</script>

<div class=""FrmContainer"">   
        <input type=""date"" id=""Fecha1"" value=""1990-01-01"" />
        <input type=""date"" id=""Fecha2"" value=""2022-01-01"" /> 
</div>
<div class=""FrmContainer"">
    <input class=""BTN BTNOk2"" type=""button"" id=""BtnPrint"" value=""Imprimir"" />
    <input class=""BTN BTNOk2"" type=""button"" id=""BtnUpdate"" value=""Actualizar"" />
</div>
<div class=""InformeContainer"">
    <div class=""page"" id=""Page"">
        <style>
            .InformeContainer{
                background-color: #b9b9b9;
                padding: 20px;
                height: 600px;
                overflow: au");
            WriteLiteral(@"to;
                border: solid 2px #888;
            }
            .page {
                background-color: #fff;
                width: 17cm;
                height: 25.7cm;
                display: block;
                margin: 0 auto;
                margin-bottom: 0.5cm;
                box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
                padding: 1cm 2cm;
            }
            h1, h4 {
                text-align: center;
            }
            .TableInforme {
                width: 100%;
                margin-bottom: 30px;
                
            }
                .TableInforme td, .TableInforme th {
                   border-bottom: solid 1px #b9b9b9;
                }
        </style>
        <section>
            <h1>
                Informe
            </h1>
            <h4 id=""labelSubtitle"">Informe de matriculados por carrera </h4>
        </section>
        <table id=""TableData"" class=""TableInforme"">
            <thead>
            </thead>
   ");
            WriteLiteral("         <tbody>\r\n            </tbody>\r\n        </table>\r\n        <hr />\r\n        <label id=\"LabelTotal\"> Total: </label>\r\n    </div>    \r\n</div>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PROYECTO_UI.Pages.ModuloInformes.ViewInforme1Model> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PROYECTO_UI.Pages.ModuloInformes.ViewInforme1Model> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PROYECTO_UI.Pages.ModuloInformes.ViewInforme1Model>)PageContext?.ViewData;
        public PROYECTO_UI.Pages.ModuloInformes.ViewInforme1Model Model => ViewData.Model;
    }
}
#pragma warning restore 1591
