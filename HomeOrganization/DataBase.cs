using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HomeOrganization
{
    public class DataBase
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HomeOrganization_db_con_Str"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        //public string UserName { get; set; }
        //public int Password { get; set; }
        List<string> Names;

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
            cmd.CommandType = CommandType.Text;
             int value =  int.Parse(cmd.ExecuteScalar());
             return value;
        }

        internal string GetProductText(int UserID)
        {
            con.Open();
            string query = "";
            cmd.CommandType = CommandType.Text;
            string text = cmd.ExecuteScalar().ToString();
            return text;
        }

        internal string GetProductQuntity(int UserID)
        {
            con.Open();
            string query = "";
            cmd.CommandType = CommandType.Text;
            string quntity = cmd.ExecuteScalar().ToString();
            return quntity;
        }
    }
}