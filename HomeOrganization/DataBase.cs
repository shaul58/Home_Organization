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


        public bool AddProductToShoppingList(int UserId,string pName, int pQuntity)
        {
            
            con.Open();
            string Query = "INSERT INTO SuperTable(UserId,ProductName,ProductQuntity,Buy_1OrNotBuy_0)"
            + " VALUES(" + "," + UserId + "',N'" + pName + ","
                             + pQuntity + "," + 0 + ")";
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

        public List<ListItem> GetAllProductsFromUser(int UserID)
        {
            con.Open();
            int countOfProducts = GetCountOfProducts(UserID);
            //products = new NewItem[countOfProducts];
            //ProducstItem = new List<ListItem>();

            string query = "SELECT productId,productName,productQuntity from Super"
            + " where Buy_1OrNotBuy_0=0 AND UserId=" + UserID;
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
             dr = cmd.ExecuteReader();
             //int counter = 0;
            
            while(dr.Read())
            {
                pItem = new NewItem(UserID, dr.GetInt32(0), dr.GetString(1), dr.GetInt32(2));
                newItem = new ListItem();
                newItem.Value = dr.GetInt32(0).ToString();
                string newText = dr.GetString(1)+',' +"כמות:"+ dr.GetInt32(2).ToString();
                newItem.Text = newText;
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
    }
}