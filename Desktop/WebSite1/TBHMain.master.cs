using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TBHMain : System.Web.UI.MasterPage
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.Theme = Helpers.Current ?? "LightBeer";
        ThemeSelector1.SelectedIndex = 3;
    }


    protected void SelectDropDownButton_Click(object sender, EventArgs e)
    {
        Helpers.Current = ThemeSelector1.SelectedItem.Text;
        Response.Redirect(Request.RawUrl);
    }
}
