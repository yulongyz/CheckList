using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckList
{
    public partial class AddBug : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            var ctx = new DataClassesDataContext();
            var checklist = new checklist();
            checklist.filename = FileName.Text;
            checklist.persons = Persons.Text;
            checklist.remark = Remark.Text;
            checklist.addtime = CMTool.UNIX_TIMESTAMP(DateTime.Now);

            string filename = string.Format("{0}{1}", CMTool.UNIX_TIMESTAMP(DateTime.Now),
                System.IO.Path.GetExtension(Bug.FileName).ToLower());
            string serverpath = Server.MapPath("~/bug/") + filename;
            Bug.PostedFile.SaveAs(serverpath);

            checklist.bug = "/bug/" + filename;

            ctx.checklist.InsertOnSubmit(checklist);
            ctx.SubmitChanges();
        }
    }
}