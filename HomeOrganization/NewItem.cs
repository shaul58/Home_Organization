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
        int Quntity; //---- צריך לשנות במסד נתונים למחרוזת במקום מספר
        public NewItem( int userId,int Pvalue,string PName,int PQuntity)
        {
            UserID = userId;
            value = Pvalue;
            text = PName;
            Quntity = PQuntity;

            //value = DB.GetProductValue(UserID);
            //text = DB.GetProductText(UserID);
            //Quntity = DB.GetProductQuntity(UserID);
            //NewItem[] item = new NewItem[10];
        }

    }
}