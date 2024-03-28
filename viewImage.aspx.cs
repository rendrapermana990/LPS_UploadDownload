using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string FilePath = null;

        FilePath = Request.QueryString["fn"];

        if (FilePath != null)
        {
            string path = Server.MapPath(FilePath);
            Image1.ImageUrl = FilePath;
        }

    }
}