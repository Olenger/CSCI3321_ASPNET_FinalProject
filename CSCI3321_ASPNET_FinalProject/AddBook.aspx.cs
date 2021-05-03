using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            
            //INSERT INTO Books VALUE(BookID should be auto, Title, AuthorID, Price, PublishDate, PublisherID, GenreID, WordCount?)
            cmd.CommandText = "INSERT INTO Books VALUE('" + txtTitle.Text + "', '" + sdsAuthor.SelectedValue + "'," + txtPrice.Text + ", '" +
                txtPublishDate.Text + "', " + sdsPublisher.SelectedValue + ", " + sdsGenre.SelectedValue + ",)";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}
    
