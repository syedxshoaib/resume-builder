using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ResumeBuilderApplications.ResumePanel
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\ResumeBuilderApplications\ResumeBuilderApplications\App_Data\ResumeBuilder.mdf;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int id1 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string str = "select max(studentId) as studentId from ResumeTbl";
            da = new SqlDataAdapter(str, con);
            da.Fill(ds);

            id1 = 1;
            id1 = int.Parse(ds.Tables[0].Rows[0]["studentId"].ToString());
            if (id1 > 0)
            {
                id1++;
            }
            else
            {
                id1 = 1;
            }
            lblSid.Text = id1.ToString();
        }

        protected void btnuploads_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
                try
                {
                    string file_name = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~img1" + file_name));
                    Image3.ImageUrl = "~img1" + file_name;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
        }

        protected void btnfadd_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = "insert into ResumeTbl values("+lblSid.Text+",'"+txtSName.Text+"','"+txtSkill.Text+"','"+txtEducation.Text+"','"+txtDob.Text+"',"+txtMobile.Text+",'"+txtEmail.Text+"','"+txtAddress.Text+"','"+txtKnowledge.Text+"','"+DropDownListExpriance.SelectedValue.ToString()+"','"+txtFeald.Text+"','"+txtObjectives.Text+"','"+Image3.ImageUrl+"')";
                cmd = new SqlCommand(str1, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Resume Saved')</script>");
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}