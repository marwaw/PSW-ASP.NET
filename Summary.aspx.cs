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
        Hashtable basket = ((Hashtable)Session["basket"]);
        if (basket != null && basket.Count != 0)
        {
            int sum = 0;
            int cur_price = 0;
            
            foreach (string keyName in basket.Keys)
            {
                cur_price = (int)basket[keyName];
                selected.Items.Add(keyName + " " + cur_price);
                sum += cur_price;
            }
            price.Text = "Łączna cena produktów: " + sum.ToString();
        }
        else
        {
            isempty.Text = "Brak produktów w koszyku!";
            selected.Visible = false;
        }


    }


}