using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SQLite;

public partial class menu_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        img_head.ImageUrl = Session["userimg"].ToString();
        name.InnerText = Session["username"].ToString();
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        
        string _title = txt_title.Text.ToString();
        string _content = txt_content.Text.ToString();

        DateTime _now = Convert.ToDateTime(DateTime.Now.ToString());

        SQLiteConnection con = new SQLiteConnection("DataSource=" + Server.MapPath("~/App_Data/design.db"));
        SQLiteCommand cmd;
        //SQLiteDataReader datar;

        string str_sql = "insert into T_notice(N_title,N_content,N_createdate) values('" + _title + "','" + _content + "','" + _now.ToString("s") + "')";
        cmd = new SQLiteCommand(str_sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        //防止重复提交
        txt_title.Text = "";
        txt_content.Text = "";
    }
}