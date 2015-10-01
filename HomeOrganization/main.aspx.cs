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
        DataBase db;
        public bool isClicked { get; set; }
        public string UserName { get; set; }
        //public string User_ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            //User_ID = UserId;
            if (isClicked)
            {
                Response.Redirect("main.aspx?UserId=555");
                logInUserLabel.Text = "ברוך הבא : " + UserNameTextBox.Text;
            }

            if (!Page.IsPostBack)
            {
                UserPasswordTextBox.Text = "";
                //UserPasswordTextBox.Focus();
                UserNameTextBox.Text = "";
                UserNameTextBox.Focus();
            }
            UserName = Request.QueryString["UserName"];
            if (UserName != null)
            {
                logInButton.Visible = false;
                registerButton.Visible = false;
                UserNameTextBox.Visible = false;
                UserPasswordTextBox.Visible = false;
                logInUserLabel.Text = "ברוך הבא : " + UserName;
            }

        }

        protected void superImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("super_page.aspx?UserName=" + UserName);
        }

        protected void messagesImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("messagesForm.aspx?UserId=" + UserName);
        }

        protected void logInButton_Click(object sender, EventArgs e)
        {
            isClicked = true;
            db = new DataBase();
            UserName = db.LoginUser(UserNameTextBox.Text, UserPasswordTextBox.Text);
            if (UserName != null)
            {
                Response.Redirect("main.aspx?UserName=" + UserNameTextBox.Text);
            }
            else
            {
                // error in logIn
            }
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("MyHealthPage.aspx?UserName=" + UserName);
        }




    }
}
