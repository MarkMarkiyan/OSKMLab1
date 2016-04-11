using System;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Configuration;


/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage : Page
{
    public BasePage()
    {
        base.PreInit += new EventHandler(this.Page_PreInit);
    }

    private void Page_PreInit(object sender, EventArgs e)
    {
        string id = Globals.ThemesSelectorID;

        if (id.Length > 0)
        {
            if ((this.Request.Form["__EVENTTARGET"] == id) && (!string.IsNullOrEmpty(this.Request.Form[id])))
            {
                this.Theme = this.Request.Form[id];
                this.Session["CurrentTheme"] = this.Theme;
            }
            else
                if (this.Session["CurrentTheme"] != null)
            {
                this.Theme = this.Session["CurrentTheme"].ToString();
            }
        }
    }

}

