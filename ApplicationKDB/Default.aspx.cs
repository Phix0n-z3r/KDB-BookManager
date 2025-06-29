using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationKDB
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static public string connectionString = "Data Source=.;Initial Catalog=KetabKHanehDB;User ID=sa;Encrypt=True;Trust Server Certificate=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetBooks_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("GetBooks", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvBooks.DataSource = dt;
                gvBooks.DataBind();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("DeleteBook", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BookID", txtBookID.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("UpdateBook", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BookID", txtBookID.Text);
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@TopicID", Convert.ToInt32(txtTopicID.Text));
                cmd.Parameters.AddWithValue("@CopyrightYear", Convert.ToDouble(txtCopyrightYear.Text));
                cmd.Parameters.AddWithValue("@ISBNNumber", txtISBNNumber.Text);
                cmd.Parameters.AddWithValue("@PublisherName", txtPublisherName.Text);
                cmd.Parameters.AddWithValue("@PlaceOfPublication", txtPlaceOfPublication.Text);
                cmd.Parameters.AddWithValue("@WriterN", txtWriterN.Text);
                cmd.Parameters.AddWithValue("@EditionNumber", Convert.ToInt32(txtEditionNumber.Text));
                cmd.Parameters.AddWithValue("@CoverType", Convert.ToInt32(txtCoverType.Text));
                cmd.Parameters.AddWithValue("@ShelfId", Convert.ToInt32(txtShelfId.Text));
                cmd.Parameters.AddWithValue("@TahYeNo", chkTahYeNo.Checked);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("InsertBook", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BookID", txtBookID.Text);
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@TopicID", Convert.ToInt32(txtTopicID.Text));
                cmd.Parameters.AddWithValue("@CopyrightYear", Convert.ToDouble(txtCopyrightYear.Text));
                cmd.Parameters.AddWithValue("@ISBNNumber", txtISBNNumber.Text);
                cmd.Parameters.AddWithValue("@PublisherName", txtPublisherName.Text);
                cmd.Parameters.AddWithValue("@PlaceOfPublication", txtPlaceOfPublication.Text);
                cmd.Parameters.AddWithValue("@WriterN", txtWriterN.Text);
                cmd.Parameters.AddWithValue("@EditionNumber", Convert.ToInt32(txtEditionNumber.Text));
                cmd.Parameters.AddWithValue("@CoverType", Convert.ToInt32(txtCoverType.Text));
                cmd.Parameters.AddWithValue("@ShelfId", Convert.ToInt32(txtShelfId.Text));
                cmd.Parameters.AddWithValue("@TahYeNo", chkTahYeNo.Checked);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}