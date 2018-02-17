using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMSHandIn
{
    public partial class Upload1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1UploadJoke_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (TextBox1Name.Text != "")
                {
                    if (TextBox1Name.Text.Substring(0, 1) != " ")
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Jokes/" + TextBox1Name.Text));
                        TextBox1Name.Text = "";
                        Label1Feedback.Text = FileUpload1.PostedFile.FileName + "; " + FileUpload1.PostedFile.ContentLength.ToString() + "; " + FileUpload1.PostedFile.ContentType;
                    }
                    else
                    {
                        Label1Feedback.Text = "Initial space not allowed";
                    }
                }
                else
                {
                    Label1Feedback.Text = "New file name is missing";
                }
            }
            else
            {
                Label1Feedback.Text = "Wrong file name";
            }
        }

        protected void Button1UploadPic_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (TextBox1Name.Text != "")
                {
                    if (TextBox1Name.Text.Substring(0, 1) != " ")
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Pictures/" + TextBox1Name.Text));
                        TextBox1Name.Text = "";
                        Label1Feedback.Text = FileUpload1.PostedFile.FileName + "; " + FileUpload1.PostedFile.ContentLength.ToString() + "; " + FileUpload1.PostedFile.ContentType;
                    }
                    else
                    {
                        Label1Feedback.Text = "Initial space not allowed";
                    }
                }
                else
                {
                    Label1Feedback.Text = "New file name missing";
                }
            }
            else
            {
                Label1Feedback.Text = "Wrong file name";
            }
        }
    }
}