using Crediflores.CAL.DTO.Page;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Crediflores.BLL.Page
{
    public class Content
    {

        #region Functions

        public List<CAL.DTO.Page.Content> GetContent(string pPage)
        {

            return new DAL.Class.Page.Content().GetContent(pPage);
        }
        public List<CAL.DTO.Functional.Action> GetList(CAL.DTO.Page.Content content)
        {

            CAL.Interface.Page.IContent objContent = new DAL.Class.Page.Content();
            return new List<CAL.DTO.Functional.Action>()
            {
                new CAL.DTO.Functional.Action()
                {
                    Result = objContent.GetList(content),
                    ErrorDetail = "",
                    State = true
                }
            };
        }

        public List<CAL.DTO.Functional.Action> GetListAdmin(long idPage)
        {

            CAL.Interface.Page.IContent objContent = new DAL.Class.Page.Content();
            return new List<CAL.DTO.Functional.Action>()
            {
                new CAL.DTO.Functional.Action()
                {
                    Result = objContent.GetContentAdmin(idPage),
                    ErrorDetail = "",
                    State = true
                }
            };
        }

        public List<CAL.DTO.Functional.Action> UpdateContent(CAL.DTO.Page.Content content)
        {

            CAL.Interface.Page.IContent objContent = new DAL.Class.Page.Content();
            return new List<CAL.DTO.Functional.Action>()
            {
                new CAL.DTO.Functional.Action()
                {
                    Result = objContent.UpdateContent(content),
                    ErrorDetail = "",
                    State = true
                }
            };
        }

        public List<CAL.DTO.Functional.Action> AddComponent(CAL.DTO.Page.Content content)
        {

            CAL.Interface.Page.IContent objContent = new DAL.Class.Page.Content();
            return new List<CAL.DTO.Functional.Action>()
            {
                new CAL.DTO.Functional.Action()
                {
                    Result = objContent.AddComponent(content),
                    ErrorDetail = "",
                    State = true
                }
            };
        }
        

        #endregion
    }
}
