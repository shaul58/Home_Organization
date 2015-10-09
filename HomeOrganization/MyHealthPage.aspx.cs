using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeOrganization
{
    public partial class MyHealthPage : System.Web.UI.Page
    {
        public string UserName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName = Request.QueryString["UserName"];
            if (UserName != null)
            {
                logInUserLabel.Text = "ברוך הבא : " + UserName;
            }
            BreakfastTextBox.Focus();
        }

        protected void HomeLogoButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("main.aspx?UserName=" + UserName);
        }

        protected void AddAutoButton_Click(object sender, EventArgs e)
        {
            AutoPanel.Visible = true;
            MenualPanel.Visible = false;
            string time = DateTime.Now.ToShortTimeString();
        }

        protected void AddMenualButton_Click(object sender, EventArgs e)
        {
            MenualPanel.Visible = true;
            AutoPanel.Visible = false;
        }


        


        

        


        


    }
}