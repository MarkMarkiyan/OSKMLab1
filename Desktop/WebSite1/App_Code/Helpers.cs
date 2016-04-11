using System;
using System.Collections;
using System.Collections.Specialized;
using System.Globalization;
using System.IO;
using System.Security.Principal;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Caching;
using System.Web.Configuration;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;


/// <summary>
/// Summary description for Helpers
/// </summary>
public sealed class Helpers
{
    /// <summary>
    /// Returns an array with the names of all local Themes
    /// </summary>
    /// <returns></returns>
    /// <remarks></remarks>
    /// 
    public static string Current { get; set; }

    public static string[] GetThemes()
    {
    //    if ((HttpContext.Current.Cache["SiteThemes"] != null))
    //    {
    //        var them=(string[])HttpContext.Current.Cache["SiteThemes"];

    //        return (string[])HttpContext.Current.Cache["SiteThemes"];
            
    //    }

        string themesDirPath = HttpContext.Current.Server.MapPath("~/App_Themes");
        // get the array of themes folders under /App_Themes
        string[] themes = Directory.GetDirectories(themesDirPath);
        for (int i = 0; i <= themes.Length - 1; i++)
        {
            themes[i] = Path.GetFileName(themes[i]);
        }
        CacheDependency dep = new CacheDependency(themesDirPath);
        HttpContext.Current.Cache.Insert("SiteThemes", themes, dep);
       
        return new[] {"LightBeer", "DarkBeer", "Beer", "dsf" };
    }
}
