using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mv_nav : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("Front/index.aspx");
        }
        else
        {
            lab_user.Text = "欢迎您：" + Session["username"].ToString();
            // Response.Write("欢迎"+Session["user"].ToString());
        }

    }

    protected void siteBound(object sender, MenuEventArgs e)
    {
        string _ttl = SiteMapDataSource1.Provider.CurrentNode.ResourceKey;
        if (_ttl == e.Item.Text)
        {
            e.Item.Selected = true;
        }
    }
    protected void sitePreRender(object sender, EventArgs e)
    {
        string _path = SiteMapDataSource1.Provider.CurrentNode.ResourceKey;
        if (_path != "" && _path != null)
        {
            menu_nav.FindItem(_path).Selected = true;
        }
    }
    
}
