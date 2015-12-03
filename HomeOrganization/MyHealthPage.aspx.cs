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
            dayReportPanel.Visible = false;
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
            dayReportPanel.Visible = false;
            AutoPanel.Visible = false;
            FoodPanel.Visible = false;

            string hexColor = "#FF6600";

            Color myColor = System.Drawing.ColorTranslator.FromHtml(hexColor);

            MenualPanel.BackColor = myColor;
        }

        protected void ShowFoodPanelButton_Click(object sender, EventArgs e)
        {
            FoodPanel.Visible = true;
            dayReportPanel.Visible = false;
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
                if (Food[0] != "  ")
                {
                    BreakfastTextBox.Text = Food[0];
                    BreakfastTextBox.BackColor = Color.GreenYellow;
                }
                else
                    BreakfastTextBox.BackColor = Color.Red;
                if (Food[1] != "  ")
                {
                    LunchTextBox.Text = Food[1];
                    LunchTextBox.BackColor = Color.GreenYellow;
                }
                else
                    LunchTextBox.BackColor = Color.Red;
                if (Food[2] != "  ")
                {
                    DinnerTextBox.Text = Food[2];
                    DinnerTextBox.BackColor = Color.GreenYellow;
                }
                else
                    DinnerTextBox.BackColor = Color.Red;
                if (Food[3] != " ")
                {
                    CommentsTextBox.Text = Food[3];
                    CommentsTextBox.BackColor = Color.GreenYellow;
                }
                else
                {
                    CommentsTextBox.BackColor = Color.Red;
                    CommentsTextBox.Text = "תוספות,נישנושים והערות";
                }
            }
            else
            {
                BreakfastTextBox.BackColor = Color.Gray;
                BreakfastTextBox.Text = "ארוחת בוקר";
                LunchTextBox.BackColor = Color.Gray;
                LunchTextBox.Text = "ארוחת צהרים";
                DinnerTextBox.BackColor = Color.Gray;
                DinnerTextBox.Text = "ארוחת ערב";
                CommentsTextBox.BackColor = Color.Gray;
                CommentsTextBox.Text = "הערות ותוספות";


            }
        }

        protected void AddAUtoButtonPanel_Click(object sender, EventArgs e)
        {
            string DateToday = DateTime.Now.ToShortDateString();
            string dayToday = DateTime.Now.DayOfWeek.ToString();
            string TimeNow = DateTime.Now.AddHours(2).ToShortTimeString();
            //string TimeNow = DateTime.Now.ToShortTimeString();
            string KindOfOut = KindOfOut_DropDownList.Text;
            string Escape = EscapeDropDownList.Text;
            string A_Comments = OutCommentsTextBox1.Text;
            bool sucsess = db.Add_OutlDataToTable('A', DateToday, dayToday, TimeNow, KindOfOut, Escape, A_Comments);
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
            bool sucsess = db.Add_OutlDataToTable('M', DateToday, dayToday, TimeNow, KindOfOut, Escape, M_Comments);
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
        public string DateToday = "";
        protected void UpdateBreakfastButton_Click(object sender, EventArgs e)
        {
            string Breakfast = BreakfastTextBox.Text;
            DateToday = datepicker_B.Text;
            bool sucsess = db.AddFoodToTable('B', Breakfast, " ", DateToday);
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
            bool sucsess = db.AddFoodToTable('L', Lunch, CommentsTextBox.Text, DateToday);
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
            bool sucsess = db.AddFoodToTable('D', Dinner, Comments, DateToday);
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

        protected void dayReportButton_Click(object sender, EventArgs e)
        {
            List<string> dayReport = new List<string>();
            string DateReport = "";
            if (dayReportDateTextBox.Text != "" && dayReportDateTextBox.Text != "DATE")    //שנה תאריך ליצירת דוח
                DateReport = dayReportDateTextBox.Text;
            else
                DateReport = DateTime.Now.ToShortDateString();
            dayReportPanel.Visible = true;
            FoodPanel.Visible = false;
            AutoPanel.Visible = false;
            MenualPanel.Visible = false;

            dayReport = db.Get_dayReport(DateReport);
            //dayReportListBox.Items.Clear();
            for (int i = 0; i < dayReport.Count; i++)
            {
                dayReportListBox.Items.Add(dayReport[i]);
            }

        }

        protected void CreateDateReportButton_Click(object sender, EventArgs e)
        {
            List<string> dayReport = new List<string>();
            dayReport = db.Get_dayReport(dayReportDateTextBox.Text);
            dayReportListBox.Items.Clear();
            for (int i = 0; i < dayReport.Count; i++)
            {
                dayReportListBox.Items.Add(dayReport[i]);
            }
        }

        protected void datepicker_B_TextChanged(object sender, EventArgs e)
        {
            List<string> Food = db.GetFoodFromTable(datepicker_B.Text);
            if (Food.Count != 0)
            {
                if (Food[0] != " ")
                {
                    BreakfastTextBox.Text = Food[0];
                    BreakfastTextBox.BackColor = Color.Green;
                }
                else
                    BreakfastTextBox.BackColor = Color.Fuchsia;
                ///////////////////////////////////////////////
                if (Food[1] != " ")
                {
                    LunchTextBox.Text = Food[1];
                    LunchTextBox.BackColor = Color.Green;
                }
                else
                    LunchTextBox.BackColor = Color.Fuchsia;
                ///////////////////////////////////////////
                if (Food[2] != " ")
                {
                    DinnerTextBox.Text = Food[2];
                    DinnerTextBox.BackColor = Color.Green;
                }
                else
                    DinnerTextBox.BackColor = Color.Fuchsia;
            }
            else
            {
                BreakfastTextBox.BackColor = Color.WhiteSmoke;
                BreakfastTextBox.Text = "ארוחת בוקר";


            }
        }

        protected void pickBreakfastDate_ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            if (datepicker_B.Text != "DATE")
            {
                List<string> Food = db.GetFoodFromTable(datepicker_B.Text);
                if (Food.Count != 0)
                {
                    if (Food[0] != " ")
                    {
                        BreakfastTextBox.Text = Food[0];
                        BreakfastTextBox.BackColor = Color.YellowGreen;
                    }
                    else
                        BreakfastTextBox.BackColor = Color.Red;
                }
                else
                {
                    BreakfastTextBox.BackColor = Color.Red;
                    BreakfastTextBox.Text = "מלא ארוחת בוקר";
                }



                //protected void OutCommentsTextBox1_TextChanged(object sender, EventArgs e)
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
                //}
            }
        }

        protected void pickLunchDate_ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            if (datepicker_L.Text != "DATE")
            {
                List<string> Food = db.GetFoodFromTable(datepicker_B.Text);
                if (Food.Count != 0)
                {
                    if (Food[1] != " ")
                    {
                        LunchTextBox.Text = Food[1];
                        LunchTextBox.BackColor = Color.YellowGreen;
                    }
                    else
                        LunchTextBox.BackColor = Color.Red;
                }
                else
                {
                    LunchTextBox.BackColor = Color.Red;
                    LunchTextBox.Text = "מלא ארוחת צהריים";
                }
            }

        }

        protected void pickDinnerDate_ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            List<string> Food = db.GetFoodFromTable(datepicker_B.Text);
            if (Food.Count != 0)
            {
                if (Food[2] != " ")
                {
                    DinnerTextBox.Text = Food[2];
                    DinnerTextBox.BackColor = Color.YellowGreen;
                }
                else
                    DinnerTextBox.BackColor = Color.Red;
                if (Food[3] != "  ")
                {
                    CommentsTextBox.Text = Food[3];
                    CommentsTextBox.BackColor = Color.GreenYellow;
                }
                else
                    CommentsTextBox.BackColor = Color.Red;
            }
            else
            {
                DinnerTextBox.BackColor = Color.Red;
                DinnerTextBox.Text = "מלא ארוחת ערב";
                CommentsTextBox.BackColor = Color.Red;
                CommentsTextBox.Text = "מלא הערות";
            }
        }
        }

    }

