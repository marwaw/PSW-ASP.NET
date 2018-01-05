using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Summary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (((Hashtable)Session["basket"]).Count != 0)
        {
            foreach (string keyName in ((Hashtable)Session["basket"]).Keys)
                selected.Items.Add(keyName + " " + ((Hashtable)Session["basket"])[keyName]);
        }
        else
        {
            isempty.Text = "Brak produktów w koszyku!";
            selected.Visible = false;
        }


    }
}