using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        thanks_text.Text = "Dziękujemy za złożenie zamówienia! Postaramy się, aby Twoje zamówienie dotarło do Ciebie jak najszybciej.";

        price_label.Text = "Całkowita wartość zamówienia: " + ((Hashtable)Session["order_details"])["cost"].ToString();
        delivery_label.Text = "Wybrany sposób dostawy: " + ((Hashtable)Session["order_details"])["delivery"].ToString();
        payment_label.Text = "Wybrany sposób płatności: " + ((Hashtable)Session["order_details"])["payment"].ToString();
    }
}