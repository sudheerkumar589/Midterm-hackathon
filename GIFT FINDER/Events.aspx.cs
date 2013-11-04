using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into EventTable1 (EventType,EventDate,EventLocation)values('" + DropDownList1.SelectedValue.ToString() + "', '" + TextBox2.Text + "','" + TextBox3.Text + "' )", conn);
                cmd.ExecuteNonQuery();
                Label1.Text = "success";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();

            }
        }
    }
}