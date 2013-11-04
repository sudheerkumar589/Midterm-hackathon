using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Loadgridview();
        }
    }

    protected void Loadgridview()
    {

        SqlDataAdapter da = new SqlDataAdapter("select *from ProductDetails1", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            grddisplay.DataSource = ds.Tables[0];
            grddisplay.DataBind();
        }
        else
        {
            grddisplay.DataSource = null;
            grddisplay.DataBind();
        }

    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        String fname;
        String path1;
        try
        {
           
            conn.Open();

            if (FileUpload1.HasFile)
            {
                byte[] imageB = new byte[FileUpload1.PostedFile.ContentLength];
                fname = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("images") + "/" + fname);
                string dbpath = "~/images/" + fname;
                SqlCommand cmd = new SqlCommand("insert into ProductDetails1 (Name,ProductName,ProductPrice,ProductColor,image,ProductDes)values('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "','" + dbpath + "' ,'" + TextArea1.Value + "')", conn);
                cmd.ExecuteNonQuery();
                Loadgridview();
                Label1.Text = "success";
            }
        }
        catch (Exception ex)
        {
            Loadgridview();
            Label1.Text = ex.ToString();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
        conn.Open();
        string Name = "";
        string ProductName = "";
        string ProductPrice = "";
        string ProductColor = "";
        string image = "";

        SqlCommand cmd = new SqlCommand("Select * From ProductDetails1 where ProductName='" + TextBox2.Text + "'", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        string var1 = "<table><tr><th>image_id</th><th>Price</th><th>Name2</th><th>Location</th><th>Comment</th></tr>";
        while (reader.Read())
        {
            var1 += "<tr>";
            var1 += "<td>" + reader["Name"] + "</td>";
            var1 += "<td>" + reader["ProductName"] + "</td>";
            var1 += "<td>" + reader["ProductPrice"] + "</td>";
            var1 += "<td>" + reader["ProductColor"] + "</td>";
            image = reader["image_id"].ToString();
            var1 += "<td>" + "<img width = '100px' src='" + image + "' />" + "</td>";
            var1 += "</tr>";

        }
        var1 += "</table>";

        reader.Close();
        conn.Close();
        string i = "<img src='" + image + "' />";
        imgurl.InnerHtml = var1;
    }
}
