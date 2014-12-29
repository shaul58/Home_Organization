using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeOrganization
{

    public class NewItem
    {
        DataBase DB = new DataBase();
        int UserID;
        int value;
        string text;
        string Quntity;
        public NewItem( int userId)
        {
            UserID = userId;
            value = DB.GetProductValue(UserID);
            text = DB.GetProductText(UserID);
            Quntity = DB.GetProductQuntity(UserID);
            NewItem[] item = new NewItem[10];
        }

    }
}