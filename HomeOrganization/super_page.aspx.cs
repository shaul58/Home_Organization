using System;
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
        //public NewItem item;
        //public ListItem[] item_;
        public List<ListItem> Items = new List<ListItem>();
        //public ListItem newItem;
        public bool Sucsess = false;
        public int Urgency { get; set; }//1-Normal,2- Some urgent, 3- Immediate urgent
        public bool SelectedUrgency { get; set; }
        public string User_id { get; set; }
        //public List<NewItem> Items = new List<NewItem>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            { 
                User_id = Request.QueryString["UserId"];
                UserID = int.Parse(User_id);
            }
            else
            {
                ProductNameTextBox.Focus();
                ProductNameTextBox.Text = "";
                User_id = Request.QueryString["UserId"];
                FillSuperCheckBoxListItems(int.Parse(User_id));
            }

        }

        private void FillSuperCheckBoxListItems(int UserID)
        {
            db = new DataBase();
            //int countOfProducts = db.GetCountOfProducts(UserID);
            Items = db.GetAllProductsFromUser(UserID);
        
            for (int i = 0; i < Items.Count; i++)
            {
                Items[0].Attributes.Add("style", "background-color:red"); //background-colour:red  
                ShoppingListCheckBoxList.Items.Add(Items[i]);
            }

        }

        
        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            //ListItem[] item1 = new ListItem[5];
            int UserId = UserID;
            string productQuntity = QuntityDropDownList.Text;
            int Urgency  = int.Parse(UrgencyDropDownList.Text);
            db = new DataBase();
            Sucsess = db.AddProductToShoppingList(UserID, ProductNameTextBox.Text, productQuntity, Urgency);
            if (Sucsess)
                Response.Redirect(Request.RawUrl);
            else
            {
                //write error message ;  
            }
           

           
             
        }

        protected void removeButton_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ShoppingListCheckBoxList.Items.Count; i++)
            {
                if (ShoppingListCheckBoxList.Items[i].Selected)
                    ShoppingListCheckBoxList.Items.Remove(Items[i]);
            }
           
        }

        protected void ShoppingListCheckBoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string value = ShoppingListCheckBoxList.SelectedItem.Value;
            //string Value = ShoppingListCheckBoxList.SelectedValue;
            db = new DataBase();
            //db.CheckBoxListSelectedIndexChanged(value);
            for (int i = 0; i < ShoppingListCheckBoxList.Items.Count; i++)
            {
                if (ShoppingListCheckBoxList.Items[i].Selected)
                {
                    db.CheckBoxListSelectedIndexChanged(ShoppingListCheckBoxList.Items[i].Value);
                    break;
                }

            }
            Response.Redirect(Request.RawUrl);
        }

        protected void UrgencyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SelectedUrgency = true;
            Urgency = int.Parse(UrgencyDropDownList.SelectedItem.Value);

        }

        
    }
}