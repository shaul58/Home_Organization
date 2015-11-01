using System;
using System.Collections.Generic;
using System.Drawing;
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
            //
            string hexColor = "#FF6699";

            Color myColor = System.Drawing.ColorTranslator.FromHtml(hexColor);

            AutoPanel.BackColor = myColor;
        }

        protected void ShowMenualPanelButton_Click(object sender, EventArgs e)
        {
            MenualPanel.Visible = true;
            AutoPanel.Visible = false;
            FoodPanel.Visible = false;
            //
            string hexColor = "#FF6600";

            Color myColor = System.Drawing.ColorTranslator.FromHtml(hexColor);

            MenualPanel.BackColor = myColor;
        }

        protected void ShowFoodPanelButton_Click(object sender, EventArgs e)
        {
            FoodPanel.Visible = true;
            AutoPanel.Visible = false;
            MenualPanel.Visible = false;
            //
            string hexColor = "#FFCC99";

            Color myColor = System.Drawing.ColorTranslator.FromHtml(hexColor);

            FoodPanel.BackColor = myColor;
        }

        protected void AddAUtoButtonPanel_Click(object sender, EventArgs e)
        {
            string DateToday = DateTime.Now.ToShortDateString();
            string dayToday = DateTime.Now.DayOfWeek.ToString();
            string TimeNow = DateTime.Now.ToShortTimeString();
            string KindOfOut = KindOfOut_DropDownList.Text;
            string Escape = EscapeDropDownList.Text;
            bool sucsess = db.Add_OutlDataToTable(DateToday, dayToday, TimeNow, KindOfOut, Escape);
            if (sucsess)
            {
                AutoPanel.BackColor = Color.GreenYellow;
            }
            else
            {
                AutoPanel.BackColor = Color.Red;
                //faild alert
            }

        }
            

        protected void AddMenualPanelButton_Click(object sender, EventArgs e)
        {
            string DateToday = datepicker.Text;
            string dayToday = DAYDropDownList.Text;
            string TimeNow = TimeHour_DropDownList.Text + ":" + TimeMinute_DropDownList2.Text;
            string KindOfOut = KindOfOut_DropDownList2.Text;
            string Escape = EscapeDropDownList0.Text;
            bool sucsess = db.Add_OutlDataToTable(DateToday,dayToday, TimeNow, KindOfOut, Escape);
            if(sucsess)
            {
                // sucsess alert
                MenualPanel.BackColor = Color.GreenYellow;
            }
            else
            {
                //faild alert
                MenualPanel.BackColor = Color.Red;
            }
    
        }

        protected void UpdateBreakfastButton_Click(object sender, EventArgs e)
        {
            string Breakfast = BreakfastTextBox.Text;
            bool sucsess = db.AddFoodToTable( Breakfast);
            if (sucsess)
            {
                // sucsess alert
                MenualPanel.BackColor = Color.GreenYellow;
            }
            else
            {
                //faild alert
                MenualPanel.BackColor = Color.Red;
            }
        }

        protected void UpdateLunchLinkButton_Click(object sender, EventArgs e)
        {
            string Lunch = LunchTextBox.Text;
            bool sucsess = db.AddFoodToTable('L',Lunch);
            if (sucsess)
            {
                // sucsess alert
                MenualPanel.BackColor = Color.GreenYellow;
            }
            else
            {
                //faild alert
                MenualPanel.BackColor = Color.Red;
            }
        }





        

        /*protected void UpdateFoodPanelButton_Click(object sender, EventArgs e)
        {
            string Breakfast = BreakfastTextBox.Text;
            string Lunch = LunchTextBox.Text;
            string Dinner = DinnerTextBox.Text;
            db.UpdateFoodPanelToTable(Breakfast, Lunch, Dinner);
        } */



        

        


        

        


        


    }
}