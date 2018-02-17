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
    public partial class Selection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonChooseSelection_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = CMS;");
            SqlCommand cmd = null;
            string sqlupd = "UPDATE[Selection] SET[mainItem] = @mainItem, [secondItem] = @secondItem, [thirdItem] = @thirdItem, [jokeId] = @jokeId WHERE[selectionID] = 2";

            try
            {
                conn.Open();

                cmd = new SqlCommand(sqlupd, conn);
                cmd.Parameters.Add("@mainItem", SqlDbType.Int);
                cmd.Parameters.Add("@secondItem", SqlDbType.Int);
                cmd.Parameters.Add("@thirdItem", SqlDbType.Int);
                cmd.Parameters.Add("@jokeId", SqlDbType.Int);

                cmd.Parameters["@mainItem"].Value = Convert.ToInt32(DropDownListMain.SelectedValue);
                cmd.Parameters["@secondItem"].Value = Convert.ToInt32(DropDownListSecond.SelectedValue);
                cmd.Parameters["@thirdItem"].Value = Convert.ToInt32(DropDownListThird.SelectedValue);
                cmd.Parameters["@jokeId"].Value = Convert.ToInt32(DropDownListJokes.SelectedValue);

                cmd.ExecuteNonQuery();

                //to update the view
                DetailsView1.DataBind();

                LabelSelFeedback.Text = "Selection has been successfully updated.";
            }
            catch (Exception ex)
            {
                LabelSelFeedback.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}