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
            ShowExsitFoodInTable();
        }

        private void ShowExsitFoodInTable()
        {
            string date = DateTime.Now.ToShortDateString();
            List<string> Food = db.GetFoodFromTable(date);
            if (Food.Count != 0)
            {
                BreakfastTextBox.Text = Food[0];
                LunchTextBox.Text = Food[1];
                DinnerTextBox.Text = Food[2];
            }
        }

        protected void AddAUtoButtonPanel_Click(object sender, EventArgs e)
        {
            string DateToday = DateTime.Now.ToShortDateString();
            string dayToday = DateTime.Now.DayOfWeek.ToString();
            //string TimeNow = DateTime.Now.AddHours(2).ToShortTimeString();
            string TimeNow = DateTime.Now.ToShortTimeString();
            string KindOfOut = KindOfOut_DropDownList.Text;
            string Escape = EscapeDropDownList.Text;
            string A_Comments = OutCommentsTextBox1.Text;
            bool sucsess = db.Add_OutlDataToTable('A',DateToday, dayToday, TimeNow, KindOfOut, Escape,A_Comments);
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
            string DateToday = datepicker_AutoOUt.Text;
            string dayToday = DAYDropDownList.Text;
            string TimeNow = TimeHour_DropDownList.Text + ":" + TimeMinute_DropDownList2.Text;
            string KindOfOut = KindOfOut_DropDownList2.Text;
            string Escape = EscapeDropDownList0.Text;
            string M_Comments = OutCommentsTextBox2.Text;
            bool sucsess = db.Add_OutlDataToTable('M', DateToday,dayToday, TimeNow, KindOfOut, Escape,M_Comments);
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
        public string DateToday = "";
        protected void UpdateBreakfastButton_Click(object sender, EventArgs e)
        {
            string Breakfast = BreakfastTextBox.Text;
            DateToday = datepicker_B.Text;
            bool sucsess = db.AddFoodToTable('B',Breakfast," ",DateToday);
            if (sucsess)
            {
                // sucsess alert
                BreakfastTextBox.BackColor = Color.GreenYellow;
            }
            else
            {
                //faild alert
                BreakfastTextBox.BackColor = Color.Red;
            }
        }

        protected void UpdateLunchLinkButton_Click(object sender, EventArgs e)
        {
            string Lunch = LunchTextBox.Text;
            DateToday = datepicker_L.Text;
            bool sucsess = db.AddFoodToTable('L', Lunch,CommentsTextBox.Text, DateToday);
            if (sucsess)
            {
                // sucsess alert
                LunchTextBox.BackColor = Color.GreenYellow;
            }
            else
            {
                //faild alert
                LunchTextBox.BackColor = Color.Red;
            }
        }

        protected void UpdateDinnerLinkButton_Click(object sender, EventArgs e)
        {
            string Dinner = DinnerTextBox.Text;
            string Comments = CommentsTextBox.Text;
            DateToday = datepicker_D.Text;
            bool sucsess = db.AddFoodToTable('D', Dinner,Comments, DateToday);
            if (sucsess)
            {
                // sucsess alert
                DinnerTextBox.BackColor = Color.GreenYellow;
            }
            else
            {
                //faild alert
                DinnerTextBox.BackColor = Color.Red;
            }
        }

        





        

       



        

        


        

        


        


    }
}