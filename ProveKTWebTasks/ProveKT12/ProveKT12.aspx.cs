using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProveKTWebTasks.ProveKT12
{
    public partial class ProveKT12 : System.Web.UI.Page
    {
        public object DocumentImage { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            string[] files = Directory.GetFiles(Server.MapPath("~/Images"), "*.*", SearchOption.AllDirectories);


            foreach (string item in files)
            {
                string fileName = Path.GetFileName(item);
                if (fileName.ToLower().Contains(ListBox1.Text.ToLower()))
                {
                    ListBox1.Items.Add(fileName);
                }

            }
        }



        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        
    }
}