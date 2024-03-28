using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class NewFriend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(fuImage.PostedFile.FileName);
        string str = DateTime.Now.ToString("hhmmssffffff")+filename;
        fuImage.SaveAs(Server.MapPath("FriendPhoto/"+str));

        string constr = ConfigurationManager.ConnectionStrings["fileuploadConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into tblFileUpload (Name,Place,Mobile, FriendImage) Values(@Name,@Place,@Mobile,@FriendImage)", con);
        cmd.Parameters.AddWithValue("@Name",txtName.Text);
        cmd.Parameters.AddWithValue("@Place",txtPlace.Text);
        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
        cmd.Parameters.AddWithValue("@FriendImage", str);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        Response.Redirect("~/FriendList.aspx");
    }
}