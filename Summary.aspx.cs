using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Summary : System.Web.UI.Page
{

    Hashtable delivery;
    List<string> payment;
    Hashtable basket;

    protected void Page_Load(object sender, EventArgs e)
    {
        FillList();
        if (!IsPostBack)
        {
            payment_list.DataSource = payment;
            payment_list.DataBind();
            payment_list.SelectedIndex = 1;

            SetDeliveryList(delivery, delivery_list);
            delivery_list.SelectedIndex = 1;

            basket = ((Hashtable)Session["basket"]);
            if (basket != null && basket.Count != 0)
            {
                foreach (string keyName in basket.Keys)
                {
                    selected.Items.Add(keyName + " " + (int)basket[keyName]);
                    
                }
            }
            else
            {
                isempty.Text = "Brak produktów w koszyku!";
                selected.Visible = false;
            }

        }

        basket = ((Hashtable)Session["basket"]);
        CountPrice(basket);
    }

    private void FillList()
    {
        delivery = new Hashtable { { "kurier", 5 }, {"poczta", 8 }, {"odbiór osobisty", 0} };
        payment = new List<string> { "karta płatnicza", "za pobraniem", "przelew"};
    }

    private void SetDeliveryList(Hashtable hashtable, RadioButtonList rb_list)
    {
        foreach (DictionaryEntry pair in hashtable)
        {
            rb_list.Items.Add(pair.Key.ToString());
        }

        foreach (ListItem item in rb_list.Items)
        {
            String name = item.Value;
            item.Text = name + " " + hashtable[name];
            item.Value = name;
        }
    }

    private void CountPrice(Hashtable basket)
    {
        int sum = 0;
        int cur_price = 0;

        foreach (string keyName in basket.Keys)
        {
            cur_price = (int)basket[keyName];
            sum += cur_price;
        }
        price.Text = "Łączna cena produktów: " + sum.ToString();

        int deliv_price = sum;
        deliv_price += (int)delivery[delivery_list.SelectedValue];

        summary.Text = "Łączna wartość zamówienia: " + deliv_price.ToString();
    }


}