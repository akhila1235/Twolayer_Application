using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Twolayer_Application
{
    public partial class Profile : System.Web.UI.Page
    {
        DBConnection dcon = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string sel = "Select * from tbl_twolayer where id=" + Session["uid"] + "";
                SqlDataReader dr=dcon.fn_reader(sel);
                while(dr.Read())
                {
                    txtpname.Text = dr["name"].ToString();
                    txtpage.Text = dr["age"].ToString();
                    txtpaddress.Text = dr["address"].ToString();
                    Image1.ImageUrl = dr["photo"].ToString();
                    txtpusername.Text = dr["username"].ToString();
                    txtppwd.Text = dr["password"].ToString();
                }
                DataSet ds = dcon.fn_adapter(sel);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                DataTable dt = dcon.fn_adaptertable(sel);
                DataList1.DataSource = dt;
                DataList1.DataBind();

            }
           
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string newimage = Image1.ImageUrl;
            if (FileUpload1.HasFile)
            {
                newimage = FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath("~/Photos/") + newimage);
            }

            string upquery = "update tbl_twolayer set name='" + txtpname.Text + "',age=" + txtpage.Text + ",address='" + txtpaddress.Text + "',photo='" + newimage + "',username='" + txtpusername.Text + "',password='" + txtppwd.Text + "' where id="+Session["uid"]+"";
            int i = dcon.fn_nonquery(upquery);
            if(i==1)
            {
                lbldisplay.Visible = true;
                lbldisplay.Text = "Updated Successfully";
            }
        }
    }
}