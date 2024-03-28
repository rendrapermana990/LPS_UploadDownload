using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FriendList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }

        
    }

    private void BindGridView()
    {
        string constr = ConfigurationManager.ConnectionStrings["fileuploadConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlDataAdapter da = new SqlDataAdapter("Select * From tblFileUpload", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Friend");
        gvFriend.DataSource = ds;
        gvFriend.DataBind();
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string filePath = "~//FriendPhoto//" + gvFriend.DataKeys[gvrow.RowIndex].Value.ToString();

        Response.Write(String.Format("<script>window.open('{0}','_blank');</script>", "viewImage.aspx?fn=" + filePath));
    }
    protected void btnDownload_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow gvrow = btn.NamingContainer as GridViewRow;
        string filePath = "FriendPhoto\\"+gvFriend.DataKeys[gvrow.RowIndex].Value.ToString();
        Response.ContentType = "image/jpg";
        Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
        Response.TransmitFile(Server.MapPath(filePath));
        Response.End();
    }
}