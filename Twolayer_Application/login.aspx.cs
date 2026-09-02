using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twolayer_Application
{
    public partial class login : System.Web.UI.Page
    {
        DBConnection dcon = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string sel = "select count(id) from tbl_twolayer where username='" + txtlusername.Text + "' and password='" + txtlpwd.Text + "'";
            string cid=dcon.fn_scalar(sel).ToString();
            int i = Convert.ToInt32(cid);
            if(i==1)
            {
                string seluser = "select id from tbl_twolayer where username='" + txtlusername.Text + "' and password='" + txtlpwd.Text + "'";
                string id = dcon.fn_scalar(seluser).ToString();
                Session["uid"] = id;
                Response.Redirect("Profile.aspx");
                //Label4.Text = "successfully logged in";

            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "invalid username or Password";
            }
        }
    }
}