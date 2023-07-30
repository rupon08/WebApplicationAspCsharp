using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplicationAspCsharp
{
    public partial class WebFormProductMaster : System.Web.UI.Page
    {
        string conString = ConfigurationManager.ConnectionStrings["adoConnectionstring"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(txtProductName.Text=="")
            {
                Response.Write("<script> alert('Please Provide Product Name'); </script>");
                txtProductName.Focus();
                return;

            }
            if (txtPrice.Text == "")
            {
                Response.Write("<script> alert('Please Provide Price'); </script>");
                txtPrice.Focus();
                return;

            }

            int id = 0;
            string sql = "INSERT INTO ProductMaster([ProductName],[Price],[Qty],[Remarks]) VALUES ('"+ txtProductName.Text + "'," + txtPrice.Text + "," + txtQty.Text + ",'" + txtRemarks.Text + "')";
            using(SqlConnection connection = new SqlConnection(conString))
            {
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();
                id=command.ExecuteNonQuery();
                connection.Close();


            }
            if (id > 0)
            {
                Response.Write("<script>alert('Data Saved Successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Data not Saved Successfully');</script>");
            }

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            string sql = "SELECT [ProductName],[Price],[Qty],[Remarks] FROM ProductMaster";
            using(SqlConnection connection=new SqlConnection(conString))
            {
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataAdapter sqlDA = new SqlDataAdapter(command);
                DataTable dt = new DataTable();

                connection.Open();
                sqlDA.Fill(dt);
                connection.Close();

                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

        }
    }
}