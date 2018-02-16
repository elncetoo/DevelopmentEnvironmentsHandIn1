using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace CMSHandIn
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = CMS;");
           
            try
            {
                if (conn != null)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from MasterTable where ID=1", conn);
                SqlDataReader rdr = cmd.ExecuteReader();

                rdr.Read();

                ImageLogo.ImageUrl = "~/Pictures/" + rdr["logo"].ToString();
                LabelCompName.Text = rdr["headline"].ToString();
                LabelAuthor.Text = "Author: " + rdr["author"].ToString();

                rdr.Close();
            }
            catch (Exception ex)
            {
                LabelMssg.Text = ex.Message;

            }
            finally
            {
                conn.Close();
            }
        }
    }
}