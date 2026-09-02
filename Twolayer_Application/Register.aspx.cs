using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twolayer_Application
{
    public partial class Register : System.Web.UI.Page
    {
        DBConnection dcon = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string p = "~/Photos/" + FileUploadphoto.FileName;
            FileUploadphoto.SaveAs(MapPath(p));
            string ins = "insert into tbl_twolayer values('" + txtname.Text + "'," + txtage.Text + ",'" + txtaddress.Text + "','" + p + "','" + txtusername.Text + "','" + txtpwd.Text + "')";
            int i = dcon.fn_nonquery(ins);
            if(i!=0)
            {
                lbldisplay.Visible = true;
                lbldisplay.Text = "Inserted Successfully";
            }

        }
    }
}