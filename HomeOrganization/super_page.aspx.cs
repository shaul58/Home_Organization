﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeOrganization
{
    public partial class super_page : System.Web.UI.Page
    {
        DataBase db;
        public int UserID { get; set; }
        public NewItem item;
        public ListItem[] item_;
        public bool Sucsess = false;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ProductNameTextBox.Focus();
            ProductNameTextBox.Text = "";
            string UserID = Request.QueryString["UserId"];
            FillSuperCheckBoxListItems(UserID);

        }

        private void FillSuperCheckBoxListItems(string UserID)
        {
            
        }

        
        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            //ListItem[] item1 = new ListItem[5];
            int UserId = UserID;
             int productQuntity = int.Parse(QuntityDropDownList.Text);
            db = new DataBase();
            Sucsess= db.AddProductToShoppingList(UserID, ProductNameTextBox.Text,productQuntity);
             
           

             //for (int i = 0; i < 5; i++)
             //{

             //    //item1[i] = new ListItem(item+i.ToString(), item+i.ToString());
             //    //item1[0].Value = "item_0";
             //    //item1[i].Value = "item_"+i.ToString();
             //    //item1[i].Text = "newItem_"+i.ToString();

             //    ShoppingListCheckBoxList.Items.Add(item1[i]);
             //    AddProductTextBox.Text = item1[i].Value;
             //}
             
        }

        protected void removeButton_Click(object sender, EventArgs e)
        {
            int num = int.Parse(QuntityDropDownList.Text.ToString());
            ShoppingListCheckBoxList.Items.Remove(item1[num]);
            
        }
    }
}