﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace HomeOrganization
{
    public class DataBase
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HomeOrganization_db_con_Str"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        //public string UserName { get; set; }
        //public int Password { get; set; }
        NewItem pItem;
        List<string> Names;
        NewItem[] products;
        //List<NewItem> productItem;
        public ListItem newItem;
        List<ListItem> ProductsItem = new List<ListItem>();
        

        public bool SuccessLogin { get; private set; }


        public bool AddProductToShoppingList(string UserName, string pName, string pQuntity, int Urgency)
        {
            
            con.Open();
            string Query = "INSERT INTO Super (UserName,ProductName,ProductQuntity,Buy_1OrNotBuy_0,urgencyLevel)"
            + " VALUES('" + UserName + "',N'" + pName + "','"
                             + pQuntity + "'," + 0 +","+Urgency + ")";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;

            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();

            if (affectedRows > 0)
                return true;
            else
                return false;

   
        }

        public int GetProductValue(int UserID)
        {
            con.Open();
            string query = "";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
             int value =  int.Parse(cmd.ExecuteScalar().ToString());
             con.Close();
             return value;
        }

        public string GetProductText(int UserID)
        {
            con.Open();
            string query = "";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            string text = cmd.ExecuteScalar().ToString();
            con.Close();
            return text;
        }

        public string GetProductQuntity(int UserID)
        {
            con.Open();
            string query = "";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            string quntity = cmd.ExecuteScalar().ToString();
            con.Close();
            return quntity;
        }

        public List<ListItem> GetAllProductsFromUser(string UserName)
        {
            con.Open();
            //int countOfProducts = GetCountOfProducts(UserID);
            //products = new NewItem[countOfProducts];
            //ProducstItem = new List<ListItem>();

            string query = "SELECT productId,productName,productQuntity, urgencyLevel from Super"
            + " where Buy_1OrNotBuy_0=0 AND UserName='" + UserName+"'";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
             dr = cmd.ExecuteReader();
             //int counter = 0;
            
            while(dr.Read())
            {
                //pItem = new NewItem(UserID, dr.GetInt32(0), dr.GetString(1), dr.GetInt32(2));
                newItem = new ListItem();
                newItem.Value = dr.GetInt32(0).ToString();
                //string newText = dr.GetString(1)+',' +"כמות:"+ dr.GetInt32(2).ToString();
                string newText = dr.GetString(1) + " , כמות: " + dr.GetString(2).ToString();
                newItem.Text = newText;
                int urgencyLevel = dr.GetInt32(3);
                if (urgencyLevel == 2)
                    newItem.Attributes.Add("style", "background-color:red");
                ProductsItem.Add(newItem);
            }
            con.Close();
            return ProductsItem;
        }

        private int GetCountOfProducts(int UserID)
        {
            
            // get only product with value 0 in Buy_1OrNotBuy_0 to show wanted products.
            string query = "SELECT COUNT(*) from Super where Buy_1OrNotBuy_0=0";
            cmd = new SqlCommand(query, con);
            return int.Parse(cmd.ExecuteScalar().ToString());

        }

        public void CheckBoxListSelectedIndexChanged(string value)
        {
            con.Open();
            int Value = int.Parse(value);
            string query = "UPDATE Super set Buy_1OrNotBuy_0= 1 WHERE productId=" + Value;
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            //cmd.Parameters.Add("@productID").Value = value;
            //int Buy_1OrNotBuy_0 = int.Parse(cmd.ExecuteScalar().ToString());
            //string query2 = "";
            //cmd = new SqlCommand(query1, con);
            //cmd.CommandType = CommandType.Text;
            int affectedRows = 0;
            affectedRows = cmd.ExecuteNonQuery();
            if (affectedRows < 1)
            {
                // Error is Occurred;
                // where to put the Error;
            }
           
        }



        public bool selectedUrgencyLEvel(string p)
        {
            con.Open();
            string Query = ""; 
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();

            if (affectedRows > 0)
                return true;
            else
                return false;

        }

        public string LoginUser(string userName, string UserPassword)
        {
            con.Open();
            string Query = "SELECT AcounrUserName FROM Users"
            +" WHERE AcounrUserName='"+ userName +"' AND AcountPassword= '"+UserPassword+"'";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            string UserName = cmd.ExecuteScalar().ToString();

            return UserName;
            
        }

        public void Add_AutoPanelData(string DateToday, string dayToday, string TimeNow, string KindOfOut, string Escape)
        {
            con.Open();
            string Query = "";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();

        }

        public void UpdateFoodPanelToTable(string Breakfast, string Lunch, string Dinner)
        {
            con.Open();
            string Query = "";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();
        }


        public bool Add_OutlDataToTable(char F, string DateToday, string dayToday, string TimeNow, string KindOfOut, string Escape, string Comments)
         {
            string Query = "";
            con.Open();
            if (F == 'A')
                Query = "INSERT INTO MyHealth_OUTS(Date, Day, Time, KindOfOut, [Escape], [Comments])" +
                               "VALUES( (SELECT CONVERT(VARCHAR(10), GETDATE(), 103))" +
                              /*DateToday*/",N'" + dayToday + "','" + TimeNow + "',N'" + KindOfOut + "',N'" + Escape + "',N'" + Comments + "')";
            else if (F == 'M')
                Query =            //"DECLARE @myDate date = '"+DateToday+"'" +
            " INSERT INTO MyHealth_OUTS(Date, Day, Time, KindOfOut, [Escape], [Comments])" +
                               "VALUES('" + DateToday + "',N'" + dayToday + "','" + TimeNow + "',N'" + KindOfOut + "',N'" + Escape + "',N'" + Comments + "')"; //(SELECT CONVERT(VARCHAR(10), @myDate, 103))

            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();
            if (affectedRows > 0)
                return true;
            else
                return false;
            
        }

        public bool AddFoodToTable(char F,string Food,string Comments,string datePicker)
        {
            string DateToday="";
            string Query = "";
            if (datePicker != " " && datePicker != "DATE")
                DateToday = datePicker;
            else
            {
                DateToday = DateTime.Now.ToShortDateString();
            }
            con.Open();
            if (F == 'B')
                Query = "INSERT INTO MyHealth_FOOD( Date, Breakfast, Lunch, Dinner, Comments)"
                         + "VALUES('" + DateToday + "',N'" + Food + "','  ','  ',N'"+Comments+"')";
            else if (F == 'L')
                Query = "UPDATE MyHealth_FOOD SET" +
                       " Lunch = N'" + Food +"',Comments=N'"+Comments+"'"+
                       " WHERE Date ='" + DateToday + "'";
            else if (F == 'D')
                Query = "UPDATE MyHealth_FOOD SET" +
                       " Dinner = N'" + Food + "',Comments=N'" + Comments + "'" +
                       " WHERE Date ='" + DateToday + "'";

            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();
            if (affectedRows > 0)
                return true;
            else
                return false;

        }

        public List<string> GetFoodFromTable(string date)
        {
            List<string> Food = new List<string>();
            string Query = " SELECT Breakfast, Lunch, Dinner, Comments from MyHealth_FOOD" +
                           " WHERE Date = '"+ date+"'";
            try
            {
                con.Open();
            }
            catch {  }
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                try
                {
                    Food.Add(dr.GetString(0));
                    Food.Add(dr.GetString(1));
                    Food.Add(dr.GetString(2));
                    Food.Add(dr.GetString(3));
                }
                catch
                {
                    Food.Add("NO Food was inserted");
                    
                }
            }
            con.Close();
            return Food;


        }




        public List<string> Get_dayReport(string DateReport)
        {
            List<string> dayReport = new List<string>();
            string date="",day="",OutTime="",KindOfOut="",Escape="",Comments="";
          
            string Query = "SELECT DISTINCT * from MyHealth_OUTS "+
                           "WHERE Date='"+ DateReport+"' " +   //26/11/2015
                           "ORDER BY Date DESC, Time DESC";
            con.Open();
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            while (dr.Read())  //dr.HasRows
            {
                date = dr.GetString(0);
                day = dr.GetString(1);
                OutTime = dr.GetTimeSpan(2).ToString();
                KindOfOut = dr.GetString(3);
                Escape = dr.GetString(4);
                Comments = dr.GetString(5);
                string record = "Date: " + date + " ,day: " + day + " ,Time: " + OutTime + " ,Kind Of Out: " + KindOfOut + " ,Escape: " + Escape + " ,Comment:  " + Comments + "  :) ";
                string space =  "                                                                                                                                                    ";
                dayReport.Add(record);
                dayReport.Add(space);
            }

            return dayReport;
        }
    }
}