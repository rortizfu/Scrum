using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Crediflores.CAL.Interface.Page
{
    public interface IContent
    {

        #region Functions

        List<CAL.DTO.Page.Content> GetList(CAL.DTO.Page.Content content);

        List<CAL.DTO.Page.Content> GetContentAdmin(long pPage);
        List<CAL.DTO.Functional.Action> UpdateContent(CAL.DTO.Page.Content content);

        List<CAL.DTO.Functional.Action> AddComponent(CAL.DTO.Page.Content content);
        #endregion
    }
}
