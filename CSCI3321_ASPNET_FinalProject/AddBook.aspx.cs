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
            
            //INSERT INTO Books VALUE(BookID should be auto, Title, AuthorID, Price, PublishDate, PublisherID, GenreID, WordCount can be null)
            cmd.CommandText = "INSERT INTO Books VALUES ('" + txtTitle.Text + "', " + sdsAuthor.SelectedValue + ", " + txtPrice.Text + ", '" +
                txtPublishDate.Text + "', " + sdsPublisher.SelectedValue + ", " + sdsGenre.SelectedValue + ", " + 0 + ")";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            //build the product table
            BuildProductTable();
            pnlBookCollection.Visible = true;
        }
        public void BuildProductTable()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT Title, LastName, FirstName, Price, PublishDate, PublisherName, GenreName " +
                "FROM Books " +
                "INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID " +
                "INNER JOIN Publishers ON Books.PublisherID = Publishers.PublisherID " +
                "INNER JOIN Genres ON Books.GenreID = Genres.GenreID";
      
            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.HasRows)
            {
                while(reader.Read())
                {
                    TableRow tr = new TableRow();
                    TableCell tc = new TableCell();
                    tc.Text = reader["Title"].ToString();
                    tr.Cells.Add(tc);

                    
                    tc = new TableCell();
                    tc.Text = reader["LastName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["FirstName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["Price"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["PublishDate"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["PublisherName"].ToString();
                    tr.Cells.Add(tc);

                    tc = new TableCell();
                    tc.Text = reader["GenreName"].ToString();
                    tr.Cells.Add(tc);

                    tblMyBookCollection.Rows.Add(tr);
                }
            }
        }
    }
}
    
