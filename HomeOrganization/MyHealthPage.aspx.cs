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
        DataBase db = new DataBase();
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

        protected void ShowAutoPanelButton_Click(object sender, EventArgs e)
        {
            AutoPanel.Visible = true;
            MenualPanel.Visible = false;
            FoodPanel.Visible = false;
        }

        protected void ShowMenualPanelButton_Click(object sender, EventArgs e)
        {
            MenualPanel.Visible = true;
            AutoPanel.Visible = false;
            FoodPanel.Visible = false;
        }

        protected void ShowFoodPanelButton_Click(object sender, EventArgs e)
        {
            FoodPanel.Visible = true;
            AutoPanel.Visible = false;
            MenualPanel.Visible = false;
        }

        protected void AddAUtoButtonPanel_Click(object sender, EventArgs e)
        {
            string DateToday = DateTime.Now.ToShortDateString();
            string dayToday = DateTime.Now.DayOfWeek.ToString();
            string TimeNow = DateTime.Now.ToShortTimeString();
            string KindOfOut = KindOfOut_DropDownList.Text;
            string Escape = EscapeDropDownList.Text;
            db.Add_AutoPanelData(DateToday, TimeNow, KindOfOut, Escape);
        }

        protected void AddMenualPanelButton_Click(object sender, EventArgs e)
        {
            string DateToday = DateTextBox.Text;
            string dayToday = DAYDropDownList.Text;
            string TimeNow = TimeHour_DropDownList.Text + ":" + TimeMinute_DropDownList2;
            string KindOfOut = KindOfOut_DropDownList2.Text;
            string Escape = EscapeDropDownList0.Text;
            db.Add_AutoPanelData(DateToday,dayToday, TimeNow, KindOfOut, Escape);
    
        }

        protected void UpdateFoodPanelButton_Click(object sender, EventArgs e)
        {
            string Breakfast = BreakfastTextBox.Text;
            string Lunch = LunchTextBox.Text;
            string Dinner = DinnerTextBox.Text;
            db.UpdateFoodPanelToTable(Breakfast, Lunch, Dinner);
        } 


        

        


        

        


        


    }
}