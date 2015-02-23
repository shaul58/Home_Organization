using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Threading;

namespace HomeOrganization
{
    public partial class MainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void superImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("super_page.aspx?UserId=555");
        }

        protected void messagesImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("messagesForm.aspx");
        }

        
    }
    

}
