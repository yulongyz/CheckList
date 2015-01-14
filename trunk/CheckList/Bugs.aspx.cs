using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckList
{
    public partial class Bugs : System.Web.UI.Page
    {
        protected List<checklist> ListBug;

        protected void Page_Load(object sender, EventArgs e)
        {
            var ctx = new DataClassesDataContext();
            var query = from one in ctx.checklist
                        orderby one.checkid descending
                        select one;

            ListBug = query.ToList();
        }
    }
}