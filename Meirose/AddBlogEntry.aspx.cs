using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Meirose
{
    public partial class AddBlogEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEntry_Click(object sender, EventArgs e)
        {
            BlogEntry entry = new BlogEntry();
            entry.Title = txtTitle.Text;
            entry.Date = DateTime.Now;
            CO5027Entities1 db = new CO5027Entities1();
            db.BlogEntries.Add(entry);
            db.SaveChanges();
        }
    }
}