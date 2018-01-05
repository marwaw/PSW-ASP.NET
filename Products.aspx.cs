using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    HashSet<string> categories_set;
    Hashtable fruits;
    Hashtable wegetables;
    Hashtable others;
    CheckBoxList curent; // moze zamiast current zrobic ze jesli visible to z tej listy
    Hashtable basket;

    Hashtable selected;

    protected void Page_Load(object sender, EventArgs e)
    {

        FillLists();
        if (!IsPostBack)
        {
            if (Session["basket"] == null)
            {
                Session["basket"] = new Hashtable();
            }
            
            SetCategoriesList();
            SetProductsList(fruits, fruits_list);
            SetProductsList(wegetables, wegetables_list);
            SetProductsList(others, others_list);
        }

        basket = (Hashtable) Session["basket"];
        number_of_products.Text = basket.Count.ToString();

        if (category_list.SelectedItem != null)
        {
            testlabel.Text = category_list.SelectedValue.ToString();
            testlabel.Visible = true;

            if (category_list.SelectedValue.ToString() == "owoce")
            {
                fruits_list.Visible = true;
                wegetables_list.Visible = false;
                others_list.Visible = false;
                curent = fruits_list;
            }
            else if (category_list.SelectedValue.ToString() == "warzywa")
            {
                fruits_list.Visible = false;
                wegetables_list.Visible = true;
                others_list.Visible = false;
                curent = wegetables_list;
            }
            else if (category_list.SelectedValue.ToString() == "inne")
            {
                fruits_list.Visible = false;
                wegetables_list.Visible = false;
                others_list.Visible = true;
                curent = others_list;
            }
        }

        if (curent != null)
        {
            buy_button.Visible = true;
        }
        else
        {
            buy_button.Visible = false;
        }
    }

    private void SetCategoriesList()
    {

        category_list.DataSource = categories_set;
        category_list.DataBind();
        category_list.DataTextField = "categoryID";
        category_list.DataValueField = "categoryValue";
    }

    private void SetProductsList(Hashtable hashtable, CheckBoxList chb_list)
    {
        foreach (DictionaryEntry pair in hashtable)
        {
            chb_list.Items.Add(pair.Key.ToString());
        }
        
        chb_list.Visible = false;

        foreach (ListItem item in chb_list.Items)
        {
            String name = item.Value;
            item.Text = name + " " + hashtable[name];
            item.Value = name;
        }
    }

    private void FillLists()
    {
        categories_set = new HashSet<string>();
        categories_set.Add("owoce");
        categories_set.Add("warzywa");
        categories_set.Add("inne");

        fruits = new Hashtable();
        fruits.Add("banan", 2);
        fruits.Add("kiwi", 5);
        

        wegetables = new Hashtable();
        wegetables.Add("burak", 4);
        wegetables.Add("por", 5);
        

        others = new Hashtable();
        others.Add("wałek", 12);
        others.Add("foremki", 20);
        

        selected = new Hashtable();
    }

    protected void Buy_button_Click(object sender, EventArgs e)
    {
        foreach (ListItem item in curent.Items)
        {
            if (item.Selected)
            {
                int price = 0;

                if (category_list.SelectedValue.ToString() == "owoce")
                {
                    price = (int)fruits[item.Value];
                }
                else if (category_list.SelectedValue.ToString() == "warzywa")
                {
                    price = (int)wegetables[item.Value];
                }
                else if (category_list.SelectedValue.ToString() == "inne")
                {
                    price = (int)others[item.Value];
                }

                basket[item.Value] = price;
                number_of_products.Text = basket.Count.ToString();
            }
        }

        lista.DataSource = selected;
        lista.DataBind();
        lista.Visible = true;
    }

    protected void clear_Click(object sender, EventArgs e)
    {
        Session["basket"] = new Hashtable();
        number_of_products.Text = basket.Count.ToString();
        
    }
}
