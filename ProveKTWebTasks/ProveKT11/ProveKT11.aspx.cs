using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProveKTWebTasks.ProveKT11
{
    public partial class ProveKT11 : System.Web.UI.Page
    {
        protected void Page_Loadd(object sender, EventArgs e)
        {

        }

        protected void Btnsub_Click(object sender, EventArgs e)
        {
            int num1, num2, total;
            num1 = int.Parse(TextBoxx1.Text);
            num2 = int.Parse(TextBoxx2.Text);
            total = num1 - num2;
            TextBox3.Text = total.ToString();


        }

        protected void Btnadd_Click(object sender, EventArgs e)
        {
            int num1, num2, total;
            num1 = int.Parse(TextBoxx1.Text);
            num2 = int.Parse(TextBoxx2.Text);
            total = num1 + num2;
            TextBox3.Text = total.ToString();
        }
    }
}