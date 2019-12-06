using Crediflores.CAL.DTO.Page;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Crediflores_SAL.Controllers.Page
{
    public class ContentController : ApiController
    {

        [HttpPost]
        [ActionName("GetList")]
        public List<Crediflores.CAL.DTO.Functional.Action> GetList([FromBody] Content content)
        {

            return new Crediflores.BLL.Page.Content().GetList(content);
        }

        [HttpPost]
        [ActionName("GetListAdmin")]
        public List<Crediflores.CAL.DTO.Functional.Action> GetListAdmin([FromBody] long idPage)
        {

            return new Crediflores.BLL.Page.Content().GetListAdmin(idPage);
        }

        [HttpPost]
        [ActionName("UpdateContent")]
        public List<Crediflores.CAL.DTO.Functional.Action> UpdateContent([FromBody] Crediflores.CAL.DTO.Page.Content content)
        {

            return new Crediflores.BLL.Page.Content().UpdateContent(content);
        }

        [HttpPost]
        [ActionName("AddComponent")]
        public List<Crediflores.CAL.DTO.Functional.Action> AddComponent([FromBody] Crediflores.CAL.DTO.Page.Content content)
        {

            return new Crediflores.BLL.Page.Content().AddComponent(content);
        }
    }
}
