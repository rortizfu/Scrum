using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Crediflores.CAL.DTO.Page
{
    public class Content
    {

        #region Propierties

        /*Content*/
        public long ContentId { get; set; }
        public long TypeContentId { get; set; }
        public string ContentName { get; set; }
        public string ContentDescription { get; set; }
        public long ContentOrder { get; set; }
        public long? ContentIdParent { get; set; }
        public Boolean ContentState { get; set; }
        public long Component { get; set; }

        public long ComponentCantVarText { get; set; }
        public long ComponentCantVarImage { get; set; }


        public Section section { get; set; }
        #endregion
    }
}
